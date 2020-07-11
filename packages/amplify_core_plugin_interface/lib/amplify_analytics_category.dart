part of amplify_flutter_platform_interface;


class AnalyticsCategory{

  const AnalyticsCategory();

  static List<AnalyticsPluginInterface> plugins = [];

  /// `Add plugin` method
  bool addPlugin(AnalyticsPluginInterface plugin) {
    plugins.add(plugin);
    // probably configure the plugin now.
    return true;
  }

  Future<bool> recordEvent({AnalyticsEvent event}) async {
    return plugins.length == 1 ? plugins[0].recordEvent(event: event) : null;
  }

  Future<bool> flushEvents() async {
    return plugins.length == 1 ? plugins[0].flushEvents() : null;
  }

  Future<bool> registerGlobalProperties({AnalyticsProperties globalProperties}) async {
    return plugins.length == 1 ? plugins[0].registerGlobalProperties(globalProperties: globalProperties) : null;
  }

  Future<bool> unregisterGlobalProperties({List<String> propertyNames}) async {
    return plugins.length == 1 ? plugins[0].unregisterGlobalProperties(propertyNames : propertyNames) : null;
  }

  Future<bool> unregisterAllGlobalProperties() async {
    return plugins.length == 1 ? plugins[0].unregisterAllGlobalProperties() : null;
  }

  Future<bool> enable() async {
    return plugins.length == 1 ? plugins[0].enable() : null;
  }

  Future<bool> disable() async{
    return plugins.length == 1 ? plugins[0].disable() : null;
  }

  Future<bool> identifyUser({String userId, AnalyticsUserProfile userProfile}) async {
    return plugins.length == 1 ? plugins[0].identifyUser(userId: userId, userProfile: userProfile) : null;
  }

}
