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
amplify push --yes
