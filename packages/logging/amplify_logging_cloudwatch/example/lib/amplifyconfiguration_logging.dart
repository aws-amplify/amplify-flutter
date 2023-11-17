const loggingconfig = '''{
      "plugins": {
        "cloudWatchLoggerPluginConfiguration": {
            "enable": true,
            "logGroupName": "test-logging-log-group",
            "region": "us-west-2",
            "localStoreMaxSizeInMB": 5,
            "flushIntervalInSeconds": 60,
            "loggingConstraints": {
                "defaultLogLevel": "ERROR",
                "categoryLogLevel": {
                        "AUTH": "WARN",
                        "API": "WARN"
                },
                "userLogLevel": {
                    "cognitoSub1": {
                        "defaultLogLevel": "WARN",
                        "categoryLogLevel": {
                            "AUTH": "INFO",
                            "API": "INFO"
                        }
                    }
                }
            }
        }
      }
}''';
