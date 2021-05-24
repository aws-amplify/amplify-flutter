#!/bin/bash
set -e
IFS='|'

AMPLIFY="{\
\"projectName\":\"amplifyauthinteg\",\
\"envName\":\"test\",\
\"defaultEditor\":\"code\"\
}"

amplify init \
--amplify $AMPLIFY \
--yes
cat tool/add_auth_request.json | jq -c | amplify add auth --headless
amplify push --yes
