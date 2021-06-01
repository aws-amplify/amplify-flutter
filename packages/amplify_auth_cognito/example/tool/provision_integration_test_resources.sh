#!/bin/bash
set -e
IFS='|'

FLUTTERCONFIG="{\
\"ResDir\":\"./lib/\",\
}"

AMPLIFY="{\
\"projectName\":\"amplifyauthinteg\",\
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
cat tool/add_auth_request.json | jq -c | amplify add auth --headless
amplify push --yes
