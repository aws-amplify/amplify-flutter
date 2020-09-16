import XCTest
import Amplify
import AmplifyPlugins
@testable import amplify_auth_cognito

var signUpRes = Result<AuthSignUpResult,AuthError>.success(
    AuthSignUpResult(AuthSignUpStep.confirmUser(AuthCodeDeliveryDetails(destination: DeliveryDestination.email("test@test.com")), nil)))

class amplify_auth_cognito_exampleTests: XCTestCase {
    
    class MockSwiftAuthCognito: SwiftAuthCognito {
        override func onSignUp(flutterResult: @escaping FlutterResult, request: FlutterSignUpRequest) {
            if (request.username != "") {
              let signUpData = FlutterSignUpResult(res: signUpRes)
              flutterResult(signUpData)
            } else {
                let error = NSError()
                let authError = AuthError.service("Invalid username", "Enter a username", nil)
                handleAuthError(error: authError, flutterResult: flutterResult, msg: FlutterAuthErrorMessage.SIGNUP.rawValue)
            }
        }
        override func onConfirmSignUp(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignUpRequest) {
            let signUpData = FlutterSignUpResult(res: signUpRes)
            flutterResult(signUpData)
        }
    }
    
    var plugin: MockSwiftAuthCognito?;

    override func setUpWithError() throws {
        plugin = MockSwiftAuthCognito();
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample_signUpSuccess() {
        let attributes: Dictionary<String, String> = ["email" : "dustin.noyes@gmail.com"]
        let options: Dictionary<String, Any> = [
            "userAttributes": attributes
        ]
        let data: NSMutableDictionary = [
            "username": "testuser",
            "password": "mytestpassword",
            "options": options
        ]
        let args: Dictionary<String, Any> = [
            "data": data
        ]
        let call = FlutterMethodCall( methodName: "signUp", arguments: args )
        plugin!.handle( call, result: {(result)->Void in
            if let res = result as? FlutterSignUpResult {
                XCTAssertEqual( false, res.isSignUpComplete )
                XCTAssertEqual( "CONFIRM_SIGN_UP_STEP", res.signUpStep)
            } else {
                XCTFail()
            }
        })
    }
    
    func testExample_signUpError() {
        let attributes: Dictionary<String, String> = ["email" : "dustin.noyes@gmail.com"]
        let options: Dictionary<String, Any> = [
            "userAttributes": attributes
        ]
        let data: NSMutableDictionary = [
            "username": "",
            "password": "mytestpassword",
            "options": options
        ]
        let args: Dictionary<String, Any> = [
            "data": data
        ]
        let call = FlutterMethodCall( methodName: "signUp", arguments: args )
        plugin!.handle( call, result: {(result)->Void in
            if let res = result as? FlutterError {
                XCTAssertEqual( "AmplifyException", res.code )
                XCTAssertEqual( "AMPLIFY_SIGNUP_FAILED", res.message)
            } else {
                XCTFail()
            }
        })
    }

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
