import 'package:http/http.dart' as http;
import 'package:smithy/smithy.dart';

/// A marker for classes which can handle running [Operation]s.
abstract class Client {
  const Client();

  AlpnProtocol get protocol;
}
