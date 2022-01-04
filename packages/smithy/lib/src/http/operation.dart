import 'dart:async';

import 'package:smithy/smithy.dart';
import 'package:smithy/src/http/client.dart';
import 'package:smithy/src/http/request.dart';

/// Defines an operation which uses HTTP.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/http-traits.html
abstract class HttpOperation<
    Payload extends Object?,
    Input extends HasPayload<Payload>,
    Output> extends Operation<Input, Output> with HttpRequest {
  @override
  HttpProtocol<Payload, Input, Output> get protocol;

  @override
  Future<Output> run(Input input, [HttpClient? client]) async {
    client ??= protocol.getClient(input);
    final response = await client.send(this, protocol, input);
    return protocol.deserialize(response);
  }
}
