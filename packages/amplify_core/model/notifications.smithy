$version: "2"

namespace com.amazonaws.amplify.core

@documentation("The Amplify Notifications category configuration.")
structure NotificationsConfig {
    push: PushNotificationsConfig
}

@documentation("The Amplify Push Notifications subcategory configuration.")
union PushNotificationsConfig {
    pinpoint: PushNotificationsPinpointConfig
}

@documentation("The Amplify Push Notifications Pinpoint plugin configuration.")
structure PushNotificationsPinpointConfig {
    @required
    appId: String

    @required
    region: AWSRegion
}
