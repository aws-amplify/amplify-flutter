import 'dart:async';

import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

/// Defines an operation which uses HTTP.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/http-traits.html
abstract class HttpOperation<Payload extends Object?,
    Input extends HttpInput<Payload>, Output> extends Operation<Input, Output> {
  const HttpOperation();

  /// Regex for label placeholders.
  static final _labelRegex = RegExp(r'{(\w+)}');

  /// Expands labels in [template] using [input].
  static String expandLabels<Input extends HasLabel>(
    String template,
    Input input,
  ) {
    return template.replaceAllMapped(_labelRegex, (match) {
      final key = match.group(0)!;
      return input.labelFor(key);
    });
  }

  /// The description of the HTTP request.
  HttpRequest get request;

  @override
  List<HttpProtocol<Payload, Input, Output>> get protocols;

  @visibleForTesting
  HttpProtocol<Payload, Input, Output> resolveProtocol({
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
    Uri baseUri,
    HttpProtocol<Payload, Input, Output> protocol,
    Input input,
  ) async {
    final request = this.request;
    final path = expandLabels(request.path, input);
    final headers = request.headers.toMap()..addAll(protocol.headers);
    final queryParameters = request.queryParameters.toMap();
    final body = protocol.serialize(input);
    var host = baseUri.host;
    if (request.hostPrefix != null) {
      final prefix = expandLabels(request.hostPrefix!, input);
      host = '$prefix$host';
    }
    final baseRequest = AWSStreamedHttpRequest(
      method: HttpMethodX.fromString(request.method),
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
    final baseRequest = await createRequest(client.baseUri, protocol, input);
    final response = await client.send(baseRequest);
    return protocol.deserialize(response);
  }
}
