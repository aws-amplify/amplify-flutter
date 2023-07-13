$version: "2"

namespace com.amazonaws.amplify.core

union AWSLoggingConfig {
    cloudWatch: AWSLoggingCloudWatchConfig
}

enum LogLevel { VERBOSE DEBUG INFO WARN ERROR NONE }

enum AmplifyCategory {
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

enum AmplifySubCategory {
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
    defaultRemoteConfiguration: LoggingRemoteConfiguration
    loggingConstraints: AmplifyLoggingConstraints
}

structure LoggingRemoteConfiguration {
    @required
    endpoint: Uri

    @required
    refreshInterval: Seconds = 1200
}

structure AmplifyLoggingConstraints {
    @required
    defaultLogLevel: LogLevel = "ERROR"
    categoryLogLevel: AmplifyCategoryLogLevels
    userLogLevel: UserLogLevels
}

map AmplifyCategoryLogLevels {
    key: AmplifyCategory
    value: LogLevel
}

map UserLogLevels {
    key: String
    value: UserLogLevel
}

structure UserLogLevel {
    @required
    defaultLogLevel: LogLevel = "ERROR"
    categoryLogLevel: AmplifyCategoryLogLevels
}
