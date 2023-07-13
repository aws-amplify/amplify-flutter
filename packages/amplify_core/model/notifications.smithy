$version: "2"

namespace com.amazonaws.amplify.core

union AWSNotificationsConfig {
    push: AWSPushNotificationsConfig
}

union AWSPushNotificationsConfig {
    pinpoint: AWSPushNotificationsPinpointConfig
}

structure AWSPushNotificationsPinpointConfig {
    @required
    appId: String

    @required
    region: AWSRegion
}
