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
@testable import amplify_auth_cognito_ios

// Test Data
var _data: NSMutableDictionary = [:]
var _args: Dictionary<String, Any> = [:]
var _attributes: Dictionary<String, String> = [:]
var _attributeArray: Array<Dictionary<String, String>> = []
var _attribute: Dictionary<String, Any> = [:]
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
                XCTAssertEqual( "CONFIRM_SIGN_UP_STEP_NOT", res.signUpStep)
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
    
    func test_signUpSuccessNoOptions() {
        
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
        _data = [
            "username": _username,
            "password": _password,
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
    
    func test_signUpValidation() {
        let rawOptions: Dictionary<String, Any> = ["foo": "bar"]
        var rawData: NSMutableDictionary = ["options":rawOptions]
        
        // Throws with no password
        XCTAssertThrowsError(try FlutterSignUpRequest.validate(dict: rawData))

        // Does not thow an error with valid parameters
        rawData = ["password": _password]
        XCTAssertNoThrow(try FlutterSignUpRequest.validate(dict: rawData))
    }
    
    func test_signUpWithUserAttributes() {
        let rawAttributes: Dictionary<String, Any> = ["email": _email, "customAttribute": "female"]
        let rawOptions: Dictionary<String, Any> = ["userAttributes": rawAttributes]
        let rawData: NSMutableDictionary = ["options":rawOptions, "username": _username, "password": _password]
        let request = FlutterSignUpRequest(dict: rawData);
        XCTAssertEqual(2, request.options?.userAttributes?.count)
    }
    
    func test_signUpWithClientMetadata() {
        let metadata: Dictionary<String, Any> = ["attribute": "value"]
        let rawOptions: Dictionary<String, Any> = ["clientMetadata": metadata]
        let rawData: NSMutableDictionary = ["options":rawOptions, "username": _username, "password": _password]
        let request = FlutterSignUpRequest(dict: rawData);
        let options = request.options?.pluginOptions as! AWSAuthSignUpOptions
        XCTAssertEqual("value", options.metadata!["attribute"])
        XCTAssertNil(options.validationData)
    }
    
    func test_signUpWithValidationdata() {
        let validationData: Dictionary<String, Any> = ["attribute": "value"]
        let rawOptions: Dictionary<String, Any> = ["validationData": validationData]
        let rawData: NSMutableDictionary = ["options":rawOptions, "username": _username, "password": _password]
        let request = FlutterSignUpRequest(dict: rawData);
        let options = request.options?.pluginOptions as! AWSAuthSignUpOptions
        XCTAssertEqual("value", options.validationData!["attribute"])
        XCTAssertNil(options.metadata)
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
                XCTAssert( ((details?["underlyingException"])! as String).contains(MockErrorTemplate))
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
                XCTAssert( ((details?["underlyingException"])! as String).contains(MockErrorTemplate))
                XCTAssertEqual( MockErrorConstants.codeExpiredError, details?["recoverySuggestion"])
                XCTAssertEqual( "Code expired", details?["message"])
            } else {
                XCTFail()
            }
        })
    }

    func test_confirmSignUpForwardOptions() {
        let mockOptions: Dictionary<String, Any> = ["clientMetadata": ["key": "value"]]
        func mockResult (args: Optional<Any>) {}

        class ConfirmSignUpMock: AuthCognitoBridge {
            override func onConfirmSignUp(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignUpRequest){
                let options = request.options?.pluginOptions as! AWSAuthConfirmSignUpOptions
                XCTAssertEqual(options.metadata, ["key": "value"])
                flutterResult(true)
            }
        }

        plugin = SwiftAuthCognito.init(cognito: ConfirmSignUpMock())

        _data = [
            "username": _username,
            "confirmationCode": _confirmationCode,
            "options": mockOptions
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "confirmSignUp", arguments: _args)
        plugin.handle(call, result: mockResult)
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
    
    func test_resendSignUpCodeRequestWithClientMetadata() {
        let metadata: Dictionary<String, Any> = ["attribute": "value"]
        let rawOptions: Dictionary<String, Any> = ["clientMetadata": metadata]
        let rawData: NSMutableDictionary = [
            "username": _username,
            "options": rawOptions
        ]
        let request = FlutterResendSignUpCodeRequest(dict: rawData);
        let options = request.options?.pluginOptions as! AWSAuthResendSignUpCodeOptions
        XCTAssertEqual("value", options.metadata!["attribute"])
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
                      XCTAssert( ((details?["underlyingException"])! as String).contains(MockErrorTemplate))
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
    
    func test_signInOptions() {
        let metadata: Dictionary<String, Any> = ["attribute": "value"]
        let rawOptions: Dictionary<String, Any> = ["clientMetadata": metadata, "authFlowType": "customAuth"]
        let rawData: NSMutableDictionary = [
            "username": _username,
            "options": rawOptions
        ]
        let request = FlutterSignInRequest(dict: rawData);
        let options = request.options?.pluginOptions as! AWSAuthSignInOptions
        XCTAssertEqual("value", options.metadata!["attribute"])
        XCTAssertEqual(AuthFlowType.custom, options.authFlowType)
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
    
    func test_signInSuccessWithOptionsDone() {
        
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
        
        _options = ["clientMetadata": ["key": "value"]]
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
                      XCTAssert( ((details?["underlyingException"])! as String).contains(MockErrorTemplate))
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
                      XCTAssert( ((details?["underlyingException"])! as String).contains(MockErrorTemplate))
                      XCTAssertEqual( MockErrorConstants.codeDeliveryError, details?["recoverySuggestion"])
                      XCTAssertEqual( "Could not deliver code", details?["message"])
                   } else {
                       XCTFail()
                   }
               })
    }
    
    func test_confirmSignInValidationOptions() {
        let rawData: NSMutableDictionary = ["confirmationCode": _confirmationCode]
        let rawOptions: Dictionary<String, Any> = [
            "clientMetadata" : ["foo": "bar"],
            "userAttributes": ["email": "test@test.test"]
        ]
        rawData["options"] = rawOptions
        XCTAssertNoThrow(try FlutterConfirmSignInRequest.validate(dict: rawData))
        let req = FlutterConfirmSignInRequest(dict: rawData)
        let options = (req.options?.pluginOptions as! AWSAuthConfirmSignInOptions)
        XCTAssertEqual(options.metadata, ["foo": "bar"])
        XCTAssertEqual(options.userAttributes?[0].key, .email)
        XCTAssertEqual(options.userAttributes?[0].value, "test@test.test")
    }
    
    func test_confirmSignInValidationNoOptions() {
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
                XCTAssert( ((details?["underlyingException"])! as String).contains(MockErrorTemplate))
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
    
    func test_resetPasswordRequestWithClientMetadata() {
        let metadata: Dictionary<String, Any> = ["attribute": "value"]
        let rawOptions: Dictionary<String, Any> = ["clientMetadata": metadata]
        let rawData: NSMutableDictionary = ["username": _username, "options": rawOptions]
        let request = FlutterResetPasswordRequest(dict: rawData);
        let options = request.options?.pluginOptions as! AWSAuthResetPasswordOptions
        XCTAssertEqual("value", options.metadata!["attribute"])
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
                XCTAssert( ((details?["underlyingException"])! as String).contains(MockErrorTemplate))
                XCTAssertEqual( MockErrorConstants.invalidPasswordError, details?["recoverySuggestion"])
                XCTAssertEqual( "Invalid password", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_confirmResetPasswordSuccess() {
        
        class ConfirmResetPasswordMock: AuthCognitoBridge {
            override func onConfirmResetPassword(flutterResult: @escaping FlutterResult, request: FlutterConfirmResetPasswordRequest) {
                let emptyMap: Dictionary<String, Any> = [:]
                flutterResult(emptyMap)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: ConfirmResetPasswordMock())
        
        _data = [
            "username": _username,
            "newPassword": _newPassword,
            "confirmationCode": _confirmationCode
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "confirmResetPassword", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? Dictionary<String, Any> {
                XCTAssertEqual( 0, res.count )
            } else {
                XCTFail()
            }
        })
    }
    
    func test_confirmResetPasswordRequestWithClientMetadata() {
        let metadata: Dictionary<String, Any> = ["attribute": "value"]
        let rawOptions: Dictionary<String, Any> = ["clientMetadata": metadata]
        let rawData: NSMutableDictionary = [
            "username": _username,
            "newPassword": _newPassword,
            "confirmationCode": _confirmationCode,
            "options": rawOptions
        ]
        let request = FlutterConfirmResetPasswordRequest(dict: rawData);
        let options = request.options?.pluginOptions as! AWSAuthConfirmResetPasswordOptions
        XCTAssertEqual("value", options.metadata!["attribute"])
    }
    
    func test_confirmResetPasswordValidation() {
        var rawData: NSMutableDictionary = ["username": _username, "confirmationCode" : _confirmationCode]
        
        // Throws with no password
        XCTAssertThrowsError(try FlutterConfirmResetPasswordRequest.validate(dict: rawData))

        // Throws with no username
        rawData = ["newPassword": _newPassword, "confirmationCode" : _confirmationCode]
        XCTAssertThrowsError(try FlutterConfirmResetPasswordRequest.validate(dict: rawData))

        // Throws without code
        rawData = ["newPassword": _newPassword, "username" : _username]
        XCTAssertThrowsError(try FlutterConfirmResetPasswordRequest.validate(dict: rawData))

        // Succeeds with required params
        rawData = ["newPassword": _newPassword, "username" : _username, "confirmationCode" : _confirmationCode]
        XCTAssertNoThrow(try FlutterConfirmResetPasswordRequest.validate(dict: rawData))
    }
    
    func test_confirmResetPasswordError() {
        
        class ConfirmResetPasswordMock: AuthCognitoBridge {
            override func onConfirmResetPassword(flutterResult: @escaping FlutterResult, request: FlutterConfirmResetPasswordRequest) {
                let authError = AuthError.service("Invalid parameter", MockErrorConstants.invalidParameterError, AWSCognitoAuthError.invalidParameter)
                errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: ConfirmResetPasswordMock())
        
        _data = [
            "username": _username,
            "newPassword": _newPassword,
            "confirmationCode": _confirmationCode
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "confirmResetPassword", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterError {
                let details = res.details as? Dictionary<String, String>
                XCTAssertEqual( "InvalidParameterException", res.code )
                XCTAssert( ((details?["underlyingException"])! as String).contains(MockErrorTemplate))
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
    
    func test_signOutGlobalSuccess() {
        
        class SignOutMock: AuthCognitoBridge {
            var globalSignOutExpectation = false
            override func onSignOut(flutterResult: @escaping FlutterResult, request: FlutterSignOutRequest) {
                globalSignOutExpectation = request.options!.globalSignOut
                let emptyMap: Dictionary<String, Any> = [:]
                flutterResult(emptyMap)
            }
        }
        
        let signOutMock = SignOutMock()
        plugin = SwiftAuthCognito.init(cognito: signOutMock)
        
        _data = [
            "options": [
                "globalSignOut": true
            ]
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "signOut", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? Dictionary<String, Any> {
                XCTAssertEqual( 0, res.count )
            } else {
                XCTFail()
            }
        })
        
        XCTAssertTrue(signOutMock.globalSignOutExpectation)

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
                XCTAssertEqual( "InvalidStateException", res.code )
                XCTAssertEqual( nil, details?["underlyingException"])
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
                XCTAssertEqual( "InvalidStateException", res.code )
                XCTAssertEqual( nil, details?["underlyingException"])
                XCTAssertEqual( MockErrorConstants.invalidStateError, details?["recoverySuggestion"])
                XCTAssertEqual( "Invalid state", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_fetchUserAttributesSuccess() {
        
        class FetchAttributesMock: AuthCognitoBridge {
            override func onFetchUserAttributes(flutterResult: @escaping FlutterResult) {
                let attributeData: [AuthUserAttribute] = [AuthUserAttribute(.email, value: "test@test.com")]
                let attributeResult = FlutterFetchUserAttributesResult(res: attributeData)
                flutterResult(attributeResult)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: FetchAttributesMock())
        
        let list = [AuthUserAttribute(.email, value: "test@test.com")]
        let serializedList: [Dictionary<String, Any>] = list.map { (attr) -> [String: Any] in
            return ["key": attr.key.rawValue, "value": attr.value]
        }

        
        _data = [:]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "fetchUserAttributes", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterFetchUserAttributesResult {
                XCTAssertEqual( 1, res.attributes.count )
                XCTAssertEqual( res.attributes[0].key, .email )
                XCTAssertEqual( res.attributes[0].value, "test@test.com" )
                XCTAssertEqual( res.toList().count, serializedList.count)
                XCTAssertEqual( (res.toList()[0] as Dictionary)["key"] as! String, "email")
                XCTAssertEqual( (res.toList()[0] as Dictionary)["value"] as! String, "test@test.com")
            } else {
                XCTFail()
            }
        })
    }
    
    func test_fetchUserAttributesSerialization() {
        let attr = AuthUserAttribute(AuthUserAttributeKey.email, value: "test@test.com")
        let res = FlutterFetchUserAttributesResult(res: [attr]).toList()

        XCTAssertEqual(1, res.count)
        XCTAssertEqual("email", res[0]["key"] as! String)
        XCTAssertEqual("test@test.com", res[0]["value"] as! String)
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
                XCTAssertNil(res.toJSON()["tokens"] as?  [String: String])
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
                XCTAssertNil(res.toJSON()["credentials"] as?  [String: String])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_signInWithWebUI() {
        class SignInWithWebUIMock: AuthCognitoBridge {
            override func onSignInWithWebUI(flutterResult: @escaping FlutterResult, request: FlutterSignInWithWebUIRequest) {
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
        
        _data = ["authProvider": "amazon"]
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


    func test_updateUserAttributeStandard() {
        
        class UpdateUserAttributeMock: AuthCognitoBridge {
            override func onUpdateUserAttribute(flutterResult: @escaping FlutterResult, request: FlutterUpdateUserAttributeRequest){
                let updateUserAttributeRes = Result<AuthUpdateAttributeResult,AuthError>.success(AuthUpdateAttributeResult(isUpdated: true, nextStep: AuthUpdateAttributeStep.done))
                let updateUserAttributeData = FlutterUpdateUserAttributeResult(res: updateUserAttributeRes)
                flutterResult(updateUserAttributeData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: UpdateUserAttributeMock())
        
        _attribute = [
            "userAttributeKey" : "email",
            "value": _email
        ]
        _data = [
            "attribute": _attribute,
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "updateUserAttribute", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterUpdateUserAttributeResult {
                let isUpdated = res.toJSON()["isUpdated"] as! Bool
                let nextStep = res.toJSON()["nextStep"] as! Dictionary<String, Any>
                let updateAttributeStep = nextStep["updateAttributeStep"] as! String
                XCTAssertEqual( true, isUpdated)
                XCTAssertEqual( "DONE", updateAttributeStep)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_updateUserAttributeCustom() {
        
        class UpdateUserAttributeMock: AuthCognitoBridge {
            override func onUpdateUserAttribute(flutterResult: @escaping FlutterResult, request: FlutterUpdateUserAttributeRequest){
                let updateUserAttributeRes = Result<AuthUpdateAttributeResult,AuthError>.success(AuthUpdateAttributeResult(isUpdated: true, nextStep: AuthUpdateAttributeStep.done))
                let updateUserAttributeData = FlutterUpdateUserAttributeResult(res: updateUserAttributeRes)
                flutterResult(updateUserAttributeData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: UpdateUserAttributeMock())
        
        _attribute = [
            "userAttributeKey" : "my_custom_attribute",
            "value": "custom attribute value"
        ]
        _data = [
            "attribute": _attribute,
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "updateUserAttribute", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterUpdateUserAttributeResult {
                let isUpdated = res.toJSON()["isUpdated"] as! Bool
                let nextStep = res.toJSON()["nextStep"] as! Dictionary<String, Any>
                let updateAttributeStep = nextStep["updateAttributeStep"] as! String
                XCTAssertEqual( true, isUpdated)
                XCTAssertEqual( "DONE", updateAttributeStep)

            } else {
                XCTFail()
            }
        })
    }
    
    func test_updateUserAttributeRequestWithClientMetadata() {
        let metadata: Dictionary<String, Any> = ["attribute": "value"]
        let rawOptions: Dictionary<String, Any> = ["clientMetadata": metadata]
        let attribute: Dictionary<String, Any> = [
            "userAttributeKey" : "email",
            "value": _email
        ]
        let rawData: NSMutableDictionary = [
            "attribute": attribute,
            "options": rawOptions
        ]
        let request = FlutterUpdateUserAttributeRequest(dict: rawData);
        let options = request.options?.pluginOptions as! AWSUpdateUserAttributeOptions
        XCTAssertEqual("value", options.metadata!["attribute"])
    }
    
    func test_updateUserAttributeValidation() {
        var rawAttribute: Dictionary<String, Any>
        var rawData: NSMutableDictionary
        
        // Throws an error with no attribute
        rawData = [:]
        XCTAssertThrowsError(try FlutterUpdateUserAttributeRequest.validate(dict: rawData))
        
        // Throws an error with no attribute key
        rawAttribute = [
            "value": _email
        ]
        rawData = ["attribute": rawAttribute]
        XCTAssertThrowsError(try FlutterUpdateUserAttributeRequest.validate(dict: rawData))
        
        // Throws an error with no attribute value
        rawAttribute = [
            "userAttributeKey": "email",
        ]
        rawData = ["attribute": rawAttribute]
        XCTAssertThrowsError(try FlutterUpdateUserAttributeRequest.validate(dict: rawData))

        // Throws an error with non string value
        rawAttribute = [
            "userAttributeKey": "email",
            "value": 1
        ]
        rawData = ["attribute": rawAttribute]
        XCTAssertThrowsError(try FlutterUpdateUserAttributeRequest.validate(dict: rawData))
        
        // Does not throw an error with valid parameters
        rawAttribute = [
            "userAttributeKey": "email",
            "value": _email
        ]
        rawData = ["attribute": rawAttribute]
        XCTAssertNoThrow(try FlutterUpdateUserAttributeRequest.validate(dict: rawData))

    }
    
    func test_updateUserAttributeError() {

        class UpdateUserAttributeMock: AuthCognitoBridge {
            override func onUpdateUserAttribute(flutterResult: @escaping FlutterResult, request: FlutterUpdateUserAttributeRequest) {
                let authError = AuthError.service("Invalid parameter", MockErrorConstants.invalidParameterError, AWSCognitoAuthError.invalidParameter)
                errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)
            }
        }

        plugin = SwiftAuthCognito.init(cognito: UpdateUserAttributeMock())

        _attribute = [
            "userAttributeKey" : "email",
            "value": _email
        ]
        _data = [
            "attribute": _attribute,
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "updateUserAttribute", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterError {
                let details = res.details as? Dictionary<String, String>
                XCTAssertEqual( "InvalidParameterException", res.code )
                XCTAssert( ((details?["underlyingException"])! as String).contains(MockErrorTemplate))
                XCTAssertEqual( MockErrorConstants.invalidParameterError, details?["recoverySuggestion"])
                XCTAssertEqual( "Invalid parameter", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_updateUserAttributes() {
        
        class UpdateUserAttributesMock: AuthCognitoBridge {
            override func onUpdateUserAttributes(flutterResult: @escaping FlutterResult, request: FlutterUpdateUserAttributesRequest){
                let updateUserAttributesSuccess = [
                    AuthUserAttributeKey.email: AuthUpdateAttributeResult(isUpdated: true, nextStep: AuthUpdateAttributeStep.done),
                    AuthUserAttributeKey.name: AuthUpdateAttributeResult(isUpdated: true, nextStep: AuthUpdateAttributeStep.done)
                ]
                let updateUserAttributesRes = Result<Dictionary<AuthUserAttributeKey, AuthUpdateAttributeResult>,AuthError>.success(updateUserAttributesSuccess)
                let updateUserAttributesData = FlutterUpdateUserAttributesResult(res: updateUserAttributesRes)
                flutterResult(updateUserAttributesData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: UpdateUserAttributesMock())
        
        _attributeArray = [
            [
                "userAttributeKey" : "email",
                "value": _email
            ],
            [
                "userAttributeKey" : "name",
                "value": "testname"
            ]
        ]
        _data = [
            "attributes": _attributeArray,
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "updateUserAttributes", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterUpdateUserAttributesResult {
                let jsonRes = res.toJSON()
                let emailRes = jsonRes["email"] as! Dictionary<String, Any>
                let emailNextStep = emailRes["nextStep"] as! Dictionary<String, Any>
                let nameRes = jsonRes["name"] as! Dictionary<String, Any>
                let nameNextStep = emailRes["nextStep"] as! Dictionary<String, Any>
                XCTAssertEqual( true, emailRes["isUpdated"] as! Bool)
                XCTAssertEqual( "DONE", emailNextStep["updateAttributeStep"] as! String)
                XCTAssertEqual( true, nameRes["isUpdated"] as! Bool)
                XCTAssertEqual( "DONE", nameNextStep["updateAttributeStep"] as! String)
            } else {
                XCTFail()
            }
        })
    }
    
    func test_updateUserAttributesRequestWithClientMetadata() {
        let metadata: Dictionary<String, Any> = ["attribute": "value"]
        let rawOptions: Dictionary<String, Any> = ["clientMetadata": metadata]
        let attributes = [
            [
                "userAttributeKey" : "email",
                "value": _email
            ],
            [
                "userAttributeKey" : "name",
                "value": "testname"
            ]
        ]
        let rawData: NSMutableDictionary = [
            "attributes": attributes,
            "options": rawOptions
        ]
        let request = FlutterUpdateUserAttributesRequest(dict: rawData);
        let options = request.options?.pluginOptions as! AWSUpdateUserAttributesOptions
        XCTAssertEqual("value", options.metadata!["attribute"])
    }
    
    func test_updateUserAttributesValidation() {
        var rawAttributes: Array<Dictionary<String, Any>>
        var rawAttributeOne: Dictionary<String, Any>
        var rawAttributeTwo: Dictionary<String, Any>
        var rawData: NSMutableDictionary
        
        // Throws an error with no attributes
        rawData = [:]
        XCTAssertThrowsError(try FlutterUpdateUserAttributesRequest.validate(dict: rawData))
        
        // Throws an error with no attribute key
        rawAttributeOne = [
            "value": _email
        ]
        rawAttributeTwo = [
            "userAttributeKey": "name",
            "value": "testname"
        ]
        rawAttributes = [rawAttributeOne, rawAttributeTwo]
        rawData = ["attributes": rawAttributes]
        XCTAssertThrowsError(try FlutterUpdateUserAttributesRequest.validate(dict: rawData))
        
        // Throws an error with no attribute value
        rawAttributeOne = [
            "userAttributeKey": "email",
        ]
        rawAttributeTwo = [
            "userAttributeKey": "name",
            "value": "testname"
        ]
        rawAttributes = [rawAttributeOne, rawAttributeTwo]
        rawData = ["attributes": rawAttributes]
        XCTAssertThrowsError(try FlutterUpdateUserAttributesRequest.validate(dict: rawData))
        
        // Throws an error with non string value
        rawAttributeOne = [
            "userAttributeKey": "email",
            "value": 1
        ]
        rawAttributeTwo = [
            "userAttributeKey": "name",
            "value": "testname"
        ]
        rawAttributes = [rawAttributeOne, rawAttributeTwo]
        rawData = ["attributes": rawAttributes]
        XCTAssertThrowsError(try FlutterUpdateUserAttributesRequest.validate(dict: rawData))
        
        // Does not throw an error with valid parameters
        rawAttributeOne = [
            "userAttributeKey": "email",
            "value": _email
        ]
        rawAttributeTwo = [
            "userAttributeKey": "name",
            "value": "testname"
        ]
        rawAttributes = [rawAttributeOne, rawAttributeTwo]
        rawData = ["attributes": rawAttributes]
        XCTAssertNoThrow(try FlutterUpdateUserAttributesRequest.validate(dict: rawData))
    }
    
    func test_updateUserAttributesError() {
        
        class UpdateUserAttributesMock: AuthCognitoBridge {
            override func onUpdateUserAttributes(flutterResult: @escaping FlutterResult, request: FlutterUpdateUserAttributesRequest) {
                let authError = AuthError.service("Invalid parameter", MockErrorConstants.invalidParameterError, AWSCognitoAuthError.invalidParameter)
                errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: UpdateUserAttributesMock())
        
        _attributeArray = [
            [
                "userAttributeKey" : "email",
                "value": _email
            ],
            [
                "userAttributeKey" : "name",
                "value": "testname"
            ]
        ]
        _data = [
            "attributes": _attributeArray,
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "updateUserAttributes", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterError {
                let details = res.details as? Dictionary<String, String>
                XCTAssertEqual( "InvalidParameterException", res.code )
                XCTAssert( ((details?["underlyingException"])! as String).contains(MockErrorTemplate))
                XCTAssertEqual( MockErrorConstants.invalidParameterError, details?["recoverySuggestion"])
                XCTAssertEqual( "Invalid parameter", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_confirmUserAttribute() {

        class ConfirmUserAttributeMock: AuthCognitoBridge {
            override func onConfirmUserAttribute(flutterResult: @escaping FlutterResult, request: FlutterConfirmUserAttributeRequest){
                let emptyMap: Dictionary<String, Any> = [:]
                flutterResult(emptyMap)
            }
        }

        plugin = SwiftAuthCognito.init(cognito: ConfirmUserAttributeMock())

        _data = [
            "userAttributeKey": "email",
            "confirmationCode": _confirmationCode,
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "confirmUserAttribute", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? Dictionary<String, Any> {
                XCTAssertEqual( 0, res.count )
            } else {
                XCTFail()
            }
        })
    }

    func test_confirmUserAttributeValidation() {
        var rawData: NSMutableDictionary

        // Throws with no email
        rawData = ["confirmationCode": _confirmationCode]
        XCTAssertThrowsError(try FlutterConfirmUserAttributeRequest.validate(dict: rawData))

        // Throws with no confirmation code
        rawData = ["userAttributeKey": "email"]
        XCTAssertThrowsError(try FlutterConfirmUserAttributeRequest.validate(dict: rawData))
        
        // Does not thow an error with valid parameters
        rawData = ["userAttributeKey": "email", "confirmationCode": _confirmationCode]
        XCTAssertNoThrow(try FlutterConfirmUserAttributeRequest.validate(dict: rawData))

    }
    
    func test_confirmUserAttributeError() {

        class ConfirmUserAttributeMock: AuthCognitoBridge {
            override func onConfirmUserAttribute(flutterResult: @escaping FlutterResult, request: FlutterConfirmUserAttributeRequest) {
                let authError = AuthError.service("Invalid parameter", MockErrorConstants.invalidParameterError, AWSCognitoAuthError.invalidParameter)
                errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)
            }
        }

        plugin = SwiftAuthCognito.init(cognito: ConfirmUserAttributeMock())

        _data = [
            "userAttributeKey": "email",
            "confirmationCode": _confirmationCode,
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "confirmUserAttribute", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterError {
                let details = res.details as? Dictionary<String, String>
                XCTAssertEqual( "InvalidParameterException", res.code )
                XCTAssert( ((details?["underlyingException"])! as String).contains(MockErrorTemplate))
                XCTAssertEqual( MockErrorConstants.invalidParameterError, details?["recoverySuggestion"])
                XCTAssertEqual( "Invalid parameter", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_resendUserAttributeConfirmationCode() {
        
        class ResendUserAttributeConfirmationCodeMock: AuthCognitoBridge {
            override func onResendUserAttributeConfirmationCode(flutterResult: @escaping FlutterResult, request: FlutterResendUserAttributeConfirmationCodeRequest){
                let resendUserAttributeConfirmationCodeRes = Result<AuthCodeDeliveryDetails,AuthError>.success(AuthCodeDeliveryDetails(destination: DeliveryDestination.email(_email)))
                let resendUserAttributeConfirmationCodeData = FlutterResendUserAttributeConfirmationCodeResult(res: resendUserAttributeConfirmationCodeRes)
                flutterResult(resendUserAttributeConfirmationCodeData)
            }
        }
        
        plugin = SwiftAuthCognito.init(cognito: ResendUserAttributeConfirmationCodeMock())
        
        _data = [
            "userAttributeKey" : "email",
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "resendUserAttributeConfirmationCode", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterResendUserAttributeConfirmationCodeResult {
                XCTAssertEqual( _email,  res.codeDeliveryDetails["destination"] )
                XCTAssertEqual( "email",  res.codeDeliveryDetails["attributeName"] )
                XCTAssertEqual( _email, (res.toJSON()["codeDeliveryDetails"] as! [String: String])["destination"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_resendUserAttributeConfirmationCodeRequestWithClientMetadata() {
        let metadata: Dictionary<String, Any> = ["attribute": "value"]
        let rawOptions: Dictionary<String, Any> = ["clientMetadata": metadata]
        let rawData: NSMutableDictionary = [
            "userAttributeKey": "email",
            "options": rawOptions
        ]
        let request = FlutterResendUserAttributeConfirmationCodeRequest(dict: rawData);
        let options = request.options?.pluginOptions as! AWSAttributeResendConfirmationCodeOptions
        XCTAssertEqual("value", options.metadata!["attribute"])
    }
    
    func test_resendUserAttributeConfirmationCodeValidation() {
        var rawData: NSMutableDictionary

        // Throws with no userAttributeKey
        rawData = [:]
        XCTAssertThrowsError(try FlutterResendUserAttributeConfirmationCodeRequest.validate(dict: rawData))
        
        // Does not thow an error with valid parameters
        rawData = ["userAttributeKey": "email"]
        XCTAssertNoThrow(try FlutterResendUserAttributeConfirmationCodeRequest.validate(dict: rawData))

    }
    
    func test_resendUserAttributeConfirmationCodeError() {

        class ResendUserAttributeConfirmationCodeMock: AuthCognitoBridge {
            override func onResendUserAttributeConfirmationCode(flutterResult: @escaping FlutterResult, request: FlutterResendUserAttributeConfirmationCodeRequest) {
                let authError = AuthError.service("Invalid parameter", MockErrorConstants.invalidParameterError, AWSCognitoAuthError.invalidParameter)
                errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)
            }
        }

        plugin = SwiftAuthCognito.init(cognito: ResendUserAttributeConfirmationCodeMock())

        _data = [
            "userAttributeKey" : "email",
        ]
        _args = ["data": _data]
        let call = FlutterMethodCall(methodName: "resendUserAttributeConfirmationCode", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if let res = result as? FlutterError {
                let details = res.details as? Dictionary<String, String>
                XCTAssertEqual( "InvalidParameterException", res.code )
                XCTAssert( ((details?["underlyingException"])! as String).contains(MockErrorTemplate))
                XCTAssertEqual( MockErrorConstants.invalidParameterError, details?["recoverySuggestion"])
                XCTAssertEqual( "Invalid parameter", details?["message"])
            } else {
                XCTFail()
            }
        })
    }
    
    func test_decode_and_encode_of_device() throws {
        let deviceJson = [
            "id": "123"
        ]
        let data = try JSONSerialization.data(withJSONObject: deviceJson)
        let device = try DeviceHandler.decoder.decode(AWSAuthDevice.self, from: data)
        XCTAssertEqual(device.id, "123")
        let encodedDeviceData = try DeviceHandler.encoder.encode(device)
        let encodedDevice = try JSONSerialization.jsonObject(with: encodedDeviceData) as? [String: String?]
        XCTAssertEqual(encodedDevice?["id"], "123")
    }
    
}
