import 'dart:async';

import 'package:smithy/smithy.dart';

/// Defines an operation which uses HTTP.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/http-traits.html
abstract class HttpOperation<
    Payload extends Object?,
    Input extends HttpRequestable<Payload>,
    Output> extends Operation<Input, Output> {
  const HttpOperation();

  /// Regex for path inputs.
  static final _pathRegex = RegExp(r'{(\w+)}');

  /// The default path mapper for HTTP operations.
  String mapPath(String path, Input input) {
    return path.replaceAllMapped(_pathRegex, (match) {
      final key = match.group(0)!;
      return input.labelFor(key);
    });
  }

  /// The description of the HTTP request.
  HttpRequest get request;

  @override
  List<HttpProtocol<Payload, Input, Output>> get protocols;

  @override
  Future<Output> run(
    Input input, {
    HttpClient? client,
    ShapeId? useProtocol,
  }) async {
    final protocol = useProtocol == null
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
    client ??= protocol.getClient(input);
    final request = this.request.rebuild((b) {
      b.path = mapPath(b.path!, input);
      protocol.addHeaders(b.headers, input);
    });
    final body = protocol.serialize(input);
    final baseRequest = AWSStreamedHttpRequest(
      method: HttpMethodX.fromString(request.method),
      host: request.host,
      path: request.path,
      body: body,
      queryParameters: request.queryParameters.toMap(),
      headers: request.headers.toMap(),
    );
    for (var interceptor in protocol.interceptors) {
      final interception = interceptor.intercept(baseRequest);
      if (interception is Future) {
        await interception;
      }
    }
    final response = await client.send(baseRequest);
    return protocol.deserialize(response);
  }
}
