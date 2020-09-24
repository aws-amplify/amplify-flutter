/*
* Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

import XCTest
import Amplify
import AmplifyPlugins
import AWSPluginsCore
import AWSCore
import AWSMobileClient
@testable import amplify_auth_cognito

// Test Data
var _data: NSMutableDictionary = [:]
var _args: Dictionary<String, Any> = [:]
var _attributes: Dictionary<String, String> = [:]
var _options: Dictionary<String, Any> = [:]
var _username: String = "testuser"
var _password: String = "mytestpassword"
var _newPassword: String = "newPassword"
var _oldPassword: String = "oldPassword"
var _email: String = "test@test.com"
var _phoneNumber: String = "+15555555555"
var _confirmationCode: String = "confirmationCode"
var _userId: String = "123"
var _accessKey: String = "myAccessKey"
var _secretKey: String = "mySecretKey"
var _idToken: String = "myToken"
var _accessToken: String = "myAccessToken"
var _refreshToken: String = "myRefreshToken"

class amplify_auth_cognito_tests: XCTestCase {
    
    var mockPlugin: SwiftAuthCognito = SwiftAuthCognito()
    var mockCognito: MockCognito = MockCognito()
    
    override func setUpWithError() throws {
        mockPlugin = SwiftAuthCognito.init(cognito: mockCognito)
        _data = [:]
        _args = ["data" : _data]
        _attributes = [:]
        _options = [:]
    }

    override func tearDownWithError() throws {
        mockCognito.returnError = false;
    }

    func test_signUpSuccessEmail() {
        _attributes = ["email" : _email]
        _options = ["userAttributes": _attributes]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "signUp", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterSignUpResult {
                XCTAssertEqual( false, res.isSignUpComplete )
                XCTAssertEqual( "CONFIRM_SIGN_UP_STEP", res.signUpStep)
                let codeDeliveryJson = ((res.toJSON()["nextStep"] as! [String: Any])["codeDeliveryDetails"] as! [String: String])
                let additionalInfoJson = ((res.toJSON()["nextStep"] as! [String: Any])["additionalInfo"] as! [String: String])
                XCTAssertEqual(_email, codeDeliveryJson["destination"]!)
                XCTAssertEqual("bar", additionalInfoJson["foo"]!)

            } else {
                XCTFail()
            }
        })
    }
    
    func test_signUpSuccessPhone() {
        _attributes = ["phone_number" : _phoneNumber]
        _options = ["userAttributes": _attributes]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "signUp", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterSignUpResult {
                XCTAssertEqual( false, res.isSignUpComplete )
                XCTAssertEqual( "CONFIRM_SIGN_UP_STEP", res.signUpStep)
                let codeDeliveryJson = ((res.toJSON()["nextStep"] as! [String: Any])["codeDeliveryDetails"] as! [String: String])
                let additionalInfoJson = ((res.toJSON()["nextStep"] as! [String: Any])["additionalInfo"] as! [String: String])
                XCTAssertEqual(_phoneNumber, codeDeliveryJson["destination"]!)
                XCTAssertEqual("bar", additionalInfoJson["foo"]!)

            } else {
                XCTFail()
            }
        })
    }
    
    func test_signUpSuccessSMS() {
        _attributes = ["sms" : _phoneNumber]
        _options = ["userAttributes": _attributes]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "signUp", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterSignUpResult {
                XCTAssertEqual( false, res.isSignUpComplete )
                XCTAssertEqual( "CONFIRM_SIGN_UP_STEP", res.signUpStep)
                let codeDeliveryJson = ((res.toJSON()["nextStep"] as! [String: Any])["codeDeliveryDetails"] as! [String: String])
                XCTAssertEqual(_phoneNumber, codeDeliveryJson["destination"]!)

            } else {
                XCTFail()
            }
        })
    }
    
    func test_signUpSuccessCustom() {
        _attributes = ["custom" : _phoneNumber]
        _options = ["userAttributes": _attributes]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "signUp", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterSignUpResult {
                XCTAssertEqual( false, res.isSignUpComplete )
                XCTAssertEqual( "CONFIRM_SIGN_UP_STEP", res.signUpStep)
                let codeDeliveryJson = ((res.toJSON()["nextStep"] as! [String: Any])["codeDeliveryDetails"] as! [String: String])
                XCTAssertEqual(_phoneNumber, codeDeliveryJson["destination"]!)

            } else {
                XCTFail()
            }
        })
    }
    
    func test_signUpSuccessComplete() {
        _attributes = ["email" : _email]
        _options = ["userAttributes": _attributes, "complete": true]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "signUp", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterSignUpResult {
                XCTAssertEqual( "DONE", res.signUpStep)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signUpValidation() {
        let rawOptions: Dictionary<String, Any> = ["foo": "bar"]
        var rawData: NSMutableDictionary = ["options":rawOptions]
        let failWithNoPassword = FlutterSignUpRequest.validate(dict: rawData);
        XCTAssertEqual(false, failWithNoPassword)
        rawData = ["password": _password]
        let failWithNoOptions = FlutterSignUpRequest.validate(dict: rawData);
        XCTAssertEqual(false, failWithNoOptions)
    }
    
    func test_signUpFormatAttributes() {
        let rawAttributes: Dictionary<String, Any> = ["email": _email, "customAttribute": "female"]
        let rawOptions: Dictionary<String, Any> = ["userAttributes": rawAttributes]
        let rawData: NSMutableDictionary = ["options":rawOptions, "username": _username, "password": _password]
        let request = FlutterSignUpRequest(dict: rawData);
        XCTAssertEqual(2, request.userAttributes.count)
    }
    
    func test_signUpError() {
        mockCognito.returnError = true
        _attributes = ["email" : _email]
        _options = ["userAttributes": _attributes]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "signUp", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterError {
                XCTAssertEqual( "AmplifyException", res.code )
                XCTAssertEqual( "AMPLIFY_SIGNUP_FAILED", res.message)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_confirmSignUpSuccess() {
        _data = [
            "username": _username,
            "confirmationCode": _confirmationCode,
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "confirmSignUp", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterSignUpResult {
                XCTAssertEqual( true, res.isSignUpComplete )
                XCTAssertEqual( "DONE", res.signUpStep)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_confirmSignUpError() {
        mockCognito.returnError = true
        _data = [
            "username": _username,
            "confirmationCode": _confirmationCode,
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "confirmSignUp", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterError {
                XCTAssertEqual( "AmplifyException", res.code )
                XCTAssertEqual( "AMPLIFY_CONFIRM_SIGNUP_FAILED", res.message)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_confirmSignUpValidation() {
        let rawOptions: Dictionary<String, Any> = ["foo": "bar"]
        var rawData: NSMutableDictionary = ["username": _username]
        let failWithNoConfirmationCode = FlutterConfirmSignUpRequest.validate(dict: rawData);
        XCTAssertEqual(false, failWithNoConfirmationCode)
        rawData = ["confirmationCode": _confirmationCode]
        let failWithNoUsername = FlutterConfirmSignUpRequest.validate(dict: rawData);
        XCTAssertEqual(false, failWithNoUsername)
        rawData = ["options": rawOptions]
        let succeedWithOptions = FlutterConfirmSignUpRequest.validate(dict: rawData);
        XCTAssertEqual(true, succeedWithOptions)
    }
    
    func test_resendSignUpCodeSuccessEmail() {
        _data = ["username": _username]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "resendSignUpCode", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterResendSignUpCodeResult {
                XCTAssertEqual( _email,  res.codeDeliveryDetails["destination"] )
                XCTAssertEqual( "email",  res.codeDeliveryDetails["attributeName"] )
                XCTAssertEqual( _email, (res.toJSON()["codeDeliveryDetails"] as! [String: String])["destination"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_resendSignUpCodeSuccessSMS() {
        _data = ["username": "sms"]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "resendSignUpCode", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterResendSignUpCodeResult {
                XCTAssertEqual( _phoneNumber,  res.codeDeliveryDetails["destination"] )
                XCTAssertEqual( "sms",  res.codeDeliveryDetails["attributeName"] )
                XCTAssertEqual( _phoneNumber, (res.toJSON()["codeDeliveryDetails"] as! [String: String])["destination"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_resendSignUpCodeSuccessCustom() {
        _data = ["username": "custom"]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "resendSignUpCode", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterResendSignUpCodeResult {
                XCTAssertEqual( _phoneNumber,  res.codeDeliveryDetails["destination"] )
                XCTAssertEqual( "unknown",  res.codeDeliveryDetails["attributeName"] )
                XCTAssertEqual( _phoneNumber, (res.toJSON()["codeDeliveryDetails"] as! [String: String])["destination"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_resendSignUpCodeSuccessPhone() {
        _data = ["username": "phone"]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "resendSignUpCode", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterResendSignUpCodeResult {
                XCTAssertEqual( _phoneNumber,  res.codeDeliveryDetails["destination"] )
                XCTAssertEqual( "phone",  res.codeDeliveryDetails["attributeName"] )
                XCTAssertEqual( _phoneNumber, (res.toJSON()["codeDeliveryDetails"] as! [String: String])["destination"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_resendSignUpCodeError() {
        mockCognito.returnError = true
        _data = ["username": _username]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "resendSignUpCode", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
                   if let res = result as? FlutterError {
                       XCTAssertEqual( "AmplifyException", res.code )
                       XCTAssertEqual( "AMPLIFY_RESEND_SIGNUP_CODE_FAILED", res.message)
                   } else {
                       XCTFail()
                   }
               })
    }
    
    func test_signInSuccess() {
        _data = [
            "username": _username,
            "password": _password,
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "signIn", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterSignInResult {
                XCTAssertEqual( false, res.isSignedIn )
                XCTAssertEqual( "CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE", res.signInStep)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signInSuccessSMS() {
        _options = ["phoneNumber": _phoneNumber]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "signIn", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterSignInResult {
                XCTAssertEqual( false, res.isSignedIn )
                XCTAssertEqual( "CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE", res.signInStep)
                let codeDeliveryJson = ((res.toJSON()["nextStep"] as! [String: Any])["codeDeliveryDetails"] as! [String: String])
                let additionalInfoJson = ((res.toJSON()["nextStep"] as! [String: Any])["additionalInfo"] as! [String: String])
                XCTAssertEqual(_phoneNumber, codeDeliveryJson["destination"]!)
                XCTAssertEqual("bar", additionalInfoJson["foo"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signInSuccessResetPassword() {
        _options = ["delivery": "resetPassword"]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "signIn", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterSignInResult {
                XCTAssertEqual( false, res.isSignedIn )
                XCTAssertEqual( "RESET_PASSWORD", res.signInStep)
                let codeDeliveryJson = ((res.toJSON()["nextStep"] as! [String: Any])["codeDeliveryDetails"] as! [String: String])
                let additionalInfoJson = ((res.toJSON()["nextStep"] as! [String: Any])["additionalInfo"] as! [String: String])
                XCTAssertEqual("bar", additionalInfoJson["foo"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signInSuccessCustomChallenge() {
        _options = ["delivery": "confirmSignInWithCustomChallenge"]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "signIn", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterSignInResult {
                XCTAssertEqual( false, res.isSignedIn )
                XCTAssertEqual( "CONFIRM_SIGN_IN_WITH_CUSTOM_CHALLENGE", res.signInStep)
                let codeDeliveryJson = ((res.toJSON()["nextStep"] as! [String: Any])["codeDeliveryDetails"] as! [String: String])
                let additionalInfoJson = ((res.toJSON()["nextStep"] as! [String: Any])["additionalInfo"] as! [String: String])
                XCTAssertEqual("bar", additionalInfoJson["foo"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signInSuccessNewPassword() {
        _options = ["delivery": "confirmSignInWithNewPassword"]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "signIn", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterSignInResult {
                XCTAssertEqual( false, res.isSignedIn )
                XCTAssertEqual( "CONFIRM_SIGN_IN_WITH_NEW_PASSWORD", res.signInStep)
                let codeDeliveryJson = ((res.toJSON()["nextStep"] as! [String: Any])["codeDeliveryDetails"] as! [String: String])
                let additionalInfoJson = ((res.toJSON()["nextStep"] as! [String: Any])["additionalInfo"] as! [String: String])
                XCTAssertEqual("bar", additionalInfoJson["foo"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signInSuccessDone() {
        _options = ["delivery": "done"]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "signIn", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterSignInResult {
                XCTAssertEqual( true, res.isSignedIn )
                XCTAssertEqual( "DONE", res.signInStep)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signInValidation() {
        var rawData: NSMutableDictionary = ["username":_username]
        let failWithUsernameOnly = FlutterSignInRequest.validate(dict: rawData);
        XCTAssertEqual(false, failWithUsernameOnly)
        
        rawData = ["password": _password]
        let failWithPasswordOnly = FlutterSignInRequest.validate(dict: rawData);
        XCTAssertEqual(false, failWithPasswordOnly)
        
        let rawOptions: Dictionary<String, Any> = ["foo": "bar"]
        rawData = ["options": rawOptions]
        let succeedWithOptionsOnly = FlutterSignInRequest.validate(dict: rawData);
        XCTAssertEqual(true, succeedWithOptionsOnly)
    }
    
    func test_signInError() {
        mockCognito.returnError = true
        _data = [
            "username": _username,
            "password": _password,
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "signIn", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
                   if let res = result as? FlutterError {
                       XCTAssertEqual( "AmplifyException", res.code )
                       XCTAssertEqual( "AMPLIFY_SIGNIN_FAILED", res.message)
                   } else {
                       XCTFail()
                   }
               })
    }
    
    func test_confirmSignInSuccess() {
        _data = ["confirmationCode": _confirmationCode]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "confirmSignIn", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterSignInResult {
                XCTAssertEqual( true, res.isSignedIn )
                XCTAssertEqual( "DONE", res.signInStep)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_confirmSignInError() {
        mockCognito.returnError = true
        _data = ["confirmationCode": _confirmationCode]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "confirmSignIn", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
                   if let res = result as? FlutterError {
                       XCTAssertEqual( "AmplifyException", res.code )
                       XCTAssertEqual( "AMPLIFY_CONFIRM_SIGNIN_FAILED", res.message)
                   } else {
                       XCTFail()
                   }
               })
    }
    
    func test_confirmSignInValidation() {
        let rawOptions: Dictionary<String, Any> = ["foo": "bar"]
        var rawData: NSMutableDictionary = [:]
        let failWithNoConfirmationCode = FlutterConfirmSignInRequest.validate(dict: rawData);
        XCTAssertEqual(false, failWithNoConfirmationCode)
        rawData = ["options": rawOptions]
        let succeedWithOptions = FlutterConfirmSignInRequest.validate(dict: rawData);
        XCTAssertEqual(true, succeedWithOptions)
    }
    
    func test_updatePasswordSuccess() {
        _data = [
            "oldPassword": _oldPassword,
            "newPassword": _newPassword,
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "updatePassword", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? Dictionary<String, Any> {
                XCTAssertEqual( 0, res.count )
            } else {
                XCTFail()
            }
        })
    }
    
    func test_updatePasswordValidation() {
        let rawOptions: Dictionary<String, Any> = ["foo": "bar"]
        var rawData: NSMutableDictionary = ["oldPassword": _oldPassword]
        let failWithoutNewPassword = FlutterUpdatePasswordRequest.validate(dict: rawData);
        XCTAssertEqual(false, failWithoutNewPassword)
        
        rawData = ["newPassword": _newPassword]
        let failWithoutOldPassword = FlutterUpdatePasswordRequest.validate(dict: rawData);
        XCTAssertEqual(false, failWithoutOldPassword)
        
        rawData = ["options": rawOptions]
        let succeedWithOptions = FlutterConfirmSignInRequest.validate(dict: rawData);
        XCTAssertEqual(true, succeedWithOptions)
    }
    
    func test_updatePasswordError() {
        mockCognito.returnError = true
        _data = [
            "oldPassword": _oldPassword,
            "newPassword": _newPassword,
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "updatePassword", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterError {
                XCTAssertEqual( "AmplifyException", res.code )
                XCTAssertEqual( "AMPLIFY_UPDATE_PASSWORD_FAILED", res.message)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_resetPasswordSuccess() {
        _data = ["username": _username]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "resetPassword", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterResetPasswordResult {
                XCTAssertEqual( true, res.isPasswordReset )
                XCTAssertEqual( "CONFIRM_RESET_PASSWORD_WITH_CODE", res.resetPasswordStep)
                let codeDeliveryJson = ((res.toJSON()["nextStep"] as! [String: Any])["codeDeliveryDetails"] as! [String: String])
                XCTAssertEqual(_email, codeDeliveryJson["destination"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_resetPasswordValidation() {
        var rawData: NSMutableDictionary = [:]
        let failWithNoArgs = FlutterResetPasswordRequest.validate(dict: rawData);
        XCTAssertEqual(false, failWithNoArgs)
        
        let rawOptions: Dictionary<String, Any> = ["foo": "bar"]
        rawData = ["options": rawOptions]
        let succeedWithOptionsOnly = FlutterResetPasswordRequest.validate(dict: rawData);
        XCTAssertEqual(true, succeedWithOptionsOnly)
    }
    
    func test_resetPasswordError() {
        mockCognito.returnError = true
        _data = ["username": _username]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "resetPassword", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterError {
                XCTAssertEqual( "AmplifyException", res.code )
                XCTAssertEqual( "AMPLIFY_RESET_PASSWORD_FAILED", res.message)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_confirmPasswordSuccess() {
        _data = [
            "username": _username,
            "newPassword": _newPassword,
            "confirmationCode": _confirmationCode
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "confirmPassword", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? Dictionary<String, Any> {
                XCTAssertEqual( 0, res.count )
            } else {
                XCTFail()
            }
        })
    }
    
    func test_confirmPasswordError() {
        mockCognito.returnError = true
        _data = [
            "username": _username,
            "newPassword": _newPassword,
            "confirmationCode": _confirmationCode
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "confirmPassword", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterError {
                XCTAssertEqual( "AmplifyException", res.code )
                XCTAssertEqual( "AMPLIFY_CONFIRM_PASSWORD_FAILED", res.message)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signOutSuccess() {
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "signOut", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? Dictionary<String, Any> {
                XCTAssertEqual( 0, res.count )
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signOutError() {
        mockCognito.returnError = true
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "signOut", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterError {
                XCTAssertEqual( "AmplifyException", res.code )
                XCTAssertEqual( "AMPLIFY_SIGNOUT_FAILED", res.message)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_getCurrentUserSuccess() {
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "getCurrentUser" , arguments: _args)
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterAuthUserResult {
                XCTAssertEqual( _username, res.username )
                XCTAssertEqual( _userId, res.userId)
                XCTAssertEqual( _userId, res.toJSON()["userId"] as! String)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_getCurrentUserError() {
        mockCognito.returnError = true
        let call = FlutterMethodCall( methodName: "getCurrentUser", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterError {
                XCTAssertEqual( "AmplifyException", res.code )
                XCTAssertEqual( "AMPLIFY_GET_CURRENT_USER_FAILED", res.message)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_fetchCognitoSessionSuccess() {
        _options = ["getAWSCredentials": true]
        _data = ["options": _options]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "fetchAuthSession", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterFetchCognitoSessionResult {
                XCTAssertEqual(true, res.isSignedIn)
                XCTAssertEqual("testid", res.identityId)
                XCTAssertEqual("testsub", res.userSub)
                XCTAssertEqual(5, res.toJSON().count)

            } else {
                XCTFail()
            }
        })
    }
    
    func test_fetchSessionSuccess() {
        _options = ["getAWSCredentials": false]
        _data = ["options": _options]
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "fetchAuthSession", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterFetchSessionResult {
                XCTAssertEqual(true, res.isSignedIn)
                XCTAssertEqual(true, res.toJSON()["isSignedIn"] as? Bool)
                XCTAssertEqual(1, res.toJSON().count)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_fetchSessionNoOptions() {
        _args = ["data": _data]
        let call = FlutterMethodCall( methodName: "fetchAuthSession", arguments: _args )
        mockPlugin.handle( call, result: {(result)->Void in
            if let res = result as? FlutterFetchSessionResult {
                XCTAssertEqual(true, res.isSignedIn)
                XCTAssertEqual(true, res.toJSON()["isSignedIn"] as? Bool)
                XCTAssertEqual(1, res.toJSON().count)
            } else {
                XCTFail()
            }
        })
    }
}
