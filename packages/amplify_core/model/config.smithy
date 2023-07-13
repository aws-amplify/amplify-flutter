$version: "2"

namespace com.amazonaws.amplify.core

structure AWSAmplifyConfig {
    analytics: AWSAnalyticsConfig
    api: AWSApiConfig
    auth: AWSAuthConfig
    logging: AWSLoggingConfig
    notifications: AWSNotificationsConfig
    storage: AWSStorageConfig
}
