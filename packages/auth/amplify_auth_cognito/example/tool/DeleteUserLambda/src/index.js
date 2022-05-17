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
     await cognitoidentityserviceprovider.adminDeleteUser(params, (err, data) => {
        if (err == null) {
          response['success'] = true
        } else {
          response['error'] = err.toString();
        }
      }).promise();
    } catch (err) {
      response['error'] = err.toString();
    }
    return response;
};
