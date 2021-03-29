//
//  AmplifyAddPluginTests.swift
//  unit_tests
//
//  Created by Admin on 3/26/21.
//

import XCTest
import Amplify
import AmplifyPlugins
import AWSCore
import amplify_core

@testable import amplify_datastore

class AmplifyAddPluginTests: XCTestCase {
    
    var flutterPlugin: SwiftAmplifyDataStorePlugin = SwiftAmplifyDataStorePlugin()
    
    //let schemasMap: [String: Any] = try! readJsonMap(filePath: "model_schema_maps")
    
    func test_addPlugin_returnsSuccess() throws {
        class MockDatastoreBridge: DataStoreBridge {
            override func addPlugin(modelRegistration : FlutterModels) throws {
            }
        }
        
        let arguments = [
            "modelSchemas" : [[String : Any]]()
        ]
        
        flutterPlugin = SwiftAmplifyDataStorePlugin(bridge: MockDatastoreBridge())
        
        let call = FlutterMethodCall(methodName: "configureModelProvider", arguments: arguments)
        flutterPlugin.handle(
            call,
            result: { (results) in
                XCTAssertEqual(results as! Bool, true)
            }
        )
    }
    
    func test_addPlugin_throwsError() throws {
        class MockDatastoreBridge: DataStoreBridge {
            override func addPlugin(modelRegistration : FlutterModels) throws {
                throw DataStoreError.configuration(
                    "errorDescription",
                    "recoverySuggestion")
            }
        }
        
        let arguments = [
            "modelSchemas" : [[String : Any]]()
        ]
        
        flutterPlugin = SwiftAmplifyDataStorePlugin(bridge: MockDatastoreBridge())
        
        let call = FlutterMethodCall(methodName: "configureModelProvider", arguments: arguments)
        flutterPlugin.handle(
            call,
            result: { (results) in
                if let exception = results as? FlutterError {
                    XCTAssertEqual("DataStoreException", exception.code)
                    XCTAssertEqual(ErrorMessages.defaultFallbackErrorMessage, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String : Any]
                    XCTAssertEqual("errorDescription", errorMap["message"] as? String)
                    XCTAssertEqual("recoverySuggestion", errorMap["recoverySuggestion"] as? String)
                } else {
                    XCTFail()
                }
            }
        )
    }
}


//args["modelSchemas"] as? [[String: Any]
