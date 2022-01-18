import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:retry/retry.dart';
import 'package:smithy/smithy.dart';

/// Defines an operation which uses HTTP.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/http-traits.html
abstract class HttpOperation<
    InputPayload extends Object?,
    Input extends HttpInput<InputPayload>,
    OutputPayload,
    Output> extends Operation<Input, Output> {
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
  Output buildOutput(OutputPayload payload, HttpResponse response);

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
    final path = expandLabels(request.path, input);
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
      final prefix = expandLabels(request.hostPrefix!, input);
      host = '$prefix$host';
    }
    headers.putIfAbsent('Host', () => host);
    final baseRequest = AWSStreamedHttpRequest(
      method: HttpMethod.values.byName(request.method.toLowerCase()),
      host: host,
      path: path,
      body: body,
      queryParameters: queryParameters,
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

  /// Sends the request using [fn].
  Future<HttpResponse> _send(
    Future<HttpResponse> Function() fn, {
    required HttpRequest request,
    required HttpProtocol protocol,
  }) async {
    final response = await fn();
    if (response.statusCode != request.successCode) {
      final ErrorKind kind;
      if (response.statusCode >= 400 && response.statusCode <= 499) {
        kind = ErrorKind.client;
      } else {
        kind = ErrorKind.server;
      }
      final errorCfg = errorTypes.firstWhereOrNull(
            (el) => el.statusCode == response.statusCode,
          ) ??
          errorTypes.firstWhereOrNull(
              (el) => el.kind == kind && el.statusCode == null);
      final errorType = errorCfg?.type ?? SmithyException;
      throw protocol.deserialize(
        response.body,
        specifiedType: FullType(errorType),
      ) as SmithyException;
    }
    return response;
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
    const r = RetryOptions();
    final response = await r.retry(
      () => _send(
        () => client!.send(httpRequest),
        request: request,
        protocol: protocol,
      ),
      retryIf: (e) {
        return e is SmithyException && e.isRetryable;
      },
      onRetry: (e) {
        debugNumRetries++;
        print('Retrying $e ($debugNumRetries)');
      },
    );
    final output = protocol.deserialize(response.body,
        specifiedType: FullType(OutputPayload)) as OutputPayload;
    return buildOutput(output, response);
  }
}
