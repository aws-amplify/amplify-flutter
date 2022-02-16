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

# read the request template and the schema
requestTemplate=`cat tool/add_api_request.json`
schema=`cat tool/schema.graphql`

# escape quotes and remove new lines from schema
schema=${schema//$'"'/'\"'}
schema=${schema//$'\n'/}

# create the request with the actual schema
request="${requestTemplate/<SCHEMA_PLACEHOLDER>/$schema}"

amplify init \
--amplify $AMPLIFY \
--frontend $FRONTEND \
--yes
echo "$request" | jq -c | amplify add api --headless
amplify push --yes
