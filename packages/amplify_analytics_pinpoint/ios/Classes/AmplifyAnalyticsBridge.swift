import Amplify
import AmplifyPlugins

public class AmplifyAnalyticsBridge {

    public static func recordEvent(arguments: Any?, result: @escaping FlutterResult){
        let argumentsMap = arguments as! Dictionary<String, AnyObject>

        let name = argumentsMap["name"] as! String
        let propertiesMap = argumentsMap["propertiesMap"] as! Dictionary<String, AnyObject>
        
        let event = BasicAnalyticsEvent(name: name, properties: AmplifyAnalyticsConstructor.createAnalyticsProperties(propertiesMap: propertiesMap))
        Amplify.Analytics.record(event: event)
        
        result(true);
    }

    
    public static func flushEvents(result: @escaping FlutterResult){
        Amplify.Analytics.flushEvents()
        result(true);
    }
    
    public static func registerGlobalProperties(arguments: Any?, result: @escaping FlutterResult){
        let propertiesMap = arguments as! Dictionary<String , AnyObject>
        Amplify.Analytics.registerGlobalProperties(AmplifyAnalyticsConstructor.createAnalyticsProperties(propertiesMap: propertiesMap))
        result(true);
    }
    
    public static func unregisterGlobalProperties(arguments: Any?, result: @escaping FlutterResult){
        let propertyNames = Set<String>(arguments as! Array<String>)
        Amplify.Analytics.unregisterGlobalProperties(propertyNames)
        result(true);
    } 
    public static func unregisterAllGlobalProperties(result: @escaping FlutterResult){
        Amplify.Analytics.unregisterGlobalProperties()
        result(true);
    }
    
    public static func enable(result: @escaping FlutterResult){
        Amplify.Analytics.enable()
        result(true);
    }
    
    public static func disable(result: @escaping FlutterResult){
        Amplify.Analytics.disable()
        result(true);
    }
    
    public static func identifyUser(arguments: Any?, result: @escaping FlutterResult){
        let arguments = arguments as! Dictionary<String, AnyObject>

        let userId = arguments["userId"] as! String
        let userProfileMap = arguments["userProfileMap"] as! Dictionary<String, AnyObject>

        Amplify.Analytics.identifyUser(userId, withProfile: AmplifyAnalyticsConstructor.createUserProfile(userProfileMap: userProfileMap))
        result(true);
    }
}
