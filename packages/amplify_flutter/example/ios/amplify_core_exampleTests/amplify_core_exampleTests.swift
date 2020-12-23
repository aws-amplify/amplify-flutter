//
//  amplify_flutter_exampleTests.swift
//  amplify_flutter_exampleTests
//
//  Created by Noyes, Dustin on 10/2/20.
//

import XCTest
import Amplify
@testable import amplify

class amplify_flutter_exampleTests: XCTestCase {
    
    var plugin: SwiftCore = SwiftCore()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_configureOnce() throws {
        let _args = ["version": "1", "configuration": "{}"]
        let call = FlutterMethodCall(methodName: "configure", arguments: _args)
        plugin.handle(call, result: {(result)->Void in
            if (result as? Bool) != nil {} else {
                XCTFail()
            }
        })
        plugin.handle(call, result: {(result)->Void in
            if (result as? Bool) != nil {} else {
                XCTFail()
            }
        })
    }

}
