import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:retry/retry.dart';
import 'package:smithy/smithy.dart';

/// Defines an operation which uses HTTP.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/http-traits.html
abstract class HttpOperation<InputPayload, Input, OutputPayload, Output>
    extends Operation<Input, Output> {
  /// Regex for label placeholders.
  static final _labelRegex = RegExp(r'{(\w+)}');

  /// Expands labels in [template] using [input].
  static String expandLabels<Input extends HasLabel>(
    String template,
    Input input,
  ) {
    return template.replaceAllMapped(_labelRegex, (match) {
      final key = match.group(1)!;
      return Uri.encodeComponent(input.labelFor(key));
    });
  }

  /// Builds the HTTP request for the given [input].
  HttpRequest buildRequest(Input input);

  /// Builds the output from the [payload] and metadata from the HTTP
  /// [response].
  Output buildOutput(OutputPayload payload, AWSStreamedHttpResponse response);

  @override
  Iterable<HttpProtocol<InputPayload, Input, OutputPayload, Output>>
      get protocols;

  @override
  List<SmithyError> get errorTypes;

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
    final String path = input is HasLabel
        ? expandLabels(request.path, input as HasLabel)
        : request.path;
    final headers = {
      ...request.headers.asMap(),
      ...protocol.headers,
    };
    final queryParameters = {
      ...request.queryParameters.asMap(),
    };
    final body = protocol.serialize(input, specifiedType: FullType(Input));
    var host = baseUri.host;
    if (request.hostPrefix != null) {
      final String prefix = input is HasLabel
          ? expandLabels(request.hostPrefix!, input as HasLabel)
          : request.hostPrefix!;
      host = '$prefix$host';
    }
    headers.putIfAbsent('Host', () => host);
    baseUri = baseUri.resolve(path);
    final baseRequest = AWSStreamedHttpRequest(
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
    for (var interceptor in protocol.interceptors) {
      final interception = interceptor.intercept(baseRequest);
      if (interception is Future) {
        await interception;
      }
    }
    return baseRequest;
  }

  @visibleForTesting
  Future<Output> innerSend({
    required HttpClient client,
    required AWSStreamedHttpRequest httpRequest,
    required int successCode,
    required HttpProtocol protocol,
  }) {
    const r = RetryOptions();
    return r.retry(
      () async {
        final response = await client.send(httpRequest);
        return deserializeOutput(
          protocol: protocol,
          response: response,
          successCode: successCode,
        );
      },
      retryIf: (e) {
        return e is SmithyException && e.isRetryable;
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
    required int successCode,
  }) async {
    if (response.statusCode != successCode) {
      Type? errorType;
      final resolvedType = await protocol.resolveErrorType(response);
      if (resolvedType != null) {
        errorType =
            errorTypes.firstWhere((t) => t.shapeId.shape == resolvedType).type;
      }
      errorType ??= errorTypes
          .singleWhereOrNull((t) => t.statusCode == response.statusCode)
          ?.type;
      errorType ??= SmithyException;
      throw await protocol.deserialize(
        response.body,
        specifiedType: FullType(errorType),
      ) as SmithyException;
    }
    final output = await protocol.deserialize(response.body,
        specifiedType: FullType(OutputPayload));
    if (output is Output) {
      return output;
    } else {
      return buildOutput(output as OutputPayload, response);
    }
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
      successCode: request.successCode,
    );
  }
}
