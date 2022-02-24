#!/bin/bash
set -e
IFS='|'

[ "$AWS_PROFILE" ] && profileName="$AWS_PROFILE" || profileName="default";

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

AWSCLOUDFORMATIONCONFIG="{\
\"configLevel\":\"project\",\
\"useProfile\":"true",\
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
cat tool/add_auth_request.json | jq -c | amplify add auth --headless
amplify push --yes

# get the deployment bucket to use as destination for lambda code
deploymentBucket=($(jq -r '.test.awscloudformation.DeploymentBucketName' ./amplify/team-provider-info.json))
s3Key=amplify-builds/adminCreateUser.zip
userpoolId=($(jq -r '.auth.authintegrationtest.output.UserPoolId' ./amplify/backend/amplify-meta.json))
stackId=($(jq -r '.test.awscloudformation.StackName' ./amplify/team-provider-info.json))
stackId=$(echo "$stackId" | sed 's/.*-//' )

# check for old stacks/roles
{
    echo "attempting to delete admin-create-user-stack"
    aws cloudformation delete-stack --profile=$profileName --stack-name admin-create-user-stack
    aws cloudformation wait stack-delete-complete --profile=$profileName --stack-name admin-create-user-stack
} || {
    echo "admin-create-user-stack does not exist or could not be deleted."
    echo "We will attempt to create the stack."
}

{
    echo "attempting to delete amplifyauthintegLambdaRoleAdminCreateUser IAM role"
    aws iam delete-role --profile=$profileName --role-name  amplifyauthintegLambdaRole${appId}-test
} || {
    echo "amplifyauthintegLambdaRoleAdminCreateUser does not exist or could not be deleted."
    echo "We will attempt to create the role."
}

# create zip of lambda code from source
cd tool/adminCreateUserLambda/src
zip -r ../adminCreateUser.zip *
cd ../../..

# put lambda code into bucket
echo "adding lambda code to S3..."
aws s3api put-object --profile=$profileName --bucket $deploymentBucket --key $s3Key --body ./tool/adminCreateUserLambda/adminCreateUser.zip

# remove zip file
rm ./tool/adminCreateUserLambda/adminCreateUser.zip

# create lambda function for adminCreateUser
echo "creating lambda with cloudformation..."
aws cloudformation deploy --profile=$profileName --template-file ./tool/adminCreateUserLambda/cloudformation.json --stack-name admin-create-user-stack --parameter-overrides deploymentBucketName=$deploymentBucket s3Key=$s3Key env=test authauthintegrationtestUserPoolId=$userpoolId stackId=$stackId --capabilities CAPABILITY_NAMED_IAM

# create api (which uses lambda in mutation)
echo "$request" | jq -c | amplify add api --headless
amplify push --yes
