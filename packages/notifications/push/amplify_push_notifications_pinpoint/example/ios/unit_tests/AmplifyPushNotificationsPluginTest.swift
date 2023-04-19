// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import XCTest
import Flutter

@testable import amplify_push_notifications

let fakePointer = AutoreleasingUnsafeMutablePointer<FlutterError?>(bitPattern: 1)!
let expectedNotification = [
    "aps": [
        "alert": ["title": "I'm a PN"],
        "content-available": 1
    ] as [String : Any]
]
let expectedDeviceToken = "abcd1234ef5678";
let expectedDeviceTokenData = revertTokenOperation(expectedDeviceToken)
let expectedErrorLocalizedDescription = NSLocalizedString("register token failed", comment: "mockError")
var fakeIconBadgeNumber = 0
var fakeUIApplicationState = UIApplication.State.active
var hasCalledRegisterForRemoteNotifications = false
var hasOnNotificationReceivedInBackgroundBeenCalled = false
var hasNotificationOpenedHandlerBeenCalled = false
var hasForegroundMessageReceivedHandlerBeenCalled = false
var hasTokenReceivedHandlerBeenCalled = false
var hasTokenReceivedErrorHandlerBeenCalled = false

final class AmplifyPushNotificationsPluginTest: XCTestCase {
    var originalApplicationStateGetter: Method?
    var mockedApplicationStateGetter: Method?
    var pluginInstance: AmplifyPushNotificationsPlugin?

    override func setUp() {
        fakeIconBadgeNumber = 0
        fakeUIApplicationState = UIApplication.State.active
        hasCalledRegisterForRemoteNotifications = false
        hasOnNotificationReceivedInBackgroundBeenCalled = false
        hasNotificationOpenedHandlerBeenCalled = false
        hasForegroundMessageReceivedHandlerBeenCalled = false
        hasTokenReceivedHandlerBeenCalled = false
        hasTokenReceivedErrorHandlerBeenCalled = false


        // Put setup code here. This method is called before the invocation of each test method in the class.
        let registrar = MockFlutterPluginRegistrar()
        AmplifyPushNotificationsPlugin.register(with: registrar);

        let pluginInstance = registrar.instance as? AmplifyPushNotificationsPlugin
        self.pluginInstance = pluginInstance

        // The system allows only one instance of UIApplication, we can create a mock instance due to
        // this limit, so we swizzle the getter UIApplication.applicationState to mock the application
        // state simulating different use cases
        originalApplicationStateGetter = class_getInstanceMethod(
            UIApplication.self,
            #selector(getter: UIApplication.applicationState)
        )
        mockedApplicationStateGetter = class_getInstanceMethod(
            MockUIApplicationStateProvider.self,
            #selector(getter: MockUIApplicationStateProvider.applicationState)
        )
        method_exchangeImplementations(originalApplicationStateGetter!, mockedApplicationStateGetter!)
    }

    override func tearDown() {
        method_exchangeImplementations(mockedApplicationStateGetter!, originalApplicationStateGetter!)
    }

    func testRegister() {
        XCTAssertNotNil(pluginInstance)
        XCTAssertNotNil(pluginInstance?.sharedEventsStreamHandlers)
        XCTAssertNotNil(pluginInstance?.flutterApi)
    }

    func testGetLaunchNotification_AppActive() {
        fakeUIApplicationState = UIApplication.State.active

        let handled = pluginInstance!.application(
            UIApplication.shared,
            didFinishLaunchingWithOptions: [
                UIApplication.LaunchOptionsKey.remoteNotification: expectedNotification
            ]
        )

        XCTAssertTrue(handled)

        let result = pluginInstance!.getLaunchNotificationWithError(fakePointer)
        
        XCTAssertNotNil(result);
        XCTAssertTrue(
            NSDictionary(dictionary: result!).isEqual(to: expectedNotification)
        )

        // Can only get the launchNotification once
        let result2 = pluginInstance!.getLaunchNotificationWithError(fakePointer)

        XCTAssertNil(result2);
    }

