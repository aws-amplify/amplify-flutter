import 'package:http/http.dart' as http;
import 'package:smithy/smithy.dart';
import 'package:smithy/src/http/request.dart';

abstract class HttpClient implements Client {
  Future<Stream<List<int>>>
      send<Payload, Input extends HasPayload<Payload>, Output>(
    HttpRequest request,
    HttpProtocol<Payload, Input, Output> protocol,
    Input input,
  );
}

class Http1_1Client implements HttpClient {
  Http1_1Client({
    http.Client? baseClient,
  }) : baseClient = baseClient ?? http.Client();

  final http.Client baseClient;

  @override
  Future<Stream<List<int>>>
      send<Payload, Input extends HasPayload<Payload>, Output>(
    HttpRequest request,
    HttpProtocol<Payload, Input, Output> protocol,
    Input input,
  ) async {
    final path = protocol.path(input, request.path);
    protocol.addHeaders(input, request.headers);
    protocol.addQueryParameters(input, request.queryParameters);
    final streamedRequest = http.StreamedRequest(
      request.method,
      request.baseUri.resolve(path)
        ..queryParameters.addAll(request.queryParameters),
    )..headers.addAll(request.headers);
    final bodyStream = protocol.serialize(input);
    bodyStream.listen(
      streamedRequest.sink.add,
      onError: streamedRequest.sink.addError,
      cancelOnError: true,
    );
    final response = await baseClient.send(streamedRequest);
    return response.stream;
  }

  @override
  AlpnProtocol get protocol => AlpnProtocol.http1_1;
}

// ignore_for_file: camel_case_types
