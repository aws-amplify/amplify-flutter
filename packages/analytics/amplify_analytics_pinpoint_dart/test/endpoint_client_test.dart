// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_info_store_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_store_keys.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:mocktail/mocktail.dart';

import 'package:test/test.dart';

import 'common/mock_device_context_info.dart';
import 'common/mock_endpoint_values.dart';
import 'common/mock_secure_storage.dart';
import 'common/mock_values.dart';
import 'common/mocktail_mocks.dart';

void main() {
  late final EndpointClient endpointClient;
  late final MockPinpointClient pinpointClient;
  final mockEndpointId = uuid();

  group('EndpointClient ', () {
    setUpAll(() async {
      // To allow mocked calls to UpdateEndpoint
      registerFallbackValue(
        UpdateEndpointRequest(
          applicationId: 'test',
          endpointId: 'test',
          endpointRequest: EndpointRequest(),
        ),
      );

      pinpointClient = MockPinpointClient();

      final mockStore = MockSecureStorage();
      EndpointStore(pinpointAppId, mockStore).write(
        key: EndpointStoreKey.endpointId.name,
        value: mockEndpointId,
      );
      final mockEndpointInfoStoreManager =
          EndpointInfoStoreManager(store: mockStore);

      await mockEndpointInfoStoreManager.init(pinpointAppId: pinpointAppId);

      endpointClient = EndpointClient(
        pinpointAppId: pinpointAppId,
        pinpointClient: pinpointClient,
        endpointInfoStoreManager: mockEndpointInfoStoreManager,
        deviceContextInfo: mockDeviceContextInfo,
      );
    });

    tearDown(resetMocktailState);

    test('provides correct endpointId', () async {
      expect(endpointClient.fixedEndpointId, mockEndpointId);
    });

    test('demographic and device info sent in updateEndpointRequest', () async {
      when(() => pinpointClient.updateEndpoint(any<UpdateEndpointRequest>()))
          .thenReturn(
        mockSmithyOperation(
          () => UpdateEndpointResponse(
            messageBody: MessageBody(
              message: 'message',
              requestId: 'requestId',
            ),
          ),
        ),
      );

      await endpointClient.updateEndpoint();

      final captured = verify(() => pinpointClient.updateEndpoint(captureAny()))
          .captured[0] as UpdateEndpointRequest;

      expect(captured.applicationId, pinpointAppId);
      expect(captured.endpointId, mockEndpointId);

      final endpointRequest = captured.endpointRequest;

      expect(endpointRequest.attributes, isEmpty);
      expect(endpointRequest.metrics, isEmpty);

      // Demographics
      expect(endpointRequest.demographic, isNotNull);
      final demographic = endpointRequest.demographic!;

      expect(demographic.appVersion, mockDeviceContextInfo.appVersion);
      expect(demographic.locale, mockDeviceContextInfo.locale);
      expect(demographic.make, mockDeviceContextInfo.make);
      expect(demographic.model, mockDeviceContextInfo.model);
      expect(demographic.modelVersion, mockDeviceContextInfo.modelVersion);
      expect(demographic.platform, mockDeviceContextInfo.platform!.name);
      expect(
        demographic.platformVersion,
        mockDeviceContextInfo.platformVersion,
      );
      expect(demographic.timezone, mockDeviceContextInfo.timezone);

      // Location
      expect(endpointRequest.location, isNotNull);
      final location = endpointRequest.location!;

      expect(location.country, mockDeviceContextInfo.countryCode);
      expect(location.latitude, isNull);
      expect(location.longitude, isNull);
    });

    test('channelType, address, and optOut sent in updateEndpointRequest',
        () async {
      when(() => pinpointClient.updateEndpoint(any<UpdateEndpointRequest>()))
          .thenReturn(
        mockSmithyOperation(
          () => UpdateEndpointResponse(
            messageBody: MessageBody(
              message: 'message',
              requestId: 'requestId',
            ),
          ),
        ),
      );

      endpointClient
        ..channelType = channelType
        ..address = address
        ..optOut = optOut;

      await endpointClient.updateEndpoint();

      final captured = verify(() => pinpointClient.updateEndpoint(captureAny()))
          .captured[0] as UpdateEndpointRequest;

      final endpointRequest = captured.endpointRequest;

      expect(endpointRequest.channelType, channelType);
      expect(endpointRequest.address, address);
      expect(endpointRequest.optOut, optOut);
    });

    test('values from setUser sent in updateEndpointRequest', () async {
      when(() => pinpointClient.updateEndpoint(any<UpdateEndpointRequest>()))
          .thenReturn(
        mockSmithyOperation(
          () => UpdateEndpointResponse(
            messageBody: MessageBody(
              message: 'message',
              requestId: 'requestId',
            ),
          ),
        ),
      );

      await endpointClient.setUser(
        userId,
        userProfile,
      );

      await endpointClient.updateEndpoint();

      final captured = verify(() => pinpointClient.updateEndpoint(captureAny()))
          .captured[0] as UpdateEndpointRequest;

      final endpointRequest = captured.endpointRequest;

      // Attributes
      expect(endpointRequest.attributes, isNotNull);
      final attributes = endpointRequest.attributes!;

      expect(attributes['name'], [userProfile.name]);
      expect(attributes['email'], [userProfile.email]);
      expect(attributes['plan'], [userProfile.plan]);
      expect(attributes[stringProperty], [stringValue]);
      expect(attributes[boolProperty], [boolValue.toString()]);

      // Metrics
      expect(endpointRequest.metrics, isNotNull);
      final metrics = endpointRequest.metrics!;

      expect(metrics[doubleProperty], doubleValue);
      expect(metrics[intProperty], intValue);

      // Location
      expect(endpointRequest.location, isNotNull);
      final location = endpointRequest.location!;

      expect(location.city, userLocation.city);
      expect(location.country, userLocation.country);
      expect(location.latitude, userLocation.latitude);
      expect(location.longitude, userLocation.longitude);
      expect(location.postalCode, userLocation.postalCode);
      expect(location.region, userLocation.region);
    });

    test('getPublicEndpoint returns an Endpoint with all set values', () async {
      endpointClient
        ..channelType = channelType
        ..address = address
        ..optOut = optOut;

      await endpointClient.setUser(
        userId,
        userProfile,
      );

      final endpoint = endpointClient.getPublicEndpoint();

      expect(endpoint.address, address);
      expect(endpoint.channelType, channelType);
      expect(endpoint.optOut, optOut);

      // Attributes
      expect(endpoint.attributes, isNotNull);
      final attributes = endpoint.attributes!;

      expect(attributes['name'], [userProfile.name]);
      expect(attributes['email'], [userProfile.email]);
      expect(attributes['plan'], [userProfile.plan]);
      expect(attributes[stringProperty], [stringValue]);
      expect(attributes[boolProperty], [boolValue.toString()]);

      // Demographic
      expect(endpoint.demographic, isNotNull);
      final demographic = endpoint.demographic!;

      expect(demographic.appVersion, mockDeviceContextInfo.appVersion);
      expect(demographic.locale, mockDeviceContextInfo.locale);
      expect(demographic.make, mockDeviceContextInfo.make);
      expect(demographic.model, mockDeviceContextInfo.model);
      expect(demographic.modelVersion, mockDeviceContextInfo.modelVersion);
      expect(demographic.platform, mockDeviceContextInfo.platform!.name);
      expect(
        demographic.platformVersion,
        mockDeviceContextInfo.platformVersion,
      );

      // Location
      expect(endpoint.location, isNotNull);
      final location = endpoint.location!;

      expect(location.city, userLocation.city);
      expect(location.country, userLocation.country);
      expect(location.latitude, userLocation.latitude);
      expect(location.longitude, userLocation.longitude);
      expect(location.postalCode, userLocation.postalCode);
      expect(location.region, userLocation.region);

      //Metrics
      expect(endpoint.metrics, isNotNull);
      final metrics = endpoint.metrics!;

      expect(metrics[doubleProperty], doubleValue);
      expect(metrics[intProperty], intValue);

      // User
      expect(endpoint.user, isNotNull);
      expect(endpoint.user!.userId, userId);

      // userAttributes cannot be set using category API (must use Pinpoint specific)
      expect(endpoint.user!.userAttributes, isNull);
    });

    test(
        'updateEndpoint throws AnalyticsException from unrecognized exceptions',
        () async {
      when(() => pinpointClient.updateEndpoint(any())).thenThrow(Exception());

      expect(
        endpointClient.updateEndpoint(),
        throwsA(
          isA<AnalyticsException>(),
        ),
      );
    });
  });
}
