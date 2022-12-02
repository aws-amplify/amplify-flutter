#!/bin/bash
set -e
IFS='|'

# Install amplify CLI if not installed
if ! command -v amplify &> /dev/null
then
    npm install -g @aws-amplify/cli
fi

FLUTTERCONFIG="{\
\"ResDir\":\"./lib/\",\
\"SourceDir\":\"lib\",\
}"

AMPLIFY="{\
\"appId\":\"$APP_ID\",\
\"envName\":\"test\",\
\"defaultEditor\":\"code\"\
}"

FRONTEND="{\
\"frontend\":\"flutter\",\
\"config\":$FLUTTERCONFIG\
}"

AWSCLOUDFORMATIONCONFIG="{\
\"configLevel\":\"project\",\
\"useProfile\":true,\
\"profileName\":\"default\",\
\"region\":\"us-west-2\"\
}"
PROVIDERS="{\
\"awscloudformation\":$AWSCLOUDFORMATIONCONFIG\
}"

echo n | amplify pull \
--amplify $AMPLIFY \
--frontend $FRONTEND \
--providers $PROVIDERS
