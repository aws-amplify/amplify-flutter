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
    
    
    await cognitoidentityserviceprovider.adminCreateUser(createUserParams).promise().catch(function(err) {
      response['error'] = err.toString();
      return response;
    });
    
    if (event.arguments.AutoConfirm) {
      var passwordParams = Object.assign({
        Password:  event.arguments.Password,
        Permanent: true,
      }, baseParams);
      
      await cognitoidentityserviceprovider.adminSetUserPassword(passwordParams).promise().catch(function(err) {
        response['error'] = err.toString();
        return response;
      })
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
      
      await cognitoidentityserviceprovider.adminSetUserSettings(mfaParams).promise().then().catch(function(err) {
        response['error'] = err.toString();
        return response;
      })
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

      await cognitoidentityserviceprovider.adminUpdateUserAttributes(verifyParams).promise().then().catch(function(err) {
        response['error'] = err.toString();
        return response;
      })
    }
    
    response['success'] = true;
    return response;
};
