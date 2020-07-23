import '../Providers/AuthRequestProvider.dart';

class SignOutRequest {
  AuthRequestProvider provider;
  SignOutRequest({this.provider});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (provider != null) {
      pendingRequest['providerOptions'] = provider.serializeAsMap();
    }
    return pendingRequest;
  }
}
