/* Amplify Params - DO NOT EDIT
	USERPOOL_ID
	ENV
	REGION
Amplify Params - DO NOT EDIT */
var aws = require('aws-sdk');
var cognitoidentityserviceprovider = new aws.CognitoIdentityServiceProvider({
    "region": process.env.REGION,
});

exports.handler = async (event) => {
    var response = {success: false }
    var baseParams = {
        UserPoolId: process.env.USERPOOL_ID,
        Username: event.arguments.Username
      }

    var createUserParams = Object.assign({
        TemporaryPassword: event.arguments.Password
    }, baseParams);
    
    var attributes = [];
    
    for (const [k, v] of Object.entries(event.arguments)) {
      if (['Given_Name','Name', 'Email', 'Phone_Number'].includes(k)) {
        attributes.push({"Name": k.toLowerCase(), "Value": v})
      }
    }
    
    if (attributes.length > 0) {
      createUserParams["UserAttributes"] = attributes
    }
    
    try {
      await cognitoidentityserviceprovider.adminCreateUser(createUserParams).promise()
    } catch(err) {
      response['exception'] = err.toString();
      return response;
    }

    
    if (event.arguments.AutoConfirm) {
      var passwordParams = Object.assign({
        Password:  event.arguments.Password,
        Permanent: true,
      }, baseParams);
      
      try {
        await cognitoidentityserviceprovider.adminSetUserPassword(passwordParams).promise()
      } catch(err) {
        response['exception'] = err.toString();
        return response;
      }
    } 
    
    if (event.arguments.EnableMFA) {
      var mfaParams = Object.assign({
          MFAOptions: [
            {
                AttributeName: 'phone_number',
                DeliveryMedium: 'SMS'
            }
          ]
        }, baseParams);
      
        try {
          await cognitoidentityserviceprovider.adminSetUserSettings(mfaParams).promise()
        } catch(err) {
          response['exception'] = err.toString();
          return response;
        }
    }

    if (event.arguments.VerifyAttributes) {
      var verifyParams = Object.assign({
        UserAttributes: [
          {
            Name: 'phone_number_verified',
            Value: 'true'
          },
          {
            Name: 'email_verified',
            Value: 'true'
          }
        ]
      }, baseParams);

      try {
        await cognitoidentityserviceprovider.adminUpdateUserAttributes(verifyParams).promise()
      } catch(err) {
        response['exception'] = err.toString();
        return response;
      }
    }
    
    // Function would have returned on any exceptions before this point
    response['success'] = true;
    return response;
};
