library amplify_push_notifications_pinpoint;

import 'package:amplify_push_notifications/amplify_push_notifications.dart';
import 'package:amplify_push_notifications_pinpoint/pinpoint_provider.dart';

class AmplifyPushNotificaitonsPinpoint extends AmplifyPushNotifications {
  AmplifyPushNotificaitonsPinpoint()
      : super(
          serviceProviderClient: PinpointProvider(),
        );
}