    func testGetLaunchNotification_AppInActive() {
        fakeUIApplicationState = UIApplication.State.inactive

        // simulate that the App gets awakened by a remote notification
        // with `"content-available": 1` in the background
        let expectedLaunchNotification = [
            "aps": [
                "alert": ["title": "I'm a PN"],
                "content-available": 1
            ] as [String : Any]
        ]

        let handled = pluginInstance!.application(
            UIApplication.shared,
            didFinishLaunchingWithOptions: [
                UIApplication.LaunchOptionsKey.remoteNotification: expectedLaunchNotification
            ]
        )

        XCTAssertTrue(handled)

        let result = pluginInstance!.getLaunchNotificationWithError(fakePointer)

        XCTAssertNotNil(result);
        XCTAssertTrue(
            NSDictionary(dictionary: result!).isEqual(to: expectedLaunchNotification)
        )

        // Can only get the launchNotification once
        let result2 = pluginInstance!.getLaunchNotificationWithError(fakePointer)

        XCTAssertNil(result2);
    }


    func testGetLaunchNotification_AppBackground() {
        fakeUIApplicationState = UIApplication.State.background

        // simulate that the App gets awakened by a remote notification
        // with `"content-available": 1` in the background
        let expectedLaunchNotification = [
            "aps": [
                "alert": ["title": "I'm a PN"],
                "content-available": 1
            ] as [String : Any]
        ]

        let handled = pluginInstance!.application(
            UIApplication.shared,
            didFinishLaunchingWithOptions: [
                UIApplication.LaunchOptionsKey.remoteNotification: expectedLaunchNotification
            ]
        )

        XCTAssertTrue(handled)

        let result = pluginInstance!.getLaunchNotificationWithError(fakePointer)

        XCTAssertNil(result);
    }

    func testGetLaunchNotification_AppLaunchedWithoutNotification() {
        let handled = pluginInstance!.application(
            UIApplication.shared,
            didFinishLaunchingWithOptions: [:]
        )

        XCTAssertTrue(handled)

        let result = pluginInstance!.getLaunchNotificationWithError(fakePointer)

        XCTAssertNil(result);
    }

    func testGetLaunchNotification_AfterApplicationDidEnterBackground_LaunchNoticicationNotConsumed() {
        fakeUIApplicationState = UIApplication.State.active

        let _ = pluginInstance!.application(
            UIApplication.shared,
            didFinishLaunchingWithOptions: [
                UIApplication.LaunchOptionsKey.remoteNotification: expectedNotification
            ]
        )

        pluginInstance!.applicationDidEnterBackground(UIApplication.shared)

        let result = pluginInstance!.getLaunchNotificationWithError(fakePointer)

        XCTAssertNil(result);
    }

    func testGetAndSetBadgeCountWithBadgeCount() {
        let originalGetter = class_getInstanceMethod(
            UIApplication.self,
            #selector(getter: UIApplication.applicationIconBadgeNumber)
        )
        let mockedGetter = class_getInstanceMethod(
            MockUIApplicationIconBadgeNumber.self,
            #selector(getter: MockUIApplicationIconBadgeNumber.applicationIconBadgeNumber)
        )
        let originalSetter = class_getInstanceMethod(
            UIApplication.self,
            #selector(setter: UIApplication.applicationIconBadgeNumber)
        )
        let mockedSetter = class_getInstanceMethod(
            MockUIApplicationIconBadgeNumber.self,
            #selector(setter: MockUIApplicationIconBadgeNumber.applicationIconBadgeNumber)
        )
        method_exchangeImplementations(originalGetter!, mockedGetter!)
        method_exchangeImplementations(originalSetter!, mockedSetter!)

        XCTAssertEqual(
            pluginInstance!.getBadgeCountWithError(fakePointer)?.intValue, fakeIconBadgeNumber
        )

        let expectedBadgeNumber = 1000
        pluginInstance!.setBadgeCountWithBadgeCount(expectedBadgeNumber as NSNumber, error: fakePointer)

        XCTAssertEqual(
            pluginInstance!.getBadgeCountWithError(fakePointer)?.intValue, expectedBadgeNumber
        )

        method_exchangeImplementations(mockedGetter!, originalGetter!)
        method_exchangeImplementations(mockedSetter!, originalSetter!)
    }

