import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';

/// An HTTP error encountered during a REST API call, i.e. for calls returning
/// non-2xx status codes.
class RestException extends ApiException {
  /// The HTTP response from the server.
  final RestResponse response;

  RestException(this.response)
      : super(response.body, httpStatusCode: response.statusCode);

  @override
  String toString() {
    return 'RestException{ response=$response }';
  }
}
