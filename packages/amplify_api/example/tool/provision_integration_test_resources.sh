#!/bin/bash
set -e
IFS='|'

FLUTTERCONFIG="{\
\"ResDir\":\"./lib/\",\
}"

AMPLIFY="{\
\"projectName\":\"amplifyApiInteg\",\
\"envName\":\"test\",\
\"defaultEditor\":\"code\"\
}"

FRONTEND="{\
\"frontend\":\"flutter\",\
\"config\":$FLUTTERCONFIG\
}"

amplify init \
--amplify $AMPLIFY \
--frontend $FRONTEND \
--yes
cat tool/add_api_request.json | jq -c | amplify add api --headless
amplify push --yes
