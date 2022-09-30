// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/key_value_store.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:built_collection/built_collection.dart';

import 'endpoint_global_fields_manager.dart';

/// Manages fields of a Pinpoint Endpoint local object
/// Uses [PinpointClient] to update AWS Pinpoint Endpoint
/// For more details see Pinpoint Endpoint online spec: https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints.html
class EndpointClient {
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
      DeviceContextInfo? deviceContextInfo,
      this._globalFieldsManager) {
    _endpointBuilder = PublicEndpointBuilder();

    _endpointBuilder.effectiveDate = DateTime.now().toUtc().toIso8601String();
    _endpointBuilder.demographic = EndpointDemographicBuilder()
      ..appVersion = deviceContextInfo?.appVersion
      ..locale = deviceContextInfo?.locale
      ..make = deviceContextInfo?.make
      ..model = deviceContextInfo?.model
      ..modelVersion = deviceContextInfo?.modelVersion
      ..platform = deviceContextInfo?.platform?.name
      ..platformVersion = deviceContextInfo?.platformVersion
      ..timezone = deviceContextInfo?.timezone;
    _endpointBuilder.location = EndpointLocationBuilder()
      ..country = deviceContextInfo?.countryCode;
    _endpointBuilder.requestId = _keyValueStore.getFixedEndpointId();
  }

  static Future<EndpointClient> getInstance(
      String appId,
      KeyValueStore keyValueStore,
      PinpointClient pinpointClient,
      DeviceContextInfo? deviceContextInfo) async {
    final globalFieldsManager =
        await EndpointGlobalFieldsManager.getInstance(keyValueStore);
    return EndpointClient._getInstance(appId, keyValueStore, pinpointClient,
        deviceContextInfo, globalFieldsManager);
  }

  void addAttribute(String name, List<String> values) =>
      _globalFieldsManager.addAttribute(name, values);
  void removeAttribute(String name) =>
      _globalFieldsManager.removeAttribute(name);
  void addMetric(String name, double value) =>
      _globalFieldsManager.addMetric(name, value);
  void removeMetric(String name) => _globalFieldsManager.removeMetric(name);

  /// Update the UserProfile object on the EndpointProfile
  Future<void> setUser(
      String userId, AnalyticsUserProfile copyFromProfile) async {
    EndpointUserBuilder newUserBuilder = EndpointUserBuilder();

    newUserBuilder.userId = userId;

    // TODO - introduce a new AWSPinpointUserProfile subclass of AnalyticsUserProfile
    // Which will contain 'userAttributes' that will be stored on EndpointUserBuilder

    // The [AnalyticsUserProfile] name, email, and plan fields are added as regular attributes to the local Endpoint
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
      final newLoc = copyFromProfile.location!;
      final lb = _endpointBuilder.location;

      // Null check so we don't overwrite existing non null values
      if (newLoc.latitude != null) lb.latitude = newLoc.latitude;
      if (newLoc.longitude != null) lb.longitude = newLoc.longitude;
      if (newLoc.postalCode != null) lb.postalCode = newLoc.postalCode;
      if (newLoc.city != null) lb.city = newLoc.city;
      if (newLoc.region != null) lb.region = newLoc.region;
      if (newLoc.country != null) lb.country = newLoc.country;
    }

    // Note that the [copyFromProfile]'s properties are copied to Endpoint metrics/attributes
    // Instead of the [EndpointUserBuilder] object
    if (copyFromProfile.properties != null) {
      final typesMap = copyFromProfile.properties!.getAllPropertiesTypes();
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

    _endpointBuilder.user = newUserBuilder;

    await updateEndpoint();
  }

  /// Return Endpoint instance
  /// Copy [globalAttributes] and [globalMetrics] into EndpointBuilder before build()
  PublicEndpoint getPublicEndpoint() {
    _endpointBuilder.attributes =
        ListMultimapBuilder(_globalFieldsManager.globalAttributes);
    _endpointBuilder.metrics = MapBuilder(_globalFieldsManager.globalMetrics);
    return _endpointBuilder.build();
  }

  /// Send local Endpoint instance to AWS Pinpoint
  Future<void> updateEndpoint() async {
    try {
      await _pinpointClient.updateEndpoint(UpdateEndpointRequest(
          applicationId: _appId,
          endpointId: _keyValueStore.getFixedEndpointId(),
          endpointRequest: _endpointToRequest(getPublicEndpoint())));
    } catch (error) {
      safePrint('updateEndpoint - exception encountered: ${error.toString()}');
    }
  }

  /// Create an EndpointRequest object from a local Endpoint instance
  EndpointRequest _endpointToRequest(PublicEndpoint publicEndpoint) {
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