    func testApplicationDidBecomeActive() {
        let original = class_getInstanceMethod(
            UIApplication.self,
            #selector(UIApplication.shared.registerForRemoteNotifications as () -> Void)
        )
        let mocked = class_getInstanceMethod(
            MockUIApplicationRegisterForRemoteNotifications.self,
            #selector(MockUIApplicationRegisterForRemoteNotifications.registerForRemoteNotifications)
        )

        method_exchangeImplementations(original!, mocked!)

        pluginInstance!.applicationDidBecomeActive(UIApplication.shared)

        XCTAssertTrue(hasCalledRegisterForRemoteNotifications)

        method_exchangeImplementations(mocked!, original!)
    }

    func testDidReceiveRemoteNotification_AppBackground() {
        fakeUIApplicationState = UIApplication.State.background

        class MockPushNotificationsFlutterApi: PushNotificationsFlutterApi {
            override func onNotificationReceivedInBackground(withPayload payload: [AnyHashable : Any], completion: @escaping (FlutterError?) -> Void) {
                hasOnNotificationReceivedInBackgroundBeenCalled = true
                XCTAssertTrue(
                    NSDictionary(dictionary: payload).isEqual(to: expectedNotification)
                )
                completion(nil)
            }
        }

        let plugin = AmplifyPushNotificationsPlugin(
            sharedEventsStreamHandlers: EventsStreamHandlers(binaryMessenger: MockFlutterBinaryMessenger()),
            flutterApi: MockPushNotificationsFlutterApi()
        )

        let expectation = XCTestExpectation(description: "Completion handler is called.")
        let handled = plugin.application(
            UIApplication.shared,
            didReceiveRemoteNotification: expectedNotification) { result in
                expectation.fulfill()
                XCTAssertEqual(result, .noData)
            }

        XCTAssertTrue(handled)
        XCTAssertTrue(hasOnNotificationReceivedInBackgroundBeenCalled)
        wait(for: [expectation], timeout: 2.0)
    }

    func testDidReceiveRemoteNotification_AppInActive() {
        fakeUIApplicationState = UIApplication.State.inactive

        class MockNotificationOpenedHandler: PushNotificationEventsStreamHandler {
            override func sendEvent(payload: [AnyHashable : Any]) {
                hasNotificationOpenedHandlerBeenCalled = true
                XCTAssertTrue(
                    NSDictionary(dictionary: payload).isEqual(to: expectedNotification)
                )
            }
        }

        let plugin = AmplifyPushNotificationsPlugin(
            sharedEventsStreamHandlers: MockEventsStreamHandlers(
                tokenReceived: PushNotificationEventsStreamHandler(
                    eventType: NativeEvent.tokenReceived, binaryMessenger: MockFlutterBinaryMessenger()
                ),
                notificationOpened: MockNotificationOpenedHandler(
                    eventType: NativeEvent.notificationOpened, binaryMessenger: MockFlutterBinaryMessenger()
                ),
                foregroundMessageReceived: PushNotificationEventsStreamHandler(
                    eventType: NativeEvent.foregroundMessageReceived, binaryMessenger: MockFlutterBinaryMessenger()
                )
            ),
            flutterApi: PushNotificationsFlutterApi()
        )

        let expectation = XCTestExpectation(description: "Completion handler is called.")
        let handled = plugin.application(
            UIApplication.shared,
            didReceiveRemoteNotification: expectedNotification) { result in
                expectation.fulfill()
                XCTAssertEqual(result, .noData)
            }

        XCTAssertTrue(handled)
        XCTAssertTrue(hasNotificationOpenedHandlerBeenCalled)
        wait(for: [expectation], timeout: 2.0)
    }

