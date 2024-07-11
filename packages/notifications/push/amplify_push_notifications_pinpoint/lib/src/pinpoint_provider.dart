// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io' show Platform;

// Analytics Imports
// ignore: implementation_imports
import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/flutter_device_context_info_provider.dart';
// ignore: implementation_imports
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/analytics_client.dart';
// ignore: implementation_imports
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/channel_type.dart';
import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/notifications/notifications_outputs.dart';
import 'package:amplify_push_notifications_pinpoint/src/event_info_type.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:flutter/widgets.dart';

final AmplifyLogger _logger = AmplifyLogger.category(Category.pushNotifications)
    .createChild('AmplifyPushNotification');

/// {@template amplify_push_notifications_pinpoint.pinpoint_provider}
/// AWS Pinpoint provider that implements [ServiceProviderClient].
///
/// [init] method has to be called before other methods can be used.
/// Once initialized, it can [registerDevice], [recordNotificationEvent]
/// & [identifyUser] with Pinpoint.
/// {@endtemplate}
class PinpointProvider implements ServiceProviderClient {
  /// {@macro amplify_push_notifications_pinpoint.pinpoint_provider}

  late AnalyticsClient _analyticsClient;

  static const _androidCampaignIdKey = 'pinpoint.campaign.campaign_id';
  static const _androidCampaignActivityIdKey =
      'pinpoint.campaign.campaign_activity_id';
  static const _androidCampaignTreatmentIdKey =
      'pinpoint.campaign.treatment_id';
  bool _isInitialized = false;

  /// UserAgent string for Push Notifications made public for testing
  @visibleForTesting
  static const userAgent = 'pushnotifications';

  static R _withUserAgent<R>(R Function() fn) {
    final globalUserAgent =
        // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
        Amplify.dependencies.getOrCreate<AmplifyUserAgent>();
    return globalUserAgent.runWith(
      updates: (ua) => ua.addComponent(userAgent),
      fn,
    );
  }

  @override
  Future<void> init({
    required NotificationsOutputs config,
    required AmplifyAuthProviderRepository authProviderRepo,
    @visibleForTesting AnalyticsClient? analyticsClient,
  }) async {
    try {
      if (!_isInitialized) {
        final authProvider = authProviderRepo
            .getAuthProvider(APIAuthorizationType.iam.authProviderToken);

        if (authProvider == null) {
          throw ConfigurationError(
            'No AWSIamAmplifyAuthProvider available. Is Auth category added and configured?',
          );
        }
        final region = config.awsRegion;
        final appId = config.amazonPinpointAppId;

        final secureStorageFactory = AmplifySecureStorage.factoryFrom();

        final endpointStorage = secureStorageFactory(
          AmplifySecureStorageScope.awsPinpointAnalyticsPlugin,
        );

        _analyticsClient = analyticsClient ??
            AnalyticsClient(
              endpointStorage: endpointStorage,
              deviceContextInfoProvider:
                  const FlutterDeviceContextInfoProvider(),
            );

        await _analyticsClient.init(
          pinpointAppId: appId,
          region: region,
          authProvider: authProvider,
        );

        _isInitialized = true;
      }
    } on Exception catch (e) {
      throw PushNotificationException(
        'Unable to initialize the Pinpoint provider.',
        recoverySuggestion:
            'Make sure Auth and Analytics categories are set up correctly.',
        underlyingException: e,
      );
    }
  }

  @override
  Future<void> identifyUser({
    required String userId,
    UserProfile? userProfile,
  }) async {
    try {
      if (!_isInitialized) {
        throw ConfigurationError(
          'Pinpoint Provider is not initialized.',
          recoverySuggestion:
              'Make sure Pinpoint service provider client is initialized before using this method.',
        );
      }

      // setUser does not have any underlying network calls, hence not running it _withUserAgent
      await _analyticsClient.endpointClient.setUser(
        userId,
        userProfile,
      );
      await _withUserAgent(
        () async => _analyticsClient.endpointClient.updateEndpoint(),
      );
    } on Exception catch (e) {
      throw PushNotificationException(
        'Unable to identify user.',
        recoverySuggestion:
            'Make sure Auth and Analytics categories are set up correctly.',
        underlyingException: e,
      );
    }
  }

