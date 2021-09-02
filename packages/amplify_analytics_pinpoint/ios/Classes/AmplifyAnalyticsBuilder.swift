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
import AmplifyPlugins

public enum AmplifyAnalyticsBuilder {
    public static func createAnalyticsProperties(map: [String: Any]) -> AnalyticsProperties {
        var analyticsProperties = AnalyticsProperties()

        guard let propertiesMap = map["propertiesMap"] as? [String: Any],
              let propertiesTypesMap = map["propertiesTypesMap"] as? [String: String]
        else {
            return analyticsProperties
        }

        for (key, value) in propertiesTypesMap {
            switch value {
            case "STRING":
                analyticsProperties[key] = propertiesMap[key] as? String
            case "INT":
                analyticsProperties[key] = propertiesMap[key] as? Int
            case "DOUBLE":
                analyticsProperties[key] = propertiesMap[key] as? Double
            case "BOOL":
                analyticsProperties[key] = propertiesMap[key] as? Bool
            default:
                print("Unknown type for AnalyticsProperties")
            }
        }
        return analyticsProperties
    }

    public static func createUserProfile(userProfileMap: [String: Any]) -> AnalyticsUserProfile {
        var location: AnalyticsUserProfile.Location?
        if let locationMap = userProfileMap["location"] as? [String: Any] {
            location = createUserLocation(userLocationMap: locationMap)
        }

        return AnalyticsUserProfile(
            name: userProfileMap["name"] as? String,
            email: userProfileMap["email"] as? String,
            plan: userProfileMap["plan"] as? String,
            location: location,
            properties: createAnalyticsProperties(map: userProfileMap))
    }

    public static func createUserLocation(userLocationMap: [String: Any]) -> AnalyticsUserProfile.Location {
        return AnalyticsUserProfile.Location(
            latitude: userLocationMap["latitude"] as? Double,
            longitude: userLocationMap["longitude"] as? Double,
            postalCode: userLocationMap["postalCode"] as? String,
            city: userLocationMap["city"] as? String,
            region: userLocationMap["region"] as? String,
            country: userLocationMap["country"] as? String)
    }
}
