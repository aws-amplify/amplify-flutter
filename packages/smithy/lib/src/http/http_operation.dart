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
    extends Operation<Input, Output> {
  /// Regex for label placeholders.
  static final _labelRegex = RegExp(r'{(\w+)}');

  /// Reserved characters defined in section 2.2 of RFC3986 and the % itself
  /// MUST be percent-encoded (that is, `:/?#[]@!$&'()*+,;=%`).
  ///
  /// Since [Uri.encodeQueryComponent] does not encode `+`, we must handle that
  /// separately as well.
  static String _escapeLabel(String label) =>
      Uri.encodeQueryComponent(label).replaceAll('+', '%20');

  /// Expands labels in [template] using [labelFor].
  static String expandLabels(
    String template,
    String Function(String) labelFor,
  ) {
    final pattern = UriPattern.parse(template);
    return pattern.segments.map((segment) {
      switch (segment.type) {
        case SegmentType.literal:
          return segment.content;
        case SegmentType.label:
          return _escapeLabel(labelFor(segment.content));
        case SegmentType.greedyLabel:
          return labelFor(segment.content)
              .split('/')
              .map(_escapeLabel)
              .join('/');
      }
    }).join('/');
  }

  static String expandHostLabel(
    String template,
    String Function(String) labelFor,
  ) {
    return template.replaceAllMapped(_labelRegex, (match) {
      final key = match.group(1)!;
      return _escapeLabel(labelFor(key));
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
    AWSStreamedHttpResponse response,
  );

  /// The protocols used by this operation for all serialization/deserialization
  /// of wire formats.
  Iterable<HttpProtocol<InputPayload, Input, OutputPayload, Output>>
      get protocols;

  @override
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

  @visibleForTesting
  Future<AWSStreamedHttpRequest> createRequest(
    HttpRequest request,
    HttpProtocol<InputPayload, Input, OutputPayload, Output> protocol,
    Input input,
  ) async {
    var uri = baseUri;
    var path = request.path;
    final pattern = UriPattern.parse(path);
    if (input is! HasLabel) {
      if (pattern.labels.isNotEmpty) {
        throw MissingLabelException(input, pattern.labels.first.toString());
      }
    } else {
      path = expandLabels(path, input.labelFor);
    }
    var needsTrailingSlash = request.path.split('?').first.endsWith('/');
    if (path.startsWith('/')) {
      path = path.substring(1);
    }
    final headers = {
      ...protocol.headers,
      ...request.headers.asMap(),
    };
    final Map<String, Iterable<String>> queryParameters = {
      for (final literal in pattern.queryLiterals.entries)
        literal.key: [literal.value],
      ...request.queryParameters.asMap(),
    };
    final body = protocol.serialize(input, specifiedType: FullType(Input));
    var host = uri.host;
    if (!endpoint.isHostnameImmutable && request.hostPrefix != null) {
      var prefix = request.hostPrefix!;
      if (input is HasLabel) {
        prefix = expandHostLabel(prefix, input.labelFor);
      }
      host = '$prefix$host';
    }
    var basePath = uri.path;
    if (basePath.startsWith('/')) {
      basePath = basePath.substring(1);
    }
    path = '$basePath/$path';
    if (needsTrailingSlash && !path.endsWith('/')) {
      path += '/';
    }
    uri = uri.replace(host: host).resolve(path);
    var awsRequest = AWSStreamedHttpRequest.raw(
      method: AWSHttpMethodHelper.fromString(request.method),
      scheme: uri.scheme,
      host: host,
      port: uri.port,
      path: path,
      body: body,
      queryParameters: {
        ...queryParameters,
        ...uri.queryParametersAll,
      },
      headers: headers,
    );
    final interceptors = [
      ...protocol.requestInterceptors,
    ]..sort((a, b) => a.order.compareTo(b.order));
    for (final interceptor in interceptors) {
      final interception = interceptor.intercept(awsRequest);
      if (interception is Future) {
        awsRequest = await interception;
      } else {
        awsRequest = interception;
      }
    }
    return awsRequest;
  }

  /// Validates the server's response against the protocol's registered
  /// interceptors.
  Future<void> _validateResponse({
    required AWSStreamedHttpResponse response,
    required HttpProtocol protocol,
  }) async {
    for (final interceptor in protocol.responseInterceptors) {
      await interceptor.intercept(response);
    }
  }

  @visibleForOverriding
  @visibleForTesting
  Future<Output> send({
    required HttpClient client,
    required Future<AWSStreamedHttpRequest> Function() createRequest,
    required HttpProtocol<InputPayload, Input, OutputPayload, Output> protocol,
  }) {
    return retryer.retry(
      () async {
        // Re-create the request on each retry to perform signing again, etc.
        final httpRequest = await createRequest();
        final response = await client.send(httpRequest);
        await _validateResponse(
          response: response,
          protocol: protocol,
        );
        return deserializeOutput(
          protocol: protocol,
          response: response,
        );
      },
      onRetry: (e, [delay]) {
        debugNumRetries++;
      },
    );
  }

  @visibleForTesting
  Future<Output> deserializeOutput({
    required HttpProtocol<InputPayload, Input, OutputPayload, Output> protocol,
    required AWSStreamedHttpResponse response,
  }) async {
    Output? output;
    Object? error;
    StackTrace? stackTrace;
    var successCode = this.successCode();
    try {
      final payload = await protocol.deserialize(response.split(),
          specifiedType: FullType(OutputPayload));
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
      if (output != null) {
        return output;
      }
      Error.throwWithStackTrace(error!, stackTrace!);
    }

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
    final SmithyException smithyException = builder(errorPayload, response);
    throw smithyException;
  }

  @override
  Future<Output> run(
    Input input, {
    HttpClient? client,
    ShapeId? useProtocol,
  }) async {
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
  Future<PaginatedResult<Items, PageSize>> runPaginated(
    Input input, {
    HttpClient? client,
    ShapeId? useProtocol,
  }) async {
    final output = await run(
      input,
      client: client,
      useProtocol: useProtocol,
    );
    final token = getToken(output);

    // If the received response does not contain a continuation token in the
    // referenced outputToken member, then there are no more results to retrieve
    // and the process is complete.
    final hasNext = token != null;

    final items = getItems(output);
    late PaginatedResult<Items, PageSize> result;
    result = PaginatedResult(
      items,
      hasNext: hasNext,

      // If there is a continuation token in the referenced outputToken member
      // of the response, then the client sends a subsequent request using the
      // same input parameters as the original call, but including the last
      // received continuation token. Clients are free to change the designated
      // pageSize input parameter at this step as needed.
      next: ([PageSize? pageSize]) async {
        if (token == null) {
          return result;
        }
        return runPaginated(
          rebuildInput(input, token, pageSize),
          client: client,
          useProtocol: useProtocol,
        );
      },
    );
    return result;
  }
}
