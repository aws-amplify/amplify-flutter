
class AnalyticsProperties {
  Map<String, Object> _properties = new Map<String,Object>();

  void addStringProperty(String key, String value){
    _properties[key] = value;
  }

  void addDoubleProperty(String key, double value){
    _properties[key] = value;
  }

  void addBoolProperty(String key, bool value){
    _properties[key] = value;
  }

  void addIntProperty(String key, int value){
    _properties[key] = value;
  }

  Map<String, Object> getAllProperties(){
    return new Map<String, Object>.from(_properties);
  }
}