#!/bin/bash
set -e
IFS='|'

profileName=${AWS_PROFILE:-default}

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
\"useProfile\":\"true\",\
\"profileName\":\"$profileName\",\
\"region\":\"us-west-2\"\
}"
PROVIDERS="{\
\"awscloudformation\":$AWSCLOUDFORMATIONCONFIG\
}"

# custom auth challenge names
create='CreateAuthChallenge'
define='DefineAuthChallenge'
verify='VerifyAuthChallenge'

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
s3AdminCreateUserKey=amplify-builds/AdminCreateUser.zip
s3DeleteUserKey=amplify-builds/DeleteUser.zip
s3VerifyAuthChallengeKey=amplify-builds/$verify.zip
s3DefineAuthChallengeKey=amplify-builds/$define.zip
s3CreateAuthChallengeKey=amplify-builds/$create.zip

userpoolId=($(jq -r '.auth.authintegrationtest.output.UserPoolId' ./amplify/backend/amplify-meta.json))
userpoolArn=$(aws cognito-idp describe-user-pool --user-pool-id $userpoolId --query UserPool.Arn | tr -d '"') 
stackId=($(jq -r '.test.awscloudformation.StackName' ./amplify/team-provider-info.json))
stackId=$(echo "$stackId" | sed 's/.*-//' )

check_and_delete_stack () {
    {
        echo "attempting to delete ${1}Stack"
        aws cloudformation delete-stack --profile=$profileName --stack-name  ${1}Stack
        aws cloudformation wait stack-delete-complete --profile=$profileName --stack-name  ${1}Stack
    } || {
        echo "${1}Stack does not exist or could not be deleted."
        echo "We will attempt to create ${1}Stack."
    }
}

zip_lambda () {
    echo "zipping $1 lambda..."
    cd tool/${1}Lambda/src
    zip -r ../${1}.zip *
    cd ../../..
}

deploy_lambda_stack () {
    echo "adding $1 lambda code to S3..."
    aws s3api put-object --profile=$profileName --bucket $deploymentBucket --key $2 --body ./tool/${1}Lambda/${1}.zip
    echo "creating $1 lambda stack with cloudformation..."
    aws cloudformation deploy --profile=$profileName --template-file ./tool/$3 --stack-name ${1}Stack --parameter-overrides deploymentBucketName=$deploymentBucket s3Key=$2 env=test userpoolId=$userpoolId stackId=$stackId triggerName=$1 userpoolArn=$userpoolArn --capabilities CAPABILITY_NAMED_IAM
}

# remove previously created stacks
check_and_delete_stack "AdminCreateUser"
check_and_delete_stack "DeleteUser"
check_and_delete_stack $create
check_and_delete_stack $define
check_and_delete_stack $verify

# create zip file for upload to s3
zip_lambda "AdminCreateUser"
zip_lambda "DeleteUser"
zip_lambda $create
zip_lambda $define
zip_lambda $verify

# upload lambda code to s3 and deploy to lambda
deploy_lambda_stack "AdminCreateUser" $s3AdminCreateUserKey "AdminCreateUserLambda/cloudformation.json"
deploy_lambda_stack "DeleteUser" $s3DeleteUserKey "DeleteUserLambda/cloudformation.json"
deploy_lambda_stack $create $s3CreateAuthChallengeKey "trigger_cloudformation.json"
deploy_lambda_stack $define $s3DefineAuthChallengeKey "trigger_cloudformation.json"
deploy_lambda_stack $verify $s3VerifyAuthChallengeKey "trigger_cloudformation.json"

# remove zip file
rm ./tool/AdminCreateUserLambda/AdminCreateUser.zip
rm ./tool/DeleteUserLambda/DeleteUser.zip
rm ./tool/${create}Lambda/${create}.zip
rm ./tool/${define}Lambda/${define}.zip
rm ./tool/${verify}Lambda/${verify}.zip

# create api (which uses lambda in mutation)
echo "$request" | jq -c | amplify add api --headless
amplify push --yes

# get arns for custom auth functions
createChallengeArn=$(aws lambda get-function --function-name ${create} --query Configuration.FunctionArn)
defineChallengeArn=$(aws lambda get-function --function-name ${define} --query Configuration.FunctionArn)
verifyChallengeArn=$(aws lambda get-function --function-name ${verify} --query Configuration.FunctionArn)

echo "Updating trigger permissions..."
aws lambda add-permission --function-name ${create} --statement-id ${create}InvokePermission --action lambda:InvokeFunction --principal cognito-idp.amazonaws.com --source-arn $userpoolArn
aws lambda add-permission --function-name ${verify} --statement-id ${verify}InvokePermission --action lambda:InvokeFunction --principal cognito-idp.amazonaws.com --source-arn $userpoolArn
aws lambda add-permission --function-name ${define} --statement-id ${define}InvokePermission --action lambda:InvokeFunction --principal cognito-idp.amazonaws.com --source-arn $userpoolArn

echo "Adding triggers to userpool..."
aws cognito-idp update-user-pool --user-pool-id $userpoolId --lambda-config DefineAuthChallenge=$defineChallengeArn,CreateAuthChallenge=$createChallengeArn,VerifyAuthChallengeResponse=$verifyChallengeArn

echo "Provision complete."
