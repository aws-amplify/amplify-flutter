import '../../analytics_plugin_interface.dart';

class AnalyticsEvent {

  String name;

  AnalyticsProperties _properties = new AnalyticsProperties();
  AnalyticsProperties get properties{
    return _properties;
  }

  AnalyticsEvent(this.name);

}
