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
let _username: String = "testuser"
let _password: String = "mytestpassword"
let _newPassword: String = "newPassword"
let _oldPassword: String = "oldPassword"
let _email: String = "test@test.com"
let _phoneNumber: String = "+15555555555"
let _confirmationCode: String = "confirmationCode"
let _userId: String = "123"
let _accessKey: String = "myAccessKey"
let _secretKey: String = "mySecretKey"
let _idToken: String = "myToken"
let _accessToken: String = "myAccessToken"
let _refreshToken: String = "myRefreshToken"


class amplify_auth_cognito_tests: XCTestCase {
    
    var plugin: SwiftAuthCognito = SwiftAuthCognito()
    var mockCognito: AuthCognitoBridge = AuthCognitoBridge()
    var errorHandler: AuthErrorHandler = AuthErrorHandler()
        
    override func setUpWithError() throws {
        plugin = SwiftAuthCognito.init(cognito: mockCognito)
        _data = [:]
        _args = ["data" : _data]
        _attributes = [:]
        _options = [:]
    }

    override func tearDownWithError() throws {}

    func test_signUpSuccessEmail() {
        
        class SignUpMock: AuthCognitoBridge {
            override func onSignUp(flutterResult: @escaping FlutterResult, request: FlutterSignUpRequest){
                let signUpRes = Result<AuthSignUpResult,AuthError>.success(
                    AuthSignUpResult(AuthSignUpStep.confirmUser(AuthCodeDeliveryDetails(destination: DeliveryDestination.email(_email)), ["foo": "bar"])))
                let signUpData = FlutterSignUpResult(res: signUpRes)
                flutterResult(signUpData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: SignUpMock())

        _attributes = ["email" : _email]
        _options = ["userAttributes": _attributes]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "signUp", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
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
        
        class SignUpMock: AuthCognitoBridge {
            override func onSignUp(flutterResult: @escaping FlutterResult, request: FlutterSignUpRequest){
                let signUpRes = Result<AuthSignUpResult,AuthError>.success(
                    AuthSignUpResult(AuthSignUpStep.confirmUser(AuthCodeDeliveryDetails(destination: DeliveryDestination.phone(_phoneNumber)), ["foo": "bar"])))
                let signUpData = FlutterSignUpResult(res: signUpRes)
                flutterResult(signUpData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: SignUpMock())
        
        _attributes = ["phone_number" : _phoneNumber]
        _options = ["userAttributes": _attributes]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "signUp", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
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
        
        class SignUpMock: AuthCognitoBridge {
            override func onSignUp(flutterResult: @escaping FlutterResult, request: FlutterSignUpRequest){
                let signUpRes = Result<AuthSignUpResult,AuthError>.success(
                    AuthSignUpResult(AuthSignUpStep.confirmUser(AuthCodeDeliveryDetails(destination: DeliveryDestination.sms(_phoneNumber)), ["foo": "bar"])))
                let signUpData = FlutterSignUpResult(res: signUpRes)
                flutterResult(signUpData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: SignUpMock())
        
        _attributes = ["sms" : _phoneNumber]
        _options = ["userAttributes": _attributes]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "signUp", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
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
        
        class SignUpMock: AuthCognitoBridge {
            override func onSignUp(flutterResult: @escaping FlutterResult, request: FlutterSignUpRequest){
                let signUpRes = Result<AuthSignUpResult,AuthError>.success(
                    AuthSignUpResult(AuthSignUpStep.confirmUser(AuthCodeDeliveryDetails(destination: DeliveryDestination.unknown(_phoneNumber)), ["foo": "bar"])))
                let signUpData = FlutterSignUpResult(res: signUpRes)
                flutterResult(signUpData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: SignUpMock())
        
        _attributes = ["custom" : _phoneNumber]
        _options = ["userAttributes": _attributes]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "signUp", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
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
        
        class SignUpMock: AuthCognitoBridge {
            override func onSignUp(flutterResult: @escaping FlutterResult, request: FlutterSignUpRequest){
                let signUpRes = Result<AuthSignUpResult,AuthError>.success(AuthSignUpResult(AuthSignUpStep.done))
                let signUpData = FlutterSignUpResult(res: signUpRes)
                flutterResult(signUpData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: SignUpMock())
        
        _attributes = ["email" : _email]
        _options = ["userAttributes": _attributes]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "signUp", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterSignUpResult {
                XCTAssertEqual( "DONE", res.signUpStep)
                XCTAssertEqual( true, res.isSignUpComplete)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signUpValidation() {
        let rawOptions: Dictionary<String, Any> = ["foo": "bar"]
        var rawData: NSMutableDictionary = ["options":rawOptions]
        
        // Throws with no password
        XCTAssertThrowsError(try FlutterSignUpRequest.validate(dict: rawData))

        // Throws with no options
        rawData = ["password": _password]
        XCTAssertThrowsError(try FlutterSignUpRequest.validate(dict: rawData))
    }
    
    func test_signUpFormatAttributes() {
        let rawAttributes: Dictionary<String, Any> = ["email": _email, "customAttribute": "female"]
        let rawOptions: Dictionary<String, Any> = ["userAttributes": rawAttributes]
        let rawData: NSMutableDictionary = ["options":rawOptions, "username": _username, "password": _password]
        let request = FlutterSignUpRequest(dict: rawData);
        XCTAssertEqual(2, request.userAttributes.count)
    }
    
    func test_signUpError() {
        
        class SignUpMock: AuthCognitoBridge {
            override func onSignUp(flutterResult: @escaping FlutterResult, request: FlutterSignUpRequest){
                let authError = AuthError.service("Username exists", MockErrorConstants.userNameExistsError, AWSCognitoAuthError.usernameExists)
                errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: SignUpMock())
        

        _attributes = ["email" : _email]
        _options = ["userAttributes": _attributes]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "signUp", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterError {
                let details = res.details as? Dictionary<String, String>
                XCTAssertEqual( "UsernameExistsException", res.code )
                XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.usernameExists)", details?["underlyingException"])
                XCTAssertEqual( MockErrorConstants.userNameExistsError, details?["recoverySuggestion"])
                XCTAssertEqual( "Username exists", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_confirmSignUpSuccess() {
        
        class ConfirmSignUpMock: AuthCognitoBridge {
            override func onConfirmSignUp(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignUpRequest){
                let confirmSignUpRes = Result<AuthSignUpResult,AuthError>.success(AuthSignUpResult(AuthSignUpStep.done))
                let signUpData = FlutterSignUpResult(res: confirmSignUpRes)
                flutterResult(signUpData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: ConfirmSignUpMock())
        
        _data = [
            "username": _username,
            "confirmationCode": _confirmationCode,
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "confirmSignUp", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterSignUpResult {
                XCTAssertEqual( true, res.isSignUpComplete )
                XCTAssertEqual( "DONE", res.signUpStep)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_confirmSignUpError() {
        
        class ConfirmSignUpMock: AuthCognitoBridge {
            override func onConfirmSignUp(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignUpRequest){
                let authError = AuthError.service("Code expired", MockErrorConstants.codeExpiredError, AWSCognitoAuthError.codeExpired)
                errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)
            }
        }
        
        
        
        plugin = SwiftAuthCognito.init(cognito: ConfirmSignUpMock())
        
        _data = [
            "username": _username,
            "confirmationCode": _confirmationCode,
        ]
        _args = ["data": _data]
        
        let call = FlutterMethodCall(methodName: "confirmSignUp", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterError {
                let details = res.details as? Dictionary<String, String>
                XCTAssertEqual( "CodeExpiredException", res.code )
                XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.codeExpired)", details?["underlyingException"])
                XCTAssertEqual( MockErrorConstants.codeExpiredError, details?["recoverySuggestion"])
                XCTAssertEqual( "Code expired", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_confirmSignUpValidation() {
        let rawOptions: Dictionary<String, Any> = ["foo": "bar"]
        var rawData: NSMutableDictionary = ["username": _username]
        
        // Throws with no confirmation code
        XCTAssertThrowsError(try FlutterConfirmSignUpRequest.validate(dict: rawData))
        
        // Throws with no username
        rawData = ["confirmationCode": _confirmationCode]
        XCTAssertThrowsError(try FlutterConfirmSignUpRequest.validate(dict: rawData))

        // Succeeds with options
        rawData = ["options": rawOptions]
        XCTAssertNoThrow(try FlutterConfirmSignUpRequest.validate(dict: rawData))
    }
    
    func test_resendSignUpCodeSuccessEmail() {
        
        class ResendSignUpCodeMock: AuthCognitoBridge {
            override func onResendSignUpCode(flutterResult: @escaping FlutterResult, request: FlutterResendSignUpCodeRequest) {
                  let resendCodeRes = Result<AuthCodeDeliveryDetails, AuthError>.success(AuthCodeDeliveryDetails(destination: DeliveryDestination.email(_email)))
                  let resendData = FlutterResendSignUpCodeResult(res: resendCodeRes)
                  flutterResult(resendData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: ResendSignUpCodeMock())
        
        _data = ["username": _username]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "resendSignUpCode", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
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
        
        class ResendSignUpCodeMock: AuthCognitoBridge {
            override func onResendSignUpCode(flutterResult: @escaping FlutterResult, request: FlutterResendSignUpCodeRequest) {
                  let resendCodeRes = Result<AuthCodeDeliveryDetails, AuthError>.success(AuthCodeDeliveryDetails(destination: DeliveryDestination.sms(_phoneNumber)))
                  let resendData = FlutterResendSignUpCodeResult(res: resendCodeRes)
                  flutterResult(resendData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: ResendSignUpCodeMock())
        
        _data = ["username": "sms"]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "resendSignUpCode", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
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
        
        class ResendSignUpCodeMock: AuthCognitoBridge {
            override func onResendSignUpCode(flutterResult: @escaping FlutterResult, request: FlutterResendSignUpCodeRequest) {
                  let resendCodeRes = Result<AuthCodeDeliveryDetails, AuthError>.success(AuthCodeDeliveryDetails(destination: DeliveryDestination.unknown(_phoneNumber)))
                  let resendData = FlutterResendSignUpCodeResult(res: resendCodeRes)
                  flutterResult(resendData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: ResendSignUpCodeMock())
        
        _data = ["username": "custom"]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "resendSignUpCode", arguments: _args)
        plugin.handle( call, result: {(result)->Void in
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
        
        class ResendSignUpCodeMock: AuthCognitoBridge {
            override func onResendSignUpCode(flutterResult: @escaping FlutterResult, request: FlutterResendSignUpCodeRequest) {
                  let resendCodeRes = Result<AuthCodeDeliveryDetails, AuthError>.success(AuthCodeDeliveryDetails(destination: DeliveryDestination.phone(_phoneNumber)))
                  let resendData = FlutterResendSignUpCodeResult(res: resendCodeRes)
                  flutterResult(resendData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: ResendSignUpCodeMock())
        
        _data = ["username": "phone"]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "resendSignUpCode", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
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
        
        class ResendSignUpCodeMock: AuthCognitoBridge {
            override func onResendSignUpCode(flutterResult: @escaping FlutterResult, request: FlutterResendSignUpCodeRequest) {
                let authError = AuthError.service("Could not deliver code", MockErrorConstants.codeDeliveryError, AWSCognitoAuthError.codeDelivery)
                errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: ResendSignUpCodeMock())
        
        _data = ["username": _username]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "resendSignUpCode", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
                   if let res = result as? FlutterError {
                      let details = res.details as? Dictionary<String, String>
                      XCTAssertEqual( "CodeDeliveryFailureException", res.code )
                      XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.codeDelivery)", details?["underlyingException"])
                      XCTAssertEqual( MockErrorConstants.codeDeliveryError, details?["recoverySuggestion"])
                      XCTAssertEqual( "Could not deliver code", details?["message"])
                   } else {
                       XCTFail()
                   }
               })
    }
    
    
    func test_signInSuccessSMS() {
        
        class SignInMock: AuthCognitoBridge {
            override func onSignIn(flutterResult: @escaping FlutterResult, request: FlutterSignInRequest) {
                let signInRes = Result<AuthSignInResult, AuthError>.success(
                    AuthSignInResult(nextStep:
                      AuthSignInStep.confirmSignInWithSMSMFACode(AuthCodeDeliveryDetails(destination: DeliveryDestination.sms(_phoneNumber)), ["foo": "bar"]))
                )
                let signInData = FlutterSignInResult(res: signInRes)
                flutterResult(signInData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: SignInMock())
        
        _options = ["email": _email]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "signIn", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
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
        
        class SignInMock: AuthCognitoBridge {
            override func onSignIn(flutterResult: @escaping FlutterResult, request: FlutterSignInRequest) {
                let signInRes = Result<AuthSignInResult, AuthError>.success(
                    AuthSignInResult(nextStep:
                          AuthSignInStep.resetPassword(["foo": "bar"]))
                )
                let signInData = FlutterSignInResult(res: signInRes)
                flutterResult(signInData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: SignInMock())
        
        _options = ["delivery": "resetPassword"]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "signIn", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterSignInResult {
                XCTAssertEqual( false, res.isSignedIn )
                XCTAssertEqual( "RESET_PASSWORD", res.signInStep)
                let additionalInfoJson = ((res.toJSON()["nextStep"] as! [String: Any])["additionalInfo"] as! [String: String])
                XCTAssertEqual("bar", additionalInfoJson["foo"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signInSuccessCustomChallenge() {
        
        class SignInMock: AuthCognitoBridge {
            override func onSignIn(flutterResult: @escaping FlutterResult, request: FlutterSignInRequest) {
                let signInRes = Result<AuthSignInResult, AuthError>.success(
                    AuthSignInResult(nextStep:
                      AuthSignInStep.confirmSignInWithCustomChallenge(["foo": "bar"]))
                )
                let signInData = FlutterSignInResult(res: signInRes)
                flutterResult(signInData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: SignInMock())
        
        _options = ["delivery": "confirmSignInWithCustomChallenge"]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "signIn", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterSignInResult {
                XCTAssertEqual( false, res.isSignedIn )
                XCTAssertEqual( "CONFIRM_SIGN_IN_WITH_CUSTOM_CHALLENGE", res.signInStep)
                let additionalInfoJson = ((res.toJSON()["nextStep"] as! [String: Any])["additionalInfo"] as! [String: String])
                XCTAssertEqual("bar", additionalInfoJson["foo"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signInSuccessNewPassword() {
        
        class SignInMock: AuthCognitoBridge {
            override func onSignIn(flutterResult: @escaping FlutterResult, request: FlutterSignInRequest) {
                let signInRes = Result<AuthSignInResult, AuthError>.success(
                    AuthSignInResult(nextStep:
                      AuthSignInStep.confirmSignInWithNewPassword(["foo": "bar"]))
                )
                let signInData = FlutterSignInResult(res: signInRes)
                flutterResult(signInData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: SignInMock())
        
        _options = ["delivery": "confirmSignInWithNewPassword"]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "signIn", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterSignInResult {
                XCTAssertEqual( false, res.isSignedIn )
                XCTAssertEqual( "CONFIRM_SIGN_IN_WITH_NEW_PASSWORD", res.signInStep)
                let additionalInfoJson = ((res.toJSON()["nextStep"] as! [String: Any])["additionalInfo"] as! [String: String])
                XCTAssertEqual("bar", additionalInfoJson["foo"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signInSuccessDone() {
        
        class SignInMock: AuthCognitoBridge {
            override func onSignIn(flutterResult: @escaping FlutterResult, request: FlutterSignInRequest) {
                let signInRes = Result<AuthSignInResult, AuthError>.success(
                    AuthSignInResult(nextStep:
                      AuthSignInStep.done)
                )
                let signInData = FlutterSignInResult(res: signInRes)
                flutterResult(signInData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: SignInMock())
        
        _options = ["delivery": "done"]
        _data = [
            "username": _username,
            "password": _password,
            "options": _options
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "signIn", arguments: _args)
        plugin.handle( call, result: {(result)->Void in
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
        
        // Throws with username only
        XCTAssertThrowsError(try FlutterSignInRequest.validate(dict: rawData))
        
        // Throws with password only
        rawData = ["password": _password]
        XCTAssertThrowsError(try FlutterSignInRequest.validate(dict: rawData))
        
        // Succeeds with options only
        let rawOptions: Dictionary<String, Any> = ["foo": "bar"]
        rawData = ["options": rawOptions]
        XCTAssertNoThrow(try FlutterSignInRequest.validate(dict: rawData))

    }
    
    func test_signInError() {
        
        class SignInMock: AuthCognitoBridge {
            override func onSignIn(flutterResult: @escaping FlutterResult, request: FlutterSignInRequest) {
                let authError = AuthError.service("Reset password", MockErrorConstants.passwordResetRequired, AWSCognitoAuthError.passwordResetRequired)
                errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: SignInMock())
        
        _data = [
            "username": _username,
            "password": _password,
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "signIn", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
                   if let res = result as? FlutterError {
                      let details = res.details as? Dictionary<String, String>
                      XCTAssertEqual( "PasswordResetRequiredException", res.code )
                      XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.passwordResetRequired)", details?["underlyingException"])
                      XCTAssertEqual( MockErrorConstants.passwordResetRequired, details?["recoverySuggestion"])
                      XCTAssertEqual( "Reset password", details?["message"])
                   } else {
                       XCTFail()
                   }
               })
    }
    
    func test_confirmSignInSuccess() {
        
        class ConfirmSignInMock: AuthCognitoBridge {
            override func onConfirmSignIn(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignInRequest) {
                let confirmSignUpRes = Result<AuthSignInResult,AuthError>.success(AuthSignInResult(nextStep: AuthSignInStep.done))
                let signInData = FlutterSignInResult(res: confirmSignUpRes)
                flutterResult(signInData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: ConfirmSignInMock())
        
        _data = ["confirmationCode": _confirmationCode]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "confirmSignIn", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterSignInResult {
                XCTAssertEqual( true, res.isSignedIn )
                XCTAssertEqual( "DONE", res.signInStep)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_confirmSignInError() {
        
        class ConfirmSignInMock: AuthCognitoBridge {
            override func onConfirmSignIn(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignInRequest) {
                let authError = AuthError.service("Could not deliver code", MockErrorConstants.codeDeliveryError, AWSCognitoAuthError.codeDelivery)
                errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: ConfirmSignInMock())
        
        _data = ["confirmationCode": _confirmationCode]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "confirmSignIn", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
                   if let res = result as? FlutterError {
                      let details = res.details as? Dictionary<String, String>
                      XCTAssertEqual( "CodeDeliveryFailureException", res.code )
                      XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.codeDelivery)", details?["underlyingException"])
                      XCTAssertEqual( MockErrorConstants.codeDeliveryError, details?["recoverySuggestion"])
                      XCTAssertEqual( "Could not deliver code", details?["message"])
                   } else {
                       XCTFail()
                   }
               })
    }
    
    func test_confirmSignInValidation() {
        let rawOptions: Dictionary<String, Any> = ["foo": "bar"]
        var rawData: NSMutableDictionary = [:]
        
        // Throws with no confirmation code
        XCTAssertThrowsError(try FlutterConfirmSignInRequest.validate(dict: rawData))
        
        // Succeeds with options
        rawData = ["options": rawOptions]
        XCTAssertNoThrow(try FlutterConfirmSignInRequest.validate(dict: rawData))
    }
    
    func test_updatePasswordSuccess() {
        
        class UpdatePasswordMock: AuthCognitoBridge {
            override func onUpdatePassword(flutterResult: @escaping FlutterResult, request: FlutterUpdatePasswordRequest) {
                let emptyMap: Dictionary<String, Any> = [:]
                flutterResult(emptyMap)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: UpdatePasswordMock())
        
        _data = [
            "oldPassword": _oldPassword,
            "newPassword": _newPassword,
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "updatePassword", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
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
        
        // Throws without newpassword
        XCTAssertThrowsError(try FlutterUpdatePasswordRequest.validate(dict: rawData))

        // Throws without oldpassword
        rawData = ["newPassword": _newPassword]
        XCTAssertThrowsError(try FlutterUpdatePasswordRequest.validate(dict: rawData))

        // Succeeds with options
        rawData = ["options": rawOptions]
        XCTAssertNoThrow(try FlutterUpdatePasswordRequest.validate(dict: rawData))
    }
    
    func test_updatePasswordError() {
        
        class UpdatePasswordMock: AuthCognitoBridge {
            override func onUpdatePassword(flutterResult: @escaping FlutterResult, request: FlutterUpdatePasswordRequest) {
                let authError = AuthError.service("Invalid password", MockErrorConstants.invalidPasswordError, AWSCognitoAuthError.invalidPassword)
                errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)

            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: UpdatePasswordMock())
        
        _data = [
            "oldPassword": _oldPassword,
            "newPassword": _newPassword,
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "updatePassword", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterError {
                let details = res.details as? Dictionary<String, String>
                XCTAssertEqual( "InvalidPasswordException", res.code )
                XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.invalidPassword)", details?["underlyingException"])
                XCTAssertEqual( MockErrorConstants.invalidPasswordError, details?["recoverySuggestion"])
                XCTAssertEqual( "Invalid password", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_resetPasswordSuccess() {
        
        class ResetPasswordMock: AuthCognitoBridge {
            override func onResetPassword(flutterResult: @escaping FlutterResult, request: FlutterResetPasswordRequest) {
                let resetRes = Result<AuthResetPasswordResult,AuthError>.success(
                   AuthResetPasswordResult(
                       isPasswordReset: true,
                       nextStep: AuthResetPasswordStep.confirmResetPasswordWithCode(
                           AuthCodeDeliveryDetails(destination: DeliveryDestination.email("test@test.com")),
                           nil)
                   )
                 )
                 let resetData = FlutterResetPasswordResult(res: resetRes)
                 flutterResult(resetData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: ResetPasswordMock())
        
        _data = ["username": _username]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "resetPassword", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
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
        
        // Throws with no args
        XCTAssertThrowsError(try FlutterResetPasswordRequest.validate(dict: rawData))
        
        // Succeeds with options
        let rawOptions: Dictionary<String, Any> = ["foo": "bar"]
        rawData = ["options": rawOptions]
        XCTAssertNoThrow(try FlutterResetPasswordRequest.validate(dict: rawData))
    }
    
    func test_resetPasswordError() {
        
        class ResetPasswordMock: AuthCognitoBridge {
            override func onResetPassword(flutterResult: @escaping FlutterResult, request: FlutterResetPasswordRequest) {
                let authError = AuthError.service("Invalid password", MockErrorConstants.invalidPasswordError, AWSCognitoAuthError.invalidPassword)
                errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: ResetPasswordMock())
        
        _data = ["username": _username]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "resetPassword", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterError {
                let details = res.details as? Dictionary<String, String>
                XCTAssertEqual( "InvalidPasswordException", res.code )
                XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.invalidPassword)", details?["underlyingException"])
                XCTAssertEqual( MockErrorConstants.invalidPasswordError, details?["recoverySuggestion"])
                XCTAssertEqual( "Invalid password", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_confirmPasswordSuccess() {
        
        class ConfirmPasswordMock: AuthCognitoBridge {
            override func onConfirmPassword(flutterResult: @escaping FlutterResult, request: FlutterConfirmPasswordRequest) {
                let emptyMap: Dictionary<String, Any> = [:]
                flutterResult(emptyMap)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: ConfirmPasswordMock())
        
        _data = [
            "username": _username,
            "newPassword": _newPassword,
            "confirmationCode": _confirmationCode
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "confirmPassword", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? Dictionary<String, Any> {
                XCTAssertEqual( 0, res.count )
            } else {
                XCTFail()
            }
        })
    }
    
    func test_confirmPasswordValidation() {
        var rawData: NSMutableDictionary = ["username": _username, "confirmationCode" : _confirmationCode]
        
        // Throws with no password
        XCTAssertThrowsError(try FlutterConfirmPasswordRequest.validate(dict: rawData))

        // Throws with no username
        rawData = ["newPassword": _newPassword, "confirmationCode" : _confirmationCode]
        XCTAssertThrowsError(try FlutterConfirmPasswordRequest.validate(dict: rawData))

        // Throws without code
        rawData = ["newPassword": _newPassword, "username" : _username]
        XCTAssertThrowsError(try FlutterConfirmPasswordRequest.validate(dict: rawData))

        // Succeeds with required params
        rawData = ["newPassword": _newPassword, "username" : _username, "confirmationCode" : _confirmationCode]
        XCTAssertNoThrow(try FlutterConfirmPasswordRequest.validate(dict: rawData))
    }
    
    func test_confirmPasswordError() {
        
        class ConfirmPasswordMock: AuthCognitoBridge {
            override func onConfirmPassword(flutterResult: @escaping FlutterResult, request: FlutterConfirmPasswordRequest) {
                let authError = AuthError.service("Invalid parameter", MockErrorConstants.invalidParameterError, AWSCognitoAuthError.invalidParameter)
                errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: ConfirmPasswordMock())
        
        _data = [
            "username": _username,
            "newPassword": _newPassword,
            "confirmationCode": _confirmationCode
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "confirmPassword", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterError {
                let details = res.details as? Dictionary<String, String>
                XCTAssertEqual( "InvalidParameterException", res.code )
                XCTAssertEqual( "Optional(AmplifyPlugins.AWSCognitoAuthError.invalidParameter)", details?["underlyingException"])
                XCTAssertEqual( MockErrorConstants.invalidParameterError, details?["recoverySuggestion"])
                XCTAssertEqual( "Invalid parameter", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signOutSuccess() {
        
        class SignOutMock: AuthCognitoBridge {
            override func onSignOut(flutterResult: @escaping FlutterResult, request: FlutterSignOutRequest) {
                let emptyMap: Dictionary<String, Any> = [:]
                flutterResult(emptyMap)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: SignOutMock())
        
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "signOut", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? Dictionary<String, Any> {
                XCTAssertEqual( 0, res.count )
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signOutError() {
        
        class SignOutMock: AuthCognitoBridge {
            override func onSignOut(flutterResult: @escaping FlutterResult, request: FlutterSignOutRequest) {
                let authError = AuthError.invalidState("Invalid state", MockErrorConstants.invalidStateError, nil)
                errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: SignOutMock())
        
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "signOut", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterError {
                let details = res.details as? Dictionary<String, String>
                XCTAssertEqual( "AuthException", res.code )
                XCTAssertEqual( "nil", details?["underlyingException"])
                XCTAssertEqual( MockErrorConstants.invalidStateError, details?["recoverySuggestion"])
                XCTAssertEqual( "Invalid state", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_getCurrentUserSuccess() {
        
        class CurrentUserMock: AuthCognitoBridge {
            override func onGetCurrentUser(flutterResult: @escaping FlutterResult) {
                struct TestUser: AuthUser {
                      public var username: String
                      public var userId: String

                }
                let resetRes = TestUser(username: _username, userId: _userId)
                let resetData = FlutterAuthUserResult(res: resetRes)
                flutterResult(resetData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: CurrentUserMock())
        
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "getCurrentUser" , arguments: _args)
        plugin.handle(call, result: {(result)->Void in
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
        
        class CurrentUserMock: AuthCognitoBridge {
            override func onGetCurrentUser(flutterResult: @escaping FlutterResult) {
                let authError = AuthError.invalidState("Invalid state",  MockErrorConstants.invalidStateError, nil)
                errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)
            }
        }
        
        
        
        plugin = SwiftAuthCognito.init(cognito: CurrentUserMock())
        
        let call = FlutterMethodCall(methodName: "getCurrentUser", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterError {
                let details = res.details as? Dictionary<String, String>
                XCTAssertEqual( "AuthException", res.code )
                XCTAssertEqual( "nil", details?["underlyingException"])
                XCTAssertEqual( MockErrorConstants.invalidStateError, details?["recoverySuggestion"])
                XCTAssertEqual( "Invalid state", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_fetchCognitoSessionSuccess() {
        
        class FetchSessionMock: AuthCognitoBridge {
            override func onFetchSession(flutterResult: @escaping FlutterResult, request: FlutterFetchSessionRequest) {
                let creds = FakeCredentials(accessKey: _accessKey, secretKey: _secretKey)
                let tokens = FakeTokens(idToken: _idToken, accessToken: _accessToken, refreshToken: _refreshToken)
                let authSession = FakeCognitoSession(
                    isSignedIn: true,
                    userSubResult: .success("testsub"),
                    identityIdResult: .success("testid"),
                    awsCredentialsResult:  Result<AuthAWSCredentials, AuthError>.success(creds),
                    cognitoTokensResult: Result<AuthCognitoTokens, AuthError>.success(tokens)
                )
                let sessionData = Result<AuthSession,AuthError>.success(authSession)
                do {
                  let fetchSessionData = try FlutterFetchCognitoSessionResult(res: sessionData)
                  flutterResult(fetchSessionData)
                } catch {
                    errorHandler.handleAuthError(authError: error as! AuthError, flutterResult: flutterResult)
                }
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: FetchSessionMock())
        
        _options = ["getAWSCredentials": true]
        _data = ["options": _options]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "fetchAuthSession", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
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
        
        class FetchSessionMock: AuthCognitoBridge {
            override func onFetchSession(flutterResult: @escaping FlutterResult, request: FlutterFetchSessionRequest) {
                let authSession = FakeSession(isSignedIn: true)
                let sessionData = Result<AuthSession,AuthError>.success(authSession)
                do {
                  let signUpData = try FlutterFetchSessionResult(res: sessionData)
                  flutterResult(signUpData)
                } catch {
                    errorHandler.handleAuthError(authError: error as! AuthError, flutterResult: flutterResult)
                }
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: FetchSessionMock())
        
        _options = ["getAWSCredentials": false]
        _data = ["options": _options]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "fetchAuthSession", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
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
        class FetchSessionMock: AuthCognitoBridge {
            override func onFetchSession(flutterResult: @escaping FlutterResult, request: FlutterFetchSessionRequest) {
                let authSession = FakeSession(isSignedIn: true)
                let sessionData = Result<AuthSession,AuthError>.success(authSession)
                do {
                  let signUpData = try FlutterFetchSessionResult(res: sessionData)
                  flutterResult(signUpData)
                } catch {
                    errorHandler.handleAuthError(authError: error as! AuthError, flutterResult: flutterResult)
                }
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: FetchSessionMock())
        
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "fetchAuthSession", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterFetchSessionResult {
                XCTAssertEqual(true, res.isSignedIn)
                XCTAssertEqual(true, res.toJSON()["isSignedIn"] as? Bool)
                XCTAssertEqual(1, res.toJSON().count)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_guestAccess() {
        class FetchSessionMock: AuthCognitoBridge {
            override func onFetchSession(flutterResult: @escaping FlutterResult, request: FlutterFetchSessionRequest) {
                let authError = AuthError.signedOut("", "")
                let creds = FakeCredentials(accessKey: _accessKey, secretKey: _secretKey)
                let authSession = FakeCognitoSession(
                    isSignedIn: false,
                    // guest access should result in userSub failure (i.e. no UserPool User)
                    userSubResult: .failure(authError),
                    identityIdResult: .success("testid"),
                    awsCredentialsResult:  Result<AuthAWSCredentials, AuthError>.success(creds),
                    // guest access should result in cognito tokens failure (i.e. no UserPool User)
                    cognitoTokensResult: Result<AuthCognitoTokens, AuthError>.failure(authError)
                )
                let sessionData = Result<AuthSession,AuthError>.success(authSession)
                do {
                    let fetchSessionData = try FlutterFetchCognitoSessionResult(res: sessionData)
                    flutterResult(fetchSessionData)
                } catch {
                    errorHandler.handleAuthError(authError: error as! AuthError, flutterResult: flutterResult)
                }
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: FetchSessionMock())
        
        _options = ["getAWSCredentials": false]
        _data = ["options": _options]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "fetchAuthSession", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterFetchCognitoSessionResult {
                XCTAssertEqual(false, res.toJSON()["isSignedIn"] as? Bool)
                XCTAssertEqual("testid", res.toJSON()["identityId"] as? String)
                // userSub error will result in map with one 'error' key
                XCTAssertEqual(1, (res.toJSON()["tokens"] as?  [String: String])!.count)
                // credentials map should have access key and secret key
                XCTAssertEqual(2, (res.toJSON()["credentials"] as?  [String: String])!.count)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_UserPoolOnly() {
        class FetchSessionMock: AuthCognitoBridge {
            override func onFetchSession(flutterResult: @escaping FlutterResult, request: FlutterFetchSessionRequest) {
                let authError = AuthError.service("", "", AWSCognitoAuthError.invalidAccountTypeException)
                let tokens = FakeTokens(idToken: _idToken, accessToken: _accessToken, refreshToken: _refreshToken)
                let authSession = FakeCognitoSession(
                    isSignedIn: true,
                    userSubResult: .success("testsub"),
                    identityIdResult: .failure(authError),
                    awsCredentialsResult:  Result<AuthAWSCredentials, AuthError>.failure(authError),
                    cognitoTokensResult: Result<AuthCognitoTokens, AuthError>.success(tokens)
                )
                let sessionData = Result<AuthSession,AuthError>.success(authSession)
                do {
                  let fetchSessionData = try FlutterFetchCognitoSessionResult(res: sessionData)
                  flutterResult(fetchSessionData)
                } catch {
                    errorHandler.handleAuthError(authError: error as! AuthError, flutterResult: flutterResult)
                }
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: FetchSessionMock())
        
        _options = ["getAWSCredentials": false]
        _data = ["options": _options]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "fetchAuthSession", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterFetchCognitoSessionResult {
                XCTAssertEqual(true, res.toJSON()["isSignedIn"] as? Bool)
                // no identity pool will result in nil identityId
                XCTAssertEqual(nil, res.toJSON()["identityId"] as? String)
                // all tokens should be present with userpool-only access
                XCTAssertEqual(3, (res.toJSON()["tokens"] as?  [String: String])!.count)
                // credentials map should be empty
                XCTAssertEqual(0, (res.toJSON()["credentials"] as?  [String: String])!.count)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signInWithWebUI() {
        class SignInWithWebUIMock: AuthCognitoBridge {
            override func onSignInWithWebUI(flutterResult: @escaping FlutterResult) {
                let signInRes = Result<AuthSignInResult,AuthError>.success(
                    AuthSignInResult(nextStep: AuthSignInStep.done)
                 )
                 let signInData = FlutterSignInResult(res: signInRes)
                 flutterResult(signInData)
            }
        }

        plugin = SwiftAuthCognito.init(cognito: SignInWithWebUIMock())

        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "signInWithWebUI", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterSignInResult {
                XCTAssertEqual( "DONE", res.signInStep)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signInWithSocialWebUI() {
        class SignInWithSocialWebUIMock: AuthCognitoBridge {
            override func onSignInWithSocialWebUI(flutterResult: @escaping FlutterResult, request:  FlutterSignInWithWebUIRequest) {
                let signInRes = Result<AuthSignInResult,AuthError>.success(
                    AuthSignInResult(nextStep: AuthSignInStep.done)
                 )
                 let signInData = FlutterSignInResult(res: signInRes)
                 flutterResult(signInData)
            }
        }

        plugin = SwiftAuthCognito.init(cognito: SignInWithSocialWebUIMock())
        
        _data = ["authProvider": "login_with_amazon"]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "signInWithWebUI", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterSignInResult {
                XCTAssertEqual( "DONE", res.signInStep)
            } else {
                XCTFail()
            }
        })
    }
}
