import 'dart:convert';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/key_value_store.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:built_collection/built_collection.dart';

import '../../../sdk/pinpoint.dart';
import 'endpoint_global_fields_manager.dart';

class EndpointClient {
  // string userAgent = PinpointManager.class.getName + / + versionUtils.getVersion

  // max event operations = 1000

  // Current Endpoint being managed
  late PublicEndpointBuilder _endpointBuilder;
  late final EndpointGlobalFieldsManager _globalFieldsManager;

  late final String _appId;
  late final PinpointClient _pinpointClient;
  late final KeyValueStore _keyValueStore;

  EndpointClient._getInstance(
      this._appId,
      this._keyValueStore,
      this._pinpointClient,
      DeviceContextInfoProvider? deviceInfoProvider,
      this._globalFieldsManager) {
    _endpointBuilder = PublicEndpointBuilder();

    _endpointBuilder.effectiveDate = DateTime.now().toUtc().toIso8601String();
    _endpointBuilder.demographic = EndpointDemographicBuilder()
      ..appVersion = deviceInfoProvider?.appVersion
      ..locale = deviceInfoProvider?.locale
      ..make = deviceInfoProvider?.make
      ..model = deviceInfoProvider?.model
      ..modelVersion = deviceInfoProvider?.modelVersion
      ..platform = deviceInfoProvider?.platform
      ..platformVersion = deviceInfoProvider?.platformVersion
      ..timezone = deviceInfoProvider?.timezone;
    _endpointBuilder.location = EndpointLocationBuilder()
      ..country = deviceInfoProvider?.countryCode;
    _endpointBuilder.requestId = _keyValueStore.getFixedEndpointId();
  }

  // External dependencies
  static Future<EndpointClient> getInstance(
      String appId,
      KeyValueStore keyValueStore,
      PinpointClient pinpointClient,
      DeviceContextInfoProvider? deviceInfoProvider) async {
    var globalFieldsManager =
        await EndpointGlobalFieldsManager.getInstance(keyValueStore);
    return EndpointClient._getInstance(appId, keyValueStore, pinpointClient,
        deviceInfoProvider, globalFieldsManager);
  }

  void addAttribute(String name, List<String> values) =>
      _globalFieldsManager.addAttribute(name, values);
  void removeAttribute(String name) =>
      _globalFieldsManager.removeAttribute(name);
  void addMetric(String name, double value) =>
      _globalFieldsManager.addMetric(name, value);
  void removeMetric(String name) => _globalFieldsManager.removeMetric(name);

  // update the UserProfile on the EndpointProfile
  Future<void> setUser(
      String userId, AnalyticsUserProfile copyFromProfile) async {
    EndpointUserBuilder newUserBuilder = EndpointUserBuilder();

    newUserBuilder.userId = userId;

    if (copyFromProfile.name != null) {
      addAttribute('name', [copyFromProfile.name!]);
    }
    if (copyFromProfile.email != null) {
      addAttribute('email', [copyFromProfile.email!]);
    }
    if (copyFromProfile.plan != null) {
      addAttribute('plan', [copyFromProfile.plan!]);
    }

    if (copyFromProfile.location != null) {
      var newLoc = copyFromProfile.location!;
      var lb = _endpointBuilder.location;

      // We null check so we don't overwrite existing non null values
      if (newLoc.latitude != null) lb.latitude = newLoc.latitude;
      if (newLoc.longitude != null) lb.longitude = newLoc.longitude;
      if (newLoc.postalCode != null) lb.postalCode = newLoc.postalCode;
      if (newLoc.city != null) lb.city = newLoc.city;
      if (newLoc.region != null) lb.region = newLoc.region;
      if (newLoc.country != null) lb.country = newLoc.country;
    }

    // Note that properties are currently copied to Endpoint metrics/attributes
    // Instead of the User's Properties
    if (copyFromProfile.properties != null) {
      var typesMap = copyFromProfile.properties!.getAllPropertiesTypes();
      copyFromProfile.properties!.getAllProperties().forEach((key, value) {
        if (typesMap[key] == 'DOUBLE' || typesMap[key] == 'INT') {
          if (value is int) {
            _globalFieldsManager.addMetric(key, value.toDouble());
          } else {
            _globalFieldsManager.addMetric(key, value as double);
          }
        } else {
          _globalFieldsManager.addAttribute(key, [value.toString()]);
        }
      });
    }

    // TODO: Android has the class AWSPinpointUserProfile with an additional AnalyticsProperties
    // Note: iOS doesn't have that though ...
    /*
    if userProfile is AWSPinpointUserProfile
    look through its additional analytics properties fields
    and add to userBuilder as follows =>
      var userAttributesBuilder = ListMultimapBuilder<String, String>();
      userProfile.properties!.getAllProperties().forEach((key, value) {
        userAttributesBuilder.add(key, value.toString());
      });
      userBuilder.userAttributes = userAttributesBuilder;
     */

    _endpointBuilder.user = newUserBuilder;

    await updateEndpoint();
  }

  PublicEndpoint getPublicEndpoint() {
    _endpointBuilder.attributes =
        ListMultimapBuilder(_globalFieldsManager.globalAttributes);
    _endpointBuilder.metrics = MapBuilder(_globalFieldsManager.globalMetrics);
    return _endpointBuilder.build();
  }

  Future<void> updateEndpoint() async {
    try {
      await _pinpointClient.updateEndpoint(UpdateEndpointRequest(
          applicationId: _appId,
          endpointId: _keyValueStore.getFixedEndpointId(),
          endpointRequest: endpointToRequest(getPublicEndpoint())));
    } catch (error) {
      safePrint('updateEndpoint - exception encountered: ${error.toString()}');
    }
  }

  EndpointRequest endpointToRequest(PublicEndpoint publicEndpoint) {
    return EndpointRequest(
        address: publicEndpoint.address,
        attributes: publicEndpoint.attributes,
        channelType: publicEndpoint.channelType,
        demographic: publicEndpoint.demographic,
        effectiveDate: publicEndpoint.effectiveDate,
        endpointStatus: publicEndpoint.endpointStatus,
        location: publicEndpoint.location,
        metrics: publicEndpoint.metrics,
        optOut: publicEndpoint.optOut,
        requestId: publicEndpoint.requestId,
        user: publicEndpoint.user);
  }
}
