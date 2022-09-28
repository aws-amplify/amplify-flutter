#!/bin/bash
set -e
IFS='|'

profileName=${AWS_PROFILE:-default}

FLUTTERCONFIG="{\
\"ResDir\":\"./lib/\",\
}"

AMPLIFY="{\
\"projectName\":\"amplifyDataStoreInteg\",\
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
--providers $PROVIDERS \
--yes
echo "$request" | jq -c | amplify add api --headless
amplify push --yes
