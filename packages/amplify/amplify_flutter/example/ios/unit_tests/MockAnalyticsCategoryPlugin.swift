// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Amplify

class MockAnalyticsCategoryPlugin: AnalyticsCategoryPlugin {
    var key: String {
        return "MockAnalyticsCategoryPlugin"
    }

    func configure(using configuration: Any?) throws {

    }

    func reset(onComplete: @escaping BasicClosure) {
        onComplete()
    }

    func disable() {
    }

    func enable() {
    }

    func identifyUser(_ identityId: String, withProfile analyticsUserProfile: AnalyticsUserProfile?) {
    }

    func record(eventWithName eventName: String) {
    }

    func record(event: AnalyticsEvent) {
    }

    func registerGlobalProperties(_ properties: AnalyticsProperties) {
    }

    func unregisterGlobalProperties(_ keys: Set<String>?) {
    }

    func flushEvents() {
    }
}
