#!/bin/bash
set -e
IFS='|'

profileName=${AWS_PROFILE:-default}

FLUTTERCONFIG="{\
\"ResDir\":\"./lib/\",\
}"

AMPLIFY="{\
\"projectName\":\"amplifyStorageInteg\",\
\"envName\":\"test\",\
\"defaultEditor\":\"code\"\
}"

FRONTEND="{\
\"frontend\":\"flutter\",\
\"config\":$FLUTTERCONFIG\
}"

AWSCLOUDFORMATIONCONFIG="{\
\"configLevel\":\"project\",\
\"useProfile\":\"true\",\
\"profileName\":\"$profileName\",\
\"region\":\"us-west-2\"\
}"
PROVIDERS="{\
\"awscloudformation\":$AWSCLOUDFORMATIONCONFIG\
}"

amplify init \
--amplify $AMPLIFY \
--frontend $FRONTEND \
--providers $PROVIDERS \
--yes
cat tool/add_auth_request.json | jq -c | amplify add auth --headless
cat tool/add_storage_request.json | jq -c | amplify add storage --headless
amplify push --yes
