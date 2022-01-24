import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:retry/retry.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_ast/smithy_ast.dart';

/// Defines an operation which uses HTTP.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/http-traits.html
abstract class HttpOperation<InputPayload, Input, OutputPayload, Output>
    extends Operation<Input, Output> {
  /// Regex for label placeholders.
  static final _labelRegex = RegExp(r'{(\w+)}');

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
      return Uri.encodeQueryComponent(labelFor(key)).replaceAll('+', '%20');
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

  @override
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

  @visibleForTesting
  HttpProtocol<InputPayload, Input, OutputPayload, Output> resolveProtocol({
    ShapeId? useProtocol,
  }) {
    return useProtocol == null
        ? protocols.first
        : protocols.firstWhere(
            (el) => el.protocolId == useProtocol,
            orElse: () {
              final using = protocols.first;
              print(
                'No protocol found matching $useProtocol. '
                'Using ${using.protocolId} instead.',
              );
              return using;
            },
          );
  }

  @visibleForTesting
  Future<AWSStreamedHttpRequest> createRequest(
    HttpRequest request,
    Uri baseUri,
    HttpProtocol<InputPayload, Input, OutputPayload, Output> protocol,
    Input input,
  ) async {
    var path = request.path;
    final pattern = UriPattern.parse(path);
    if (input is! HasLabel) {
      if (pattern.labels.isNotEmpty) {
        throw MissingLabelException(input, pattern.labels.first.toString());
      }
    } else {
      path = expandLabels(path, input.labelFor);
    }
    var needsTrailingSlash = request.path.endsWith('/');
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
    var host = baseUri.host;
    if (request.hostPrefix != null) {
      var prefix = request.hostPrefix!;
      if (input is HasLabel) {
        prefix = expandHostLabel(prefix, input.labelFor);
      }
      host = '$prefix$host';
    }
    headers.putIfAbsent('Host', () => host);
    var basePath = baseUri.path;
    if (basePath.startsWith('/')) {
      basePath = basePath.substring(1);
    }
    path = p.join(basePath, path);
    if (needsTrailingSlash && !path.endsWith('/')) {
      path += '/';
    }
    baseUri = baseUri.replace(host: host).resolve(path);
    var awsRequest = AWSStreamedHttpRequest(
      method: HttpMethod.values.byName(request.method.toLowerCase()),
      host: host,
      path: baseUri.path,
      body: body,
      queryParameters: {
        ...queryParameters,
        ...baseUri.queryParametersAll,
      },
      headers: headers,
    );
    final context = HttpRequestContextBuilder();
    final interceptors = [
      ...protocol.interceptors,
    ]..sort((a, b) => a.order.compareTo(b.order));
    for (final interceptor in interceptors) {
      final interception = interceptor.intercept(awsRequest, context);
      if (interception is Future) {
        awsRequest = await interception;
      } else {
        awsRequest = interception;
      }
    }
    return awsRequest;
  }

  @visibleForTesting
  Future<Output> innerSend({
    required HttpClient client,
    required AWSStreamedHttpRequest httpRequest,
    required HttpProtocol protocol,
  }) {
    const r = RetryOptions();
    return r.retry(
      () async {
        final response = await client.send(httpRequest);
        return deserializeOutput(
          protocol: protocol,
          response: response,
        );
      },
      retryIf: (e) {
        return e is SmithyException && e.retryConfig != null;
      },
      onRetry: (e) {
        debugNumRetries++;
        print('Retrying $e ($debugNumRetries)');
      },
    );
  }

  @visibleForTesting
  Future<Output> deserializeOutput({
    required HttpProtocol protocol,
    required AWSStreamedHttpResponse response,
  }) async {
    Output? output;
    Exception? exception;
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
    } on Exception catch (e) {
      exception = e;
    }
    if (response.statusCode == successCode) {
      if (output != null) {
        return output;
      }
      throw exception!;
    }

    SmithyError? smithyError;
    final resolvedType = await protocol.resolveErrorType(response);
    if (resolvedType != null) {
      smithyError =
          errorTypes.firstWhere((t) => t.shapeId.shape == resolvedType);
    }
    smithyError ??= errorTypes
        .singleWhereOrNull((t) => t.statusCode == response.statusCode);
    final errorType = smithyError?.type ?? SmithyException;
    final errorPayload = await protocol.deserialize(
      response.body,
      specifiedType: FullType(errorType),
    );
    final builder = smithyError?.builder;
    if (builder != null) {
      throw builder(errorPayload, response);
    }
    throw errorPayload as SmithyException;
  }

  @override
  Future<Output> run(
    Input input, {
    Uri? baseUri,
    HttpClient? client,
    ShapeId? useProtocol,
  }) async {
    if (baseUri == null && client == null) {
      throw ArgumentError('Must specify either baseUri or client');
    }
    final protocol = resolveProtocol(useProtocol: useProtocol);
    client ??= protocol.getClient(baseUri!, input);
    final request = buildRequest(input);
    final httpRequest = await createRequest(
      request,
      client.baseUri,
      protocol,
      input,
    );
    return innerSend(
      client: client,
      protocol: protocol,
      httpRequest: httpRequest,
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
    Uri? baseUri,
    HttpClient? client,
    ShapeId? useProtocol,
  }) async {
    final output = await run(
      input,
      baseUri: baseUri,
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
          baseUri: baseUri,
          client: client,
          useProtocol: useProtocol,
        );
      },
    );
    return result;
  }
}