    func testDidReceiveRemoteNotification_AppActive() {
        fakeUIApplicationState = UIApplication.State.active

        class MockForegroundMessageReceivedHandler: PushNotificationEventsStreamHandler {
            override func sendEvent(payload: [AnyHashable : Any]) {
                hasForegroundMessageReceivedHandlerBeenCalled = true
                XCTAssertTrue(
                    NSDictionary(dictionary: payload).isEqual(to: expectedNotification)
                )
            }
        }

        let plugin = AmplifyPushNotificationsPlugin(
            sharedEventsStreamHandlers: MockEventsStreamHandlers(
                tokenReceived: PushNotificationEventsStreamHandler(
                    eventType: NativeEvent.tokenReceived, binaryMessenger: MockFlutterBinaryMessenger()
                ),
                notificationOpened: PushNotificationEventsStreamHandler(
                    eventType: NativeEvent.notificationOpened, binaryMessenger: MockFlutterBinaryMessenger()
                ),
                foregroundMessageReceived: MockForegroundMessageReceivedHandler(
                    eventType: NativeEvent.foregroundMessageReceived, binaryMessenger: MockFlutterBinaryMessenger()
                )
            ),
            flutterApi: PushNotificationsFlutterApi()
        )

        let expectation = XCTestExpectation(description: "Completion handler is called.")
        let handled = plugin.application(
            UIApplication.shared,
            didReceiveRemoteNotification: expectedNotification) { result in
                expectation.fulfill()
                XCTAssertEqual(result, .noData)
            }

        XCTAssertTrue(handled)
        XCTAssertTrue(hasForegroundMessageReceivedHandlerBeenCalled)
        wait(for: [expectation], timeout: 2.0)
    }

    func testDidRegisterForRemoteNotificationsWithDeviceToken() {
        class MockTokenReceivedHandler: PushNotificationEventsStreamHandler {
            override func sendEvent(payload: [AnyHashable : Any]) {
                hasTokenReceivedHandlerBeenCalled = true
                XCTAssertTrue(
                    NSDictionary(dictionary: payload).isEqual(to: ["token": expectedDeviceToken])
                )
            }
        }

        let plugin = AmplifyPushNotificationsPlugin(
            sharedEventsStreamHandlers: MockEventsStreamHandlers(
                tokenReceived: MockTokenReceivedHandler(
                    eventType: NativeEvent.tokenReceived, binaryMessenger: MockFlutterBinaryMessenger()
                ),
                notificationOpened: PushNotificationEventsStreamHandler(
                    eventType: NativeEvent.notificationOpened, binaryMessenger: MockFlutterBinaryMessenger()
                ),
                foregroundMessageReceived: PushNotificationEventsStreamHandler(
                    eventType: NativeEvent.foregroundMessageReceived, binaryMessenger: MockFlutterBinaryMessenger()
                )
            ),
            flutterApi: PushNotificationsFlutterApi()
        )

        plugin.application(UIApplication.shared, didRegisterForRemoteNotificationsWithDeviceToken: expectedDeviceTokenData)

        XCTAssertTrue(hasTokenReceivedHandlerBeenCalled)
    }

    func testDidFailToRegisterForRemoteNotificationsWithError() {
        struct MockError: Error, LocalizedError {
            public var errorDescription: String? {
                return expectedErrorLocalizedDescription
            }
        }

        let mockError = MockError();

        class MockTokenReceivedHandler: PushNotificationEventsStreamHandler {
            override func sendError(error: FlutterError) {
                hasTokenReceivedErrorHandlerBeenCalled = true
                XCTAssertEqual(error.code, "DeviceTokenError")
                XCTAssertEqual(error.message, expectedErrorLocalizedDescription)
            }
        }

        let plugin = AmplifyPushNotificationsPlugin(
            sharedEventsStreamHandlers: MockEventsStreamHandlers(
                tokenReceived: MockTokenReceivedHandler(
                    eventType: NativeEvent.tokenReceived, binaryMessenger: MockFlutterBinaryMessenger()
                ),
                notificationOpened: PushNotificationEventsStreamHandler(
                    eventType: NativeEvent.notificationOpened, binaryMessenger: MockFlutterBinaryMessenger()
                ),
                foregroundMessageReceived: PushNotificationEventsStreamHandler(
                    eventType: NativeEvent.foregroundMessageReceived, binaryMessenger: MockFlutterBinaryMessenger()
                )
            ),
            flutterApi: PushNotificationsFlutterApi()
        )

        plugin.application(UIApplication.shared, didFailToRegisterForRemoteNotificationsWithError: mockError)

        XCTAssertTrue(hasTokenReceivedErrorHandlerBeenCalled)
    }
}

