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
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_global_fields_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:built_collection/built_collection.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

/// {@template amplify_analytics_pinpoint_dart.endpoint_client}
/// Manages fields of a Pinpoint Endpoint local object.
///
/// Uses [PinpointClient] to update AWS Pinpoint Endpoint.
///
/// For more details see [Pinpoint Endpoint](https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints.html) online spec.
/// {@endtemplate}
class EndpointClient {
  /// {@macro amplify_analytics_pinpoint_dart.endpoint_client}
  @visibleForTesting
  EndpointClient(
    this._appId,
    this._fixedEndpointId,
    this._pinpointClient,
    this._globalFieldsManager,
    this._endpointBuilder,
  );

  static EndpointClient? _instance;

  /// {@macro amplify_analytics_pinpoint_dart.endpoint_client}
  static Future<EndpointClient> getInstance(
    String appId,
    SecureStorageInterface keyValueStore,
    PinpointClient pinpointClient,
    DeviceContextInfo? deviceContextInfo,
  ) async {
    if (_instance != null) return _instance!;

    // Retrieve Unique ID
    final savedFixedEndpointId =
        await keyValueStore.read(key: _endpointIdStorageKey);
    final fixedEndpointId = savedFixedEndpointId ?? const Uuid().v1();
    if (savedFixedEndpointId == null) {
      await keyValueStore.write(
        key: _endpointIdStorageKey,
        value: fixedEndpointId,
      );
    }

    final globalFieldsManager =
        await EndpointGlobalFieldsManager.getInstance(keyValueStore);

    final endpointBuilder = PublicEndpointBuilder()
      ..effectiveDate = DateTime.now().toUtc().toIso8601String()
      ..demographic = (EndpointDemographicBuilder()
        ..appVersion = deviceContextInfo?.appVersion
        ..locale = deviceContextInfo?.locale
        ..make = deviceContextInfo?.make
        ..model = deviceContextInfo?.model
        ..modelVersion = deviceContextInfo?.modelVersion
        ..platform = deviceContextInfo?.platform?.name
        ..platformVersion = deviceContextInfo?.platformVersion
        ..timezone = deviceContextInfo?.timezone)
      ..location =
          (EndpointLocationBuilder()..country = deviceContextInfo?.countryCode);

    _instance = EndpointClient(
      appId,
      fixedEndpointId,
      pinpointClient,
      globalFieldsManager,
      endpointBuilder,
    );
    return _instance!;
  }

  final String _appId;
  final PinpointClient _pinpointClient;

  final String _fixedEndpointId;

  /// Retrieve unique id for identifying the Endpoint on this device
  String get fixedEndpointId => _fixedEndpointId;

  // Current Endpoint being managed
  final PublicEndpointBuilder _endpointBuilder;
  final EndpointGlobalFieldsManager _globalFieldsManager;

  static final AmplifyLogger _logger =
      AmplifyLogger.category(Category.analytics).createChild('EndpointClient');

  static const String _endpointIdStorageKey = 'UniqueId';

  /// Add an attribute that will be sent with all future events
  Future<void> addAttribute(String name, String value) async =>
      _globalFieldsManager.addAttribute(name, value);

  /// Remove an attribute so it is not sent with all future events
  Future<void> removeAttribute(String name) async =>
      _globalFieldsManager.removeAttribute(name);

  /// Add a metric that will be sent with all future events
  Future<void> addMetric(String name, double value) async =>
      _globalFieldsManager.addMetric(name, value);

  /// Remove a metric so it is not sent with all future events
  Future<void> removeMetric(String name) async =>
      _globalFieldsManager.removeMetric(name);

  /// Update the UserProfile object of the EndpointProfile.
  ///
  /// Copies the fields of [userProfile]
  /// into a [EndpointUserBuilder] and [PublicEndpointBuilder].
  Future<void> setUser(
    String userId,
    AnalyticsUserProfile userProfile,
  ) async {
    final newUserBuilder = EndpointUserBuilder()..userId = userId;

    // TODO(fjnoyp): introduce a new AWSPinpointUserProfile subclass of AnalyticsUserProfile
    // Which will contain 'userAttributes' that will be stored on EndpointUserBuilder

    // The [AnalyticsUserProfile] name, email, and plan fields are added as regular attributes to the local Endpoint
    if (userProfile.name != null) {
      await addAttribute('name', userProfile.name!);
    }
    if (userProfile.email != null) {
      await addAttribute('email', userProfile.email!);
    }
    if (userProfile.plan != null) {
      await addAttribute('plan', userProfile.plan!);
    }

    if (userProfile.location != null) {
      final newLocation = userProfile.location!;
      final locationBuilder = _endpointBuilder.location;

      // Null check so we don't overwrite existing non null values
      if (newLocation.latitude != null) {
        locationBuilder.latitude = newLocation.latitude;
      }
      if (newLocation.longitude != null) {
        locationBuilder.longitude = newLocation.longitude;
      }
      if (newLocation.postalCode != null) {
        locationBuilder.postalCode = newLocation.postalCode;
      }
      if (newLocation.city != null) {
        locationBuilder.city = newLocation.city;
      }
      if (newLocation.region != null) {
        locationBuilder.region = newLocation.region;
      }
      if (newLocation.country != null) {
        locationBuilder.country = newLocation.country;
      }
    }

    // Note that the [copyFromProfile]'s properties are copied to Endpoint metrics/attributes
    // Instead of the [EndpointUserBuilder] object
    if (userProfile.properties != null) {
      await _globalFieldsManager
          .addAttributes(userProfile.properties!.attributes);
      await _globalFieldsManager.addMetrics(userProfile.properties!.metrics);
    }

    _endpointBuilder.user = newUserBuilder;

    await updateEndpoint();
  }

  /// Return Endpoint instance
  /// Copy globalAttributes and globalMetrics into EndpointBuilder before build()
  PublicEndpoint getPublicEndpoint() {
    // Attributes must be sent with map value type List<String>, not String
    final attributes = <String, List<String>>{};
    _globalFieldsManager.globalAttributes.forEach((key, value) {
      attributes[key] = [value];
    });

    _endpointBuilder
      ..attributes = ListMultimapBuilder(attributes)
      ..metrics = MapBuilder(_globalFieldsManager.globalMetrics);
    return _endpointBuilder.build();
  }

  /// Send local Endpoint instance to AWS Pinpoint
  Future<void> updateEndpoint() async {
    try {
      await _pinpointClient
          .updateEndpoint(
            UpdateEndpointRequest(
              applicationId: _appId,
              endpointId: _fixedEndpointId,
              endpointRequest: _endpointToRequest(getPublicEndpoint()),
            ),
          )
          .result;
    } on Exception catch (error) {
      _logger.error('updateEndpoint - exception encountered: $error');
      rethrow;
    }
  }

  /// Create an EndpointRequest object from a local Endpoint instance
  EndpointRequest _endpointToRequest(PublicEndpoint publicEndpoint) {
    return EndpointRequest.build(
      (b) => b
        ..address = publicEndpoint.address
        ..attributes.replace(publicEndpoint.attributes)
        ..channelType = publicEndpoint.channelType
        ..demographic = publicEndpoint.demographic?.toBuilder()
        ..effectiveDate = publicEndpoint.effectiveDate
        ..endpointStatus = publicEndpoint.endpointStatus
        ..location = publicEndpoint.location?.toBuilder()
        ..metrics.replace(publicEndpoint.metrics ?? const {})
        ..optOut = publicEndpoint.optOut
        ..requestId = publicEndpoint.requestId
        ..user = publicEndpoint.user?.toBuilder(),
    );
  }
}
