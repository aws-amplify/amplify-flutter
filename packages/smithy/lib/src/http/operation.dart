import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

/// Defines an operation which uses HTTP.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/http-traits.html
abstract class HttpOperation<
    Payload extends Object?,
    Input extends HasPayload<Payload>,
    Output> extends Operation<Input, Output> {
  @override
  HttpProtocol<Payload, Input, Output> get protocol;

  /// The URI to which the request is relative.
  Uri get baseUri;

  /// The HTTP method.
  String get method;

  /// The path of the operation.
  String get path;

  /// The host prefix.
  String? get hostPrefix => null;

  /// The HTTP headers.
  final Map<String, String> headers = {};

  /// The HTTP query parameters.
  final Map<String, String> queryParameters = {};

  @visibleForTesting
  http.BaseRequest createRequest(Uri baseUri, Input input) {
    final path = protocol.path(input, this.path);
    protocol.addHeaders(input, headers);
    protocol.addQueryParameters(input, queryParameters);
    final request = http.StreamedRequest(
      method,
      baseUri.resolve(path)..queryParameters.addAll(queryParameters),
    )..headers.addAll(headers);
    final bodyStream = protocol.serialize(input);
    bodyStream.listen(
      request.sink.add,
      onError: request.sink.addError,
      cancelOnError: true,
    );
    return request;
  }

  @visibleForTesting
  @nonVirtual
  Future<http.StreamedResponse> sendRequest(HttpClient client, Input input) {
    final request = createRequest(baseUri, input);
    return client.send(request);
  }

  @override
  Future<Output> run(HttpClient client, Input input) async {
    final response = await sendRequest(client, input);
    return protocol.deserialize(response.stream);
  }
}
