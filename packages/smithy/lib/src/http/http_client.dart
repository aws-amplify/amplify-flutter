import 'package:http/http.dart' as http;
import 'package:smithy/smithy.dart';

abstract class HttpClient implements Client {
  /// Creates an HTTP/1.1 client.
  factory HttpClient.v1({http.Client? baseClient}) = _Http1_1Client;

  Future<AWSStreamedHttpResponse> send(AWSStreamedHttpRequest request);

  /// The ALPN protocol for this client.
  AlpnProtocol get protocol;
}

class _Http1_1Client implements HttpClient {
  _Http1_1Client({
    http.Client? baseClient,
  }) : baseClient = baseClient ?? http.Client();

  final http.Client baseClient;

  @override
  Future<AWSStreamedHttpResponse> send(AWSStreamedHttpRequest request) async {
    final response = await request.send(baseClient);
    return AWSStreamedHttpResponse(
      statusCode: response.statusCode,
      headers: response.headers,
      body: response.stream,
    );
  }

  @override
  AlpnProtocol get protocol => AlpnProtocol.http1_1;
}

// ignore_for_file: camel_case_types
