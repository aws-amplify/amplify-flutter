// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/aws_pinpoint_user_profile.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_global_fields_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_id_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/device_context_info_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/legacy_native_data_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:built_collection/built_collection.dart';
import 'package:meta/meta.dart';

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
  EndpointClient({
    required String pinpointAppId,
    required PinpointClient pinpointClient,
    DeviceContextInfo? deviceContextInfo,
  })  : _pinpointAppId = pinpointAppId,
        _pinpointClient = pinpointClient,
        _endpointBuilder = PublicEndpoint(
          effectiveDate: DateTime.now().toUtc().toIso8601String(),
          demographic: EndpointDemographic(
            appVersion: deviceContextInfo?.appVersion,
            locale: deviceContextInfo?.locale,
            make: deviceContextInfo?.make,
            model: deviceContextInfo?.model,
            modelVersion: deviceContextInfo?.modelVersion,
            platform: deviceContextInfo?.platform?.name,
            platformVersion: deviceContextInfo?.platformVersion,
            timezone: deviceContextInfo?.timezone,
          ),
          location: EndpointLocation(
            country: deviceContextInfo?.countryCode,
          ),
        ).toBuilder();

  /// Initialize [EndpointClient] by retrieving the endpoint id and
  /// initializing the [EndpointGlobalFieldsManager]
  @visibleForTesting
  Future<void> init({
    required SecureStorageInterface endpointInfoStore,
    LegacyNativeDataProvider? legacyNativeDataProvider,
  }) async {
    final endpointIdManager = EndpointIdManager(
      store: endpointInfoStore,
      legacyNativeDataProvider: legacyNativeDataProvider,
      pinpointAppId: _pinpointAppId,
    );
    _fixedEndpointId = await endpointIdManager.retrieveEndpointId();

    _globalFieldsManager =
        await EndpointGlobalFieldsManager.create(endpointInfoStore);
  }

  /// Create and initialize an [EndpointClient]
  static Future<EndpointClient> create({
    required String pinpointAppId,
    required PinpointClient pinpointClient,
    required SecureStorageInterface endpointInfoStore,
    DeviceContextInfo? deviceContextInfo,
    LegacyNativeDataProvider? legacyNativeDataProvider,
  }) async {
    final endpointClient = EndpointClient(
      pinpointAppId: pinpointAppId,
      pinpointClient: pinpointClient,
      deviceContextInfo: deviceContextInfo,
    );
    await endpointClient.init(
      endpointInfoStore: endpointInfoStore,
      legacyNativeDataProvider: legacyNativeDataProvider,
    );
    return endpointClient;
  }

  late final String _fixedEndpointId;
  late final EndpointGlobalFieldsManager _globalFieldsManager;

  final String _pinpointAppId;
  final PinpointClient _pinpointClient;

  // Current Endpoint being managed
  final PublicEndpointBuilder _endpointBuilder;

  /// Retrieve unique id for identifying the Endpoint on this device
  String get fixedEndpointId => _fixedEndpointId;

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

  set channelType(ChannelType? channelType) =>
      _endpointBuilder.channelType = channelType;
  set address(String? address) => _endpointBuilder.address = address;
  set optOut(String? optOut) => _endpointBuilder.optOut = optOut;

  /// Update the UserProfile object of the EndpointProfile.
  ///
  /// Copies the fields of [userProfile]
  /// into a [EndpointUserBuilder] and [PublicEndpointBuilder].
  Future<void> setUser(
    String userId,
    AnalyticsUserProfile userProfile,
  ) async {
    final newUserBuilder = EndpointUserBuilder()..userId = userId;

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

    if (userProfile is AWSPinpointUserProfile) {
      final attributes = <String, List<String>>{};
      userProfile.userAttributes.getAllProperties().forEach((key, value) {
        attributes[key] = [value.toString()];
      });
      newUserBuilder.userAttributes = ListMultimapBuilder(attributes);
    }

    _endpointBuilder.user = newUserBuilder;
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
    await _pinpointClient
        .updateEndpoint(
          UpdateEndpointRequest(
            applicationId: _pinpointAppId,
            endpointId: _fixedEndpointId,
            endpointRequest: _endpointToRequest(getPublicEndpoint()),
          ),
        )
        .result;
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