  @override
  Future<void> recordNotificationEvent({
    required PinpointEventType eventType,
    required PushNotificationMessage notification,
  }) async {
    try {
      if (!_isInitialized) {
        _logger.error(
          'Pinpoint provider not configured.',
        );
        return;
      }
      if (notification.data.isEmpty) {
        _logger.error(
          'Notification missing event information was not recorded',
        );
        return;
      }

      final eventInfo = constructEventInfo(notification: notification);

      await _withUserAgent(
        () async => _analyticsClient.eventClient.recordEvent(
          eventType: '${eventInfo.source}.${eventType.name}',
          properties: eventInfo.properties,
        ),
      );
    } on Exception catch (e) {
      _logger.error('Unable to record event: $e');
    }
  }

  @override
  Future<void> registerDevice(String deviceToken) async {
    if (!_isInitialized) {
      _logger.error(
        'Pinpoint provider not configured.',
      );
      return;
    }
    _analyticsClient.endpointClient.address = deviceToken;
    final channelType = _getChannelType();
    _analyticsClient.endpointClient.channelType = channelType;
    _analyticsClient.endpointClient.optOut = 'NONE';
    try {
      await _withUserAgent(
        () async => _analyticsClient.endpointClient.updateEndpoint(),
      );
      // This is allow offline configuration.
      // `EndpointClient.updateEndpoint()` catches all exception and convert
      // them to `AnalyticsException`.
      // `AnalyticsException` converts `AWSHttpException` to `NetworkException`.
    } on NetworkException catch (e) {
      _logger.error('Network problem when registering device: ', e);
      // This is to allow configuration if `EndpointClient.updateEndpoint()`
      // throws UnknownException due to expired token.
      // the underlying exception is `NotAuthorizedException` with
      // `Invalid login token. Token expired` message.
    } on UnknownException catch (e) {
      _logger.error(
        'Could not update Pinpoint endpoint to register the device: ',
        e,
      );
    }
  }

  /// Made public only for testing purposes.
  @visibleForTesting
  EventInfo constructEventInfo({
    required PushNotificationMessage notification,
  }) {
    final data = notification.data;
    final analyticsProperties = CustomProperties();
    var source = PinpointEventSource.campaign.name;
    var campaign = <String, String>{};
    var journey = <String, String>{};
    var pinpointData = <Object?, Object?>{};

    // Android payload contain pinpoint.campaign.* format
    if (data.containsKey(_androidCampaignIdKey)) {
      source = PinpointEventSource.campaign.name;
      campaign['campaign_id'] = data[_androidCampaignIdKey] as String;
      if (data.containsKey(_androidCampaignActivityIdKey)) {
        campaign['campaign_activity_id'] =
            data[_androidCampaignActivityIdKey] as String;
      }
      if (data.containsKey(_androidCampaignTreatmentIdKey)) {
        campaign['treatment_id'] =
            data[_androidCampaignTreatmentIdKey] as String;
      }
    }

    if (data.containsKey('pinpoint')) {
      // Check for nested pinpoint value in Android's data and decode.
      if (data['pinpoint'] is String) {
        pinpointData =
            jsonDecode(data['pinpoint'] as String) as Map<Object?, Object?>;
      } else {
        pinpointData = data['pinpoint'] as Map<Object?, Object?>;
      }

      // iOS payload conatin a nested map of pinpoint, campaign, * format
      if (pinpointData.containsKey('campaign')) {
        source = PinpointEventSource.campaign.name;
        campaign = Map<String, String>.from(
          pinpointData['campaign'] as Map<Object?, Object?>,
        );
      }

      // Common way of represting journeys both on Android and iOS payloads
      if (pinpointData.containsKey('journey')) {
        source = PinpointEventSource.journey.name;
        journey = Map<String, String>.from(
          pinpointData['journey'] as Map<Object?, Object?>,
        );
      }
    }

    if (campaign.isNotEmpty) {
      campaign.forEach(analyticsProperties.addStringProperty);
    }

    if (journey.isNotEmpty) {
      journey.forEach(analyticsProperties.addStringProperty);
    }
    return EventInfo(source, analyticsProperties);
  }

  ChannelType _getChannelType() {
    if (Platform.isAndroid) {
      return ChannelType.gcm;
    } else {
      if (zDebugMode) {
        return ChannelType.apnsSandbox;
      }
      return ChannelType.apns;
    }
  }
}