class MockFlutterPluginRegistrar: NSObject, FlutterPluginRegistrar {
    var instance: Any?

    func messenger() -> FlutterBinaryMessenger {
        return MockFlutterBinaryMessenger()
    }

    func textures() -> FlutterTextureRegistry {
        return MockFlutterTextureRegistry()
    }

    func register(_ factory: FlutterPlatformViewFactory, withId factoryId: String) {

    }

    func register(_ factory: FlutterPlatformViewFactory, withId factoryId: String, gestureRecognizersBlockingPolicy: FlutterPlatformViewGestureRecognizersBlockingPolicy) {

    }

    func publish(_ value: NSObject) {

    }

    func addMethodCallDelegate(_ delegate: FlutterPlugin, channel: FlutterMethodChannel) {

    }

    func lookupKey(forAsset asset: String) -> String {
        return "fake"
    }

    func lookupKey(forAsset asset: String, fromPackage package: String) -> String {
        return "fake"
    }

    func addApplicationDelegate(_ delegate: FlutterPlugin) {
        instance = delegate
    }
}

class MockFlutterBinaryMessenger: NSObject, FlutterBinaryMessenger {
    func send(onChannel channel: String, message: Data?) {

    }

    func send(onChannel channel: String, message: Data?, binaryReply callback: FlutterBinaryReply? = nil) {

    }

    func setMessageHandlerOnChannel(_ channel: String, binaryMessageHandler handler: FlutterBinaryMessageHandler? = nil) -> FlutterBinaryMessengerConnection {
        return 0
    }

    func cleanUpConnection(_ connection: FlutterBinaryMessengerConnection) {

    }
}

class MockFlutterTextureRegistry: NSObject, FlutterTextureRegistry {
    func register(_ texture: FlutterTexture) -> Int64 {
        return 0
    }

    func textureFrameAvailable(_ textureId: Int64) {

    }

    func unregisterTexture(_ textureId: Int64) {

    }
}

class MockUIApplicationStateProvider {
    @objc var applicationState: UIApplication.State {
        get { return fakeUIApplicationState }
    }

    func setFakeUIApplicationState(state: UIApplication.State) {
        fakeUIApplicationState = state
    }
}

class MockUIApplicationIconBadgeNumber {
    @objc var applicationIconBadgeNumber: Int {
        get { return fakeIconBadgeNumber }
        set(number) {
            fakeIconBadgeNumber = number
        }
    }
}

class MockUIApplicationRegisterForRemoteNotifications {
    @objc func registerForRemoteNotifications() {
        hasCalledRegisterForRemoteNotifications = true
    }
}

class MockEventsStreamHandlers: EventsStreamHandlersProtocol {
    let tokenReceived: PushNotificationEventsStreamHandler

    let notificationOpened: PushNotificationEventsStreamHandler

    let foregroundMessageReceived: PushNotificationEventsStreamHandler

    init(
        tokenReceived: PushNotificationEventsStreamHandler,
        notificationOpened: PushNotificationEventsStreamHandler,
        foregroundMessageReceived: PushNotificationEventsStreamHandler
    ) {
        self.tokenReceived = tokenReceived
        self.notificationOpened = notificationOpened
        self.foregroundMessageReceived = foregroundMessageReceived
    }
}

func revertTokenOperation(_ token: String) -> Data {
    let hexChars = Array(token)
    var data = Data()
    var index = hexChars.startIndex
    while index < hexChars.endIndex {
        let byteString = String(hexChars[index...hexChars.index(after: index)])
        if let byte = UInt8(byteString, radix: 16) {
            data.append(byte)
        }
        index = hexChars.index(index, offsetBy: 2)
    }
    return data
}
