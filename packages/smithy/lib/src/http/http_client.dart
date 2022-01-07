import 'package:http/http.dart' as http;
import 'package:smithy/smithy.dart';

abstract class HttpClient implements Client {
  /// Creates an HTTP/1.1 client.
  ///
  /// All requests are made relative to [baseUri].
  factory HttpClient.v1(Uri baseUri, {http.Client? baseClient}) =
      _Http1_1Client;

  Future<Stream<List<int>>> send(AWSBaseHttpRequest request);

  /// The base URI or host for this client to use in requests.
  Uri get baseUri;

  /// The ALPN protocol for this client.
  AlpnProtocol get protocol;
}

class _Http1_1Client implements HttpClient {
  _Http1_1Client(
    this.baseUri, {
    http.Client? baseClient,
  }) : baseClient = baseClient ?? http.Client();

  final http.Client baseClient;

  @override
  final Uri baseUri;

  @override
  Future<Stream<List<int>>> send(AWSBaseHttpRequest request) async {
    final response = await request.send(baseClient);
    return response.stream;
  }

  @override
  AlpnProtocol get protocol => AlpnProtocol.http1_1;
}

// ignore_for_file: camel_case_types
