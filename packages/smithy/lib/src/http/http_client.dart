import 'package:http/http.dart' as http;
import 'package:smithy/smithy.dart';

abstract class HttpClient implements Client {
  Future<Stream<List<int>>>
      send<Payload, Input extends HasPayload<Payload>, Output>(
    HttpRequest request,
    HttpProtocol<Payload, Input, Output> protocol,
    List<HttpInterceptor> interceptors,
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
    List<HttpInterceptor> interceptors,
    Input input,
  ) async {
    final path = protocol.path(input, request.path);
    protocol.addHeaders(input, request.headers);
    protocol.addQueryParameters(input, request.queryParameters);
    final http.BaseRequest baseRequest;
    final bodyStream = protocol.serialize(input);
    if (input.isStreaming) {
      baseRequest = http.StreamedRequest(
        request.method,
        request.baseUri.resolve(path)
          ..queryParameters.addAll(request.queryParameters),
      )..headers.addAll(request.headers);
      bodyStream.listen(
        (baseRequest as http.StreamedRequest).sink.add,
        onError: baseRequest.sink.addError,
        cancelOnError: true,
      );
    } else {
      baseRequest = http.Request(
        request.method,
        request.baseUri,
      )..headers.addAll(request.headers);
      (baseRequest as http.Request).bodyBytes =
          await http.ByteStream(bodyStream).toBytes();
    }

    for (var interceptor in interceptors) {
      await interceptor.intercept(baseRequest);
    }

    final response = await baseClient.send(baseRequest);
    return response.stream;
  }

  @override
  AlpnProtocol get protocol => AlpnProtocol.http1_1;
}

// ignore_for_file: camel_case_types
