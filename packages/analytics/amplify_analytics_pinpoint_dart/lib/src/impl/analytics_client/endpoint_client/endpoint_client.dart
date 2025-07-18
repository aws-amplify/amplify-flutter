// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/exception/pinpoint_analytics_exception.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/aws_pinpoint_user_profile.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_global_fields_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_info_store_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/device_context_info_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:built_collection/built_collection.dart';

/// {@template amplify_analytics_pinpoint_dart.endpoint_client}
/// Manages fields of a Pinpoint Endpoint local object.
///
/// Uses [PinpointClient] to update AWS Pinpoint Endpoint.
///
/// For more details see [Pinpoint Endpoint](https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints.html) online spec.
/// {@endtemplate}
class EndpointClient {
  /// {@macro amplify_analytics_pinpoint_dart.endpoint_client}
  EndpointClient({
    required String pinpointAppId,
    required PinpointClient pinpointClient,
    required EndpointInfoStoreManager endpointInfoStoreManager,
    DeviceContextInfo? deviceContextInfo,
  }) : _pinpointAppId = pinpointAppId,
       _pinpointClient = pinpointClient,
       _fixedEndpointId = endpointInfoStoreManager.endpointId,
       _globalFieldsManager = endpointInfoStoreManager.endpointFields,
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
         location: EndpointLocation(country: deviceContextInfo?.countryCode),
       ).toBuilder();

  late final String _fixedEndpointId;
  late final EndpointGlobalFieldsManager _globalFieldsManager;

  final String _pinpointAppId;
  final PinpointClient _pinpointClient;

  // Current Endpoint being managed
  final PublicEndpointBuilder _endpointBuilder;

  /// Retrieve unique id for identifying the Endpoint on this device.
  String get fixedEndpointId => _fixedEndpointId;

  /// Add an attribute that will be sent with all future events.
  Future<void> addAttribute(String name, String value) async =>
      _globalFieldsManager.addAttribute(name, value);

  /// Remove an attribute so it is not sent with all future events.
  Future<void> removeAttribute(String name) async =>
      _globalFieldsManager.removeAttribute(name);

  /// Add a metric that will be sent with all future events.
  Future<void> addMetric(String name, double value) async =>
      _globalFieldsManager.addMetric(name, value);

  /// Remove a metric so it is not sent with all future events.
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
  Future<void> setUser(String userId, UserProfile? userProfile) async {
    final newUserBuilder = EndpointUserBuilder()..userId = userId;

    // The [AnalyticsUserProfile] name, email, and plan fields are added as regular attributes to the local Endpoint

    if (userProfile?.name != null) {
      await addAttribute('name', userProfile!.name ?? '');
    }
    if (userProfile?.email != null) {
      await addAttribute('email', userProfile!.email ?? '');
    }
    if (userProfile?.plan != null) {
      await addAttribute('plan', userProfile!.plan ?? '');
    }

    if (userProfile?.location != null) {
      final newLocation = userProfile!.location!;
      _endpointBuilder.location
        ..latitude = newLocation.latitude
        ..longitude = newLocation.longitude
        ..postalCode = newLocation.postalCode
        ..city = newLocation.city
        ..region = newLocation.region
        ..country = newLocation.country;
    } else {
      _endpointBuilder.location = null;
    }

    // Note that the [copyFromProfile]'s properties are copied to Endpoint metrics/attributes.
    // Instead of the [EndpointUserBuilder] object.
    // TODO(kylechen): Analytics API provides no way to remove these attributes ...
    if (userProfile?.customProperties != null) {
      await _globalFieldsManager.addAttributes(
        userProfile!.customProperties!.attributes,
      );
      await _globalFieldsManager.addMetrics(
        userProfile.customProperties!.metrics,
      );
    }

    if (userProfile is AWSPinpointUserProfile &&
        userProfile.userAttributes != null) {
      newUserBuilder.userAttributes = ListMultimapBuilder(
        userProfile.userAttributes,
      );
    }

    _endpointBuilder.user = newUserBuilder;
  }

  /// Return Endpoint instance.
  /// Copy globalAttributes and globalMetrics into EndpointBuilder before build().
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

  /// Send local Endpoint instance to AWS Pinpoint.
  Future<void> updateEndpoint() async {
    try {
      await _pinpointClient
          .updateEndpoint(
            UpdateEndpointRequest(
              applicationId: _pinpointAppId,
              endpointId: _fixedEndpointId,
              endpointRequest: _endpointToRequest(getPublicEndpoint()),
            ),
          )
          .result;
    } on Exception catch (e) {
      throw fromPinpointException(e);
    }
  }

  /// Create an EndpointRequest object from a local Endpoint instance.
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
