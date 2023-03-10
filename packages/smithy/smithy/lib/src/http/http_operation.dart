// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:smithy/ast.dart';
import 'package:smithy/smithy.dart';

@visibleForTesting
const zSmithyHttpTest = #_smithyHttpTest;

@internal
bool get isSmithyHttpTest => Zone.current[zSmithyHttpTest] as bool? ?? false;

/// Defines an operation which uses HTTP.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/http-traits.html
abstract class HttpOperation<InputPayload, Input, OutputPayload, Output>
    with AWSDebuggable {
  /// Regex for label placeholders.
  static final _labelRegex = RegExp(r'{(\w+)}');

  /// Reserved characters defined in section 2.2 of RFC3986 and the % itself
  /// MUST be percent-encoded (that is, `:/?#[]@!$&'()*+,;=%`).
  ///
  /// Since [Uri.encodeQueryComponent] does not encode `+`, we must handle that
  /// separately as well.
  static String _escapeLabel(String label) =>
      Uri.encodeQueryComponent(label).replaceAll('+', '%20');

  /// Expands labels in [template] using [input].
  static String expandLabels(String template, HasLabel input) {
    final pattern = UriPattern.parse(template);
    return pattern.segments.map((segment) {
      switch (segment.type) {
        case SegmentType.literal:
          return segment.content;
        case SegmentType.label:
          return _escapeLabel(input.labelFor(segment.content));
        case SegmentType.greedyLabel:
          return input
              .labelFor(segment.content)
              .split('/')
              .map(_escapeLabel)
              .join('/');
      }
    }).join('/');
  }

  static String expandHostLabel(String template, HasLabel input) {
    return template.replaceAllMapped(_labelRegex, (match) {
      final key = match.group(1)!;
      return _escapeLabel(input.labelFor(key));
    });
  }

  /// Builds the HTTP request for the given [input].
  HttpRequest buildRequest(Input input);

  /// Builds the output from the [payload] and metadata from the HTTP
  /// [response].
  Output buildOutput(
    // This is (kind of) a hack to allow `OutputPayload` to always be non-null
    // even if the payload type is nullable. We need the non-null version to
    // interop with built_value correctly.
    covariant Object? payload,
    AWSBaseHttpResponse response,
  );

  /// The protocols used by this operation for all serialization/deserialization
  /// of wire formats.
  Iterable<HttpProtocol<InputPayload, Input, OutputPayload, Output>>
      get protocols;

  /// The error types of the operation.
  List<SmithyError> get errorTypes;

  /// The success code for the operation.
  ///
  /// Accepts the operation output since some output types embed the success
  /// code to allow for dynamic success codes.
  int successCode([Output? output]);

  /// The number of times the operation has been retried.
  @visibleForTesting
  int debugNumRetries = 0;

  /// The base URI for the operation.
  Uri get baseUri;

  /// The endpoint for the operation.
  Endpoint get endpoint => Endpoint(uri: baseUri);

  /// The retry handler for the operation.
  Retryer get retryer => const Retryer();

  @visibleForTesting
  HttpProtocol<InputPayload, Input, OutputPayload, Output> resolveProtocol({
    ShapeId? useProtocol,
  }) {
    return useProtocol == null
        ? protocols.first
        : protocols.firstWhere(
            (el) => el.protocolId == useProtocol,
            orElse: () => protocols.first,
          );
  }

  /// Generates the hostname for [request], given the [input] and whether the
  /// operation has a host prefix which needs expanding.
  String _hostForRequest(HttpRequest request, Input input, Uri baseUri) {
    final host = baseUri.host;
    var prefix = request.hostPrefix;
    if (!endpoint.isHostnameImmutable && prefix != null) {
      if (input is HasLabel) {
        prefix = expandHostLabel(prefix, input);
      }
      return '$prefix$host';
    }
    return host;
  }

  @visibleForTesting
  SmithyHttpRequest createRequest(
    HttpRequest request,
    HttpProtocol<InputPayload, Input, OutputPayload, Output> protocol,
    Input input,
  ) {
    final uri = baseUri;
    var path = request.path;

    // Expand `path` if it includes labels
    final pattern = UriPattern.parse(path);
    if (input is HasLabel) {
      path = expandLabels(path, input);
    } else if (pattern.labels.isNotEmpty) {
      throw MissingLabelException(input, pattern.labels.join(', '));
    }

    // Prevent duplicate `/` characters when joining with `basePath`.
    if (path.startsWith('/')) {
      path = path.substring(1);
    }

    // Calculate `path` relative to `baseUri`.
    final String basePath;
    if (uri.path.startsWith('/')) {
      basePath = uri.path.substring(1);
    } else {
      basePath = uri.path;
    }
    path = '$basePath/$path';

    // Correct for trailing slashes which may be necessary for signing, for ex,
    // but were removed due to [Uri] normalization.
    final needsTrailingSlash = request.path.split('?').first.endsWith('/');
    if (needsTrailingSlash && !path.endsWith('/')) {
      path += '/';
    }

    // Calculate remaining request parameters
    final host = _hostForRequest(request, input, uri);
    final headers = {
      ...protocol.headers,
      ...request.headers.asMap(),
    };
    final queryParameters = {
      for (final literal in pattern.queryLiterals.entries)
        literal.key: [literal.value],
      ...request.queryParameters.asMap(),
      ...uri.queryParametersAll,
    };
    final body = protocol.serialize(input, specifiedType: FullType(Input));

    final awsRequest = AWSStreamedHttpRequest.raw(
      method: AWSHttpMethod.fromString(request.method),
      scheme: uri.scheme,
      host: host,
      port: uri.hasPort ? uri.port : null,
      path: path,
      body: body,
      queryParameters: queryParameters,
      headers: headers,
    );

    final requestInterceptors = List.of(protocol.requestInterceptors)
      ..addAll(request.requestInterceptors)
      ..sort((a, b) => a.order.compareTo(b.order));

    final responseInterceptors = protocol.responseInterceptors;

    return SmithyHttpRequest(
      awsRequest,
      requestInterceptors: requestInterceptors,
      responseInterceptors: responseInterceptors,
    );
  }

  @visibleForOverriding
  @visibleForTesting
  SmithyOperation<Output> send({
    required SmithyHttpRequest Function() createRequest,
    required HttpProtocol<InputPayload, Input, OutputPayload, Output> protocol,
    AWSHttpClient? client,
  }) {
    final requestProgress = StreamController<int>.broadcast(sync: true);
    final responseProgress = StreamController<int>.broadcast(sync: true);
    final operation = retryer.retry<Output>(
      () {
        // Recreate the request on each retry to perform signing again, etc.
        final httpRequest = createRequest();
        final operation = httpRequest.send(client: client);
        operation.requestProgress.forward(
          requestProgress,
          closeWhenDone: false,
        );
        operation.responseProgress.forward(
          responseProgress,
          closeWhenDone: false,
        );
        return operation.operation.then(
          (response) => deserializeOutput(
            protocol: protocol,
            response: response,
            // Prevents errors thrown from registering as "Uncaught Exceptions"
            // in the Dart debugger.
            //
            // This is a false positive because we do catch errors in the
            // retryer which wraps this. Likely this is due to the use of
            // completers in `CancelableOperation` or some other Zone-related
            // nonsense.
          ).catchError(Error.throwWithStackTrace),
        );
      },
      onCancel: () {
        requestProgress.close();
        responseProgress.close();
      },
      onRetry: (e, [delay]) {
        debugNumRetries++;
      },
    );
    return SmithyOperation(
      operation.then(
        (output) {
          requestProgress.close();
          responseProgress.close();
          return output;
        },
        onError: (e, st) {
          requestProgress.close();
          responseProgress.close();
          Error.throwWithStackTrace(e, st);
        },
      ),
      operationName: runtimeTypeName,
      requestProgress: requestProgress.stream,
      responseProgress: responseProgress.stream,
    );
  }

  @visibleForTesting
  Future<Output> deserializeOutput({
    required HttpProtocol<InputPayload, Input, OutputPayload, Output> protocol,
    required AWSBaseHttpResponse response,
  }) async {
    Output? output;
    Object? error;
    StackTrace? stackTrace;
    var successCode = this.successCode();
    try {
      final payload = await protocol.deserialize(
        response.split(),
        specifiedType: FullType(OutputPayload),
      );
      if (payload is Output) {
        output = payload;
      } else {
        output = buildOutput(payload, response);
      }
      successCode = this.successCode(output);
    } on Object catch (e, st) {
      error = e;
      stackTrace = st;
    }
    if (response.statusCode == successCode) {
      // Close the response so that the underlying subscription created by
      // `split` is cancelled as well.
      response.close();
      if (output != null) {
        return output;
      }
      Error.throwWithStackTrace(error!, stackTrace!);
    }

    try {
      SmithyError? smithyError;
      final resolvedType = await protocol.resolveErrorType(response);
      if (resolvedType != null) {
        smithyError =
            errorTypes.firstWhereOrNull((t) => t.shapeId.shape == resolvedType);
      }
      smithyError ??= errorTypes
          .singleWhereOrNull((t) => t.statusCode == response.statusCode);
      if (smithyError == null) {
        throw SmithyHttpException(
          statusCode: response.statusCode,
          body: await response.decodeBody(),
          headers: response.headers,
        );
      }
      final Type errorType = smithyError.type;
      final Function builder = smithyError.builder;
      final Object? errorPayload = await protocol.deserialize(
        response.body,
        specifiedType: FullType(errorType),
      );
      final SmithyException smithyException =
          builder(errorPayload, response) as SmithyException;
      throw smithyException;
    } finally {
      // Close the response so that the underlying subscription created by
      // `split` is cancelled as well.
      response.close();
    }
  }

  SmithyOperation<Output> run(
    Input input, {
    AWSHttpClient? client,
    ShapeId? useProtocol,
  }) {
    final protocol = resolveProtocol(useProtocol: useProtocol);
    client ??= protocol.getClient(input);
    final request = buildRequest(input);
    return send(
      createRequest: () => createRequest(
        request,
        protocol,
        input,
      ),
      client: client,
      protocol: protocol,
    );
  }
}

