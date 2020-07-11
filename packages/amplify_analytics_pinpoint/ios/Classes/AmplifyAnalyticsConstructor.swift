import Amplify
import AmplifyPlugins

public class AmplifyAnalyticsConstructor {

    public static func createAnalyticsProperties(propertiesMap : Dictionary<String, AnyObject>) -> AnalyticsProperties{
        
        var analyticsProperties: AnalyticsProperties = AnalyticsProperties()
        
        for(key, value) in propertiesMap
        {
            analyticsProperties[key] = value as? AnalyticsPropertyValue
        }
        return analyticsProperties;
    }

    public static func createUserProfile(userProfileMap : Dictionary<String, AnyObject>) -> AnalyticsUserProfile{
        
        var userProfile = AnalyticsUserProfile( location: nil ) // TODO double check if okay
        
        for(key, value) in userProfileMap{
            switch key{
            case "name":
                userProfile.name = (value as! String);
            case "email":
                userProfile.email = (value as! String);
            case "plan":
                userProfile.plan = (value as! String);
            case "location":
                let locationMap = value as! Dictionary<String, AnyObject>
                userProfile.location = createUserLocation(userLocationMap: locationMap)
            case "properties":
                let propertiesMap = value as! Dictionary<String, AnyObject>
                userProfile.properties = createAnalyticsProperties(propertiesMap: propertiesMap)
            default:
                print("Unknown key for UserProfile")
                
            }
        }
        
        return userProfile
    }

    public static func createUserLocation(userLocationMap : Dictionary<String, AnyObject>) -> AnalyticsUserProfile.Location{
        
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
            default:
                print("Unknown key for UserLocation")
            }
        }
        
        return userLocation
    }

}
