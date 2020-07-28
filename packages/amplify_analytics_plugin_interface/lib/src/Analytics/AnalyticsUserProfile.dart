import '../../analytics_plugin_interface.dart';

class AnalyticsUserProfile {

  String name;
  String email;
  String plan;
  AnalyticsUserProfileLocation location;
  AnalyticsProperties properties;

  AnalyticsUserProfile({
    String name, String email, String plan, AnalyticsUserProfileLocation location, AnalyticsProperties analyticsProperties
  }) {
    this.name = name;
    this.email = email;
    this.plan = plan;
    this.location = location;
    this.properties = analyticsProperties;
  }

  Map<String, Object> getAllProperties() {

    Map<String, Object> allProperties = {}; 

    if(name != null){
      allProperties["name"] = name;
    }
    
    if(email != null){
      allProperties["email"] = email;
    }
    
    if(plan != null){
      allProperties["plan"] = plan;
    }
    
    

    if (location != null) {
      allProperties["location"] = location.getAllProperties();
    }

    if (properties != null) {
      allProperties["properties"] = properties.getAllProperties();
    }

    return allProperties;
  }
}