/// A version of [HttpOperation] which provides a convenient API for retrieving
/// pages of results.
abstract class PaginatedHttpOperation<
    InputPayload,
    Input,
    OutputPayload,
    Output,
    Token,
    PageSize,
    Items> extends HttpOperation<InputPayload, Input, OutputPayload, Output> {
  /// Retrieves the token from the operation output.
  Token? getToken(Output output);

  /// Retrieves the items from the operation output.
  Items getItems(Output output);

  /// Creates a new input with [token] and [pageSize].
  Input rebuildInput(Input input, Token token, PageSize? pageSize);

  /// Runs the operation returning a [PaginatedResult] which can be paged.
  SmithyOperation<PaginatedResult<Items, PageSize, Token>> runPaginated(
    Input input, {
    AWSHttpClient? client,
    ShapeId? useProtocol,
  }) {
    final operation = run(
      input,
      client: client,
      useProtocol: useProtocol,
    );
    final paginatedOperation = operation.operation.then((output) {
      final token = getToken(output);
      final items = getItems(output);
      late PaginatedResult<Items, PageSize, Token> result;
      result = PaginatedResult(
        items,
        nextContinuationToken: token,

        // If there is a continuation token in the referenced outputToken member
        // of the response, then the client sends a subsequent request using the
        // same input parameters as the original call, but including the last
        // received continuation token. Clients are free to change the designated
        // pageSize input parameter at this step as needed.
        next: ([PageSize? pageSize]) {
          if (token == null) {
            return SmithyOperation(
              CancelableOperation.fromFuture(Future.value(result)),
              operationName: runtimeTypeName,
              requestProgress: const Stream.empty(),
              responseProgress: const Stream.empty(),
            );
          }
          return runPaginated(
            rebuildInput(input, token, pageSize),
            client: client,
            useProtocol: useProtocol,
          );
        },
      );
      return result;
    });
    return SmithyOperation(
      paginatedOperation,
      operationName: runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }
}
