// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io' show Platform;

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_push_notifications_pinpoint/src/event_info_type.dart';
import 'package:flutter/material.dart';

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

  late FlutterAnalyticsClient _analyticsClient;

  static const _androidCampaignIdKey = 'pinpoint.campaign.campaign_id';
  static const _androidCampaignActivityIdKey =
      'pinpoint.campaign.campaign_activity_id';
  static const _androidCampaignTreatmentIdKey =
      'pinpoint.campaign.treatment_id';
  bool _isInitialized = false;

  @override
  Future<void> init({
    required NotificationsPinpointPluginConfig config,
    required AmplifyAuthProviderRepository authProviderRepo,
    @visibleForTesting FlutterAnalyticsClient? mockAnalyticsClient,
  }) async {
    try {
      if (!_isInitialized) {
        final authProvider = authProviderRepo
            .getAuthProvider(APIAuthorizationType.iam.authProviderToken);

        if (authProvider == null) {
          throw const PushNotificationException(
            'No AWSIamAmplifyAuthProvider available. Is Auth category added and configured?',
          );
        }
        final region = config.region;
        final appId = config.appId;

        _analyticsClient = mockAnalyticsClient ??
            FlutterAnalyticsClient(
              endpointInfoStoreManager: FlutterEndpointInfoStoreManager(
                storageScope: EndpointStorageScope.pushNotifications,
              ),
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
    required AnalyticsUserProfile userProfile,
  }) async {
    try {
      if (!_isInitialized) {
        throw ConfigurationError(
          'Pinpoint Provider is not initialized.',
          recoverySuggestion:
              'Make sure Pinpoint service provider client is initialized before using this method.',
        );
      }
      await _analyticsClient.endpointClient.setUser(
        userId,
        userProfile,
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
      await _analyticsClient.eventClient.recordEvent(
        eventType: '${eventInfo.source}.${eventType.name}',
        properties: eventInfo.properties,
      );
    } on Exception catch (e) {
      _logger.error('Unable to record event: $e');
    }
  }

  @override
  Future<void> registerDevice(String deviceToken) async {
    try {
      if (!_isInitialized) {
        _logger.error(
          'Pinpoint provider not configured.',
        );
        return;
      }
      _analyticsClient.endpointClient.address = deviceToken;
      final channelType = _getChannelType();
      if (channelType != null) {
        _analyticsClient.endpointClient.channelType = channelType;
      }
      _analyticsClient.endpointClient.optOut = 'NONE';
      await _analyticsClient.endpointClient.updateEndpoint();
    } on AWSHttpException catch (e) {
      _logger.error('Network problem when registering device: ', e);
    }
  }

  @visibleForTesting
  EventInfo constructEventInfo({
    required PushNotificationMessage notification,
  }) {
    final data = notification.data;
    final analyticsProperties = AnalyticsProperties();
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

  ChannelType? _getChannelType() {
    if (Platform.isAndroid) {
      return ChannelType.gcm;
    } else if (Platform.isIOS) {
      if (zDebugMode) {
        return ChannelType.apnsSandbox;
      }
      return ChannelType.apns;
    }
    return null;
  }
}
