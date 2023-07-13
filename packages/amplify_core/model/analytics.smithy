$version: "2"

namespace com.amazonaws.amplify.core

union AWSAnalyticsConfig {
    pinpoint: AWSAnalyticsPinpointConfig
}

structure AWSAnalyticsPinpointConfig {
    @required
    appId: String

    @required
    region: AWSRegion

    @required
    autoFlushEventsInterval: Seconds = 30
}
