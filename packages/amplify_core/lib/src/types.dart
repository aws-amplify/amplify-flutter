part of amplify_core;


class AmplifyException implements Exception {
  final String type = "AmplifyException";
  String msg;
  HashMap<dynamic, dynamic> error;
}

