$version: "2"

namespace com.amazonaws.amplify.core

union AWSLoggingConfig {
    cloudWatch: AWSLoggingCloudWatchConfig
}

enum AWSLogLevel { VERBOSE DEBUG INFO WARN ERROR NONE }

enum AWSAmplifyCategory {
    ANALYTICS
    API
    AUTH
    DATASTORE
    HUB
    LOGGING
    NOTIFICATIONS
    PREDICTIONS
    STORAGE
    GEO
}

enum AWSAmplifySubCategory {
    PUSH_NOTIFICATIONS
    INAPP_MESSAGING
}

structure AWSLoggingCloudWatchConfig {
    @required
    logGroupName: String

    @required
    region: AWSRegion

    @required
    enable: Boolean = true

    @required
    localStoreMaxSize: Megabytes = 5

    @required
    flushInterval: Seconds = 60
    defaultRemoteConfiguration: AWSLoggingRemoteConfig
    loggingConstraints: AWSAmplifyLoggingConstraints
}

structure AWSLoggingRemoteConfig {
    @required
    endpoint: Uri

    @required
    refreshInterval: Seconds = 1200
}

structure AWSAmplifyLoggingConstraints {
    @required
    defaultLogLevel: AWSLogLevel = "ERROR"
    categoryLogLevel: AWSAmplifyCategoryLogLevels = {}
    userLogLevel: AWSUserLogLevels = {}
}

map AWSAmplifyCategoryLogLevels {
    key: AWSAmplifyCategory
    value: AWSLogLevel
}

map AWSUserLogLevels {
    key: String
    value: AWSUserLogLevel
}

structure AWSUserLogLevel {
    @required
    defaultLogLevel: AWSLogLevel = "ERROR"
    categoryLogLevel: AWSAmplifyCategoryLogLevels = {}
}
