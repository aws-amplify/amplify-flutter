$version: "2"

namespace com.amazonaws.amplify.core

@documentation("The Amplify Analytics category configuration.")
union AWSAnalyticsConfig {
    pinpoint: AWSAnalyticsPinpointConfig
}

@documentation("The Amplify Analytics Pinpoint plugin configuration.")
structure AWSAnalyticsPinpointConfig {
    @documentation("The Pinpoint application ID.")
    @required
    appId: String

    @documentation("The Pinpoint application region.")
    @required
    region: AWSRegion

    @documentation("The rate at which recorded events should be flushed to Pinpoint.")
    @required
    autoFlushEventsInterval: Seconds = 30
}
