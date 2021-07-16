import 'package:amplify_flutter/amplify.dart';

abstract class AmplifyConfigure {
  bool isConfigure();
}

class AmplifyConfigureService extends AmplifyConfigure {
  bool isConfigure() {
    return Amplify.isConfigured;
  }
}
