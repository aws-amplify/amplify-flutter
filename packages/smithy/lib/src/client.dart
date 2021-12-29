import 'package:http/http.dart' as http;
import 'package:smithy/smithy.dart';

/// A marker for classes which can handle running [Operation]s.
abstract class Client {
  const Client();
}

class HttpClient extends http.BaseClient implements Client {
  HttpClient({
    http.Client? baseClient,
  }) : baseClient = baseClient ?? http.Client();

  final http.Client baseClient;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    return baseClient.send(request);
  }
}
