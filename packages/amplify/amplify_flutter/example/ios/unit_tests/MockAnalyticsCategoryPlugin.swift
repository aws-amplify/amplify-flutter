/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
