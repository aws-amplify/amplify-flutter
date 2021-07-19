import 'package:amplify_flutter/amplify.dart';

/// Amplify Configure Abstract Class
abstract class AmplifyConfigure {
  bool isConfigure();
}

/// Amplify public configure service
class AmplifyConfigureService extends AmplifyConfigure {
  bool isConfigure() {
    return Amplify.isConfigured;
  }
}
