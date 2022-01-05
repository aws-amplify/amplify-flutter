import 'dart:async';

import 'package:smithy/smithy.dart';
import 'package:smithy/src/http/http_client.dart';
import 'package:smithy/src/http/http_request.dart';

/// Defines an operation which uses HTTP.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/http-traits.html
abstract class HttpOperation<
    Payload extends Object?,
    Input extends HasPayload<Payload>,
    Output> extends Operation<Input, Output> with HttpRequest {
  @override
  List<HttpProtocol<Payload, Input, Output>> get protocols;

  /// The interceptors to run for each request/response pair of this operation.
  List<HttpInterceptor> get interceptors => const [];

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
    final response = await client.send(this, protocol, interceptors, input);
    return protocol.deserialize(response);
  }
}
