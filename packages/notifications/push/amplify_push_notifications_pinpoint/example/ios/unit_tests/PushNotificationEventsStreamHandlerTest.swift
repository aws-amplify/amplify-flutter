//
//  PushNotificationEventsStreamHandlerTest.swift
//  unit_tests
//
//  Created by Zhao, Hui on 3/30/23.
//

import XCTest
import Flutter

@testable import amplify_push_notifications

final class PushNotificationEventsStreamHandlerTest: XCTestCase {
    func testShouldQueueEventsBeforeListenerAttached() {
        var emittedEventsList: [[AnyHashable: String]] = []
        let expectedEventsList: [[AnyHashable: String]] = [
            ["token": "123"],
            ["token": "456"],
            ["token": "abc"],
            ["token": "def"],
        ]
        var callingCounter = 0

        func mockEventSink(_ event: Any?) {
            guard let emittedEvent = event as? [AnyHashable: String] else {
                return
            }
            emittedEventsList.append(emittedEvent)
            callingCounter += 1
        }
        
        let handler = PushNotificationEventsStreamHandler(
            eventType: NativeEvent.tokenReceived,
            binaryMessenger: MockFlutterBinaryMessenger()
        )

        handler.sendEvent(payload: expectedEventsList[0])
        handler.sendEvent(payload: expectedEventsList[1])
        handler.sendEvent(payload: expectedEventsList[2])

        let result = handler.onListen(withArguments: nil, eventSink: mockEventSink as FlutterEventSink)
        XCTAssertNil(result)
        XCTAssertEqual(emittedEventsList, Array(expectedEventsList[0...2]))

        handler.sendEvent(payload: expectedEventsList[3])
        XCTAssertEqual(emittedEventsList, expectedEventsList)
        XCTAssertEqual(callingCounter, expectedEventsList.count)
    }

    func testShouldQueueErrorsBeforeListenerAttached() {
        var emittedErrorsList: [FlutterError] = []
        let expectedErrorsList = [
            FlutterError(code: "DeviceTokenError", message: "Error 1", details: nil),
            FlutterError(code: "DeviceTokenError", message: "Error 2", details: nil),
            FlutterError(code: "DeviceTokenError", message: "Error 3", details: nil),
            FlutterError(code: "DeviceTokenError", message: "Error 4", details: nil),
        ]

        var callingCounter = 0

        func mockEventSink(_ event: Any?) {
            guard let emittedEvent = event as? FlutterError else {
                return
            }
            emittedErrorsList.append(emittedEvent)
            callingCounter += 1
        }

        let handler = PushNotificationEventsStreamHandler(
            eventType: NativeEvent.tokenReceived,
            binaryMessenger: MockFlutterBinaryMessenger()
        )

        handler.sendError(error: expectedErrorsList[0])
        handler.sendError(error: expectedErrorsList[1])
        handler.sendError(error: expectedErrorsList[2])

        let result = handler.onListen(withArguments: nil, eventSink: mockEventSink as FlutterEventSink)
        XCTAssertNil(result)
        XCTAssertEqual(emittedErrorsList, Array(expectedErrorsList[0...2]))

        handler.sendError(error: expectedErrorsList[3])
        XCTAssertEqual(emittedErrorsList, expectedErrorsList)
        XCTAssertEqual(callingCounter, expectedErrorsList.count)
    }
}
