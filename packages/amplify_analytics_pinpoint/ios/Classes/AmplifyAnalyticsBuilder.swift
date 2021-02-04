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

public class AmplifyAnalyticsBuilder {

    public static func createAnalyticsProperties(propertiesMap : Dictionary<String, Any>) -> AnalyticsProperties{
        return propertiesMap as? AnalyticsProperties ?? [:]
    }

    public static func createUserProfile(userProfileMap : Dictionary<String, Any>) -> AnalyticsUserProfile{
        
        var userProfile = AnalyticsUserProfile( location: nil )
        
        for(key, value) in userProfileMap{
            switch key{
            case "name":
                userProfile.name = (value as! String);
            case "email":
                userProfile.email = (value as! String);
            case "plan":
                userProfile.plan = (value as! String);
            case "location":
                let locationMap = value as! Dictionary<String, Any>
                userProfile.location = createUserLocation(userLocationMap: locationMap)
            case "properties":
                let propertiesMap = value as! Dictionary<String, Any>
                userProfile.properties = createAnalyticsProperties(propertiesMap: propertiesMap)
            // This case should not be possible as UserProfile is typed on Dart side
            default:
                print("Unknown key for UserProfile")
                
            }
        }
        
        return userProfile
    }

    public static func createUserLocation(userLocationMap : Dictionary<String, Any>) -> AnalyticsUserProfile.Location{
        
        var userLocation : AnalyticsUserProfile.Location = AnalyticsUserProfile.Location()
        
        for(key, value) in userLocationMap{
            switch key{
            case "latitude":
                userLocation.latitude = (value as! Double)
            case "longitude":
                userLocation.longitude = (value as! Double)
            case "postalCode":
                userLocation.postalCode = (value as! String)
            case "city":
                userLocation.city = (value as! String)
            case "region":
                userLocation.region = (value as! String)
            case "country":
                userLocation.country = (value as! String)
            // This case should not be possible as UserLocation is typed on Dart side
            default:
                print("Unknown key for UserLocation")
            }
        }
        
        return userLocation
    }

}
