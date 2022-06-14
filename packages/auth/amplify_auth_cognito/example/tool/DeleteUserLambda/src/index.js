const AWS = require('aws-sdk');

var params = {
    UserPoolId: process.env.USERPOOL_ID, 
};

var cognitoidentityserviceprovider = new AWS.CognitoIdentityServiceProvider({
    "region": process.env.REGION,
});

exports.handler = async (event) => {
    var response = {success: false }
    params['Username'] = event.arguments.Username;
    try {
     await cognitoidentityserviceprovider.adminDeleteUser(params).promise();
    } catch (err) {
      response['exception'] = err.toString();
      return response;
    }

    // Function would have returned on any exceptions before this point
    response['success'] = true;
    return response;
};
