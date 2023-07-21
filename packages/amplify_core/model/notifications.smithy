$version: "2"

namespace com.amazonaws.amplify.core

@documentation("The Amplify Notifications category configuration.")
structure AWSNotificationsConfig {
    push: AWSPushNotificationsConfig
}

@documentation("The Amplify Push Notifications subcategory configuration.")
union AWSPushNotificationsConfig {
    pinpoint: AWSPushNotificationsPinpointConfig
}

@documentation("The Amplify Push Notifications Pinpoint plugin configuration.")
structure AWSPushNotificationsPinpointConfig {
    @required
    appId: String

    @required
    region: AWSRegion
}
