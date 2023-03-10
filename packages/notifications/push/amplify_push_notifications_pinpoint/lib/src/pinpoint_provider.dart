// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io' show Platform;

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';

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
  PinpointProvider() {
    _androidCampaignIdKey += _campaginIdKey;
    _androidCampaignActivityIdKey += _campaignActivityIdKey;
    _androidCampaignTreatmentIdKey += _treatmentIdKey;
  }

  late FlutterAnalyticsClient _analyticsClient;

  static const _campaginIdKey = 'campaign_id';
  static const _campaignActivityIdKey = 'campaign_activity_id';
  static const _treatmentIdKey = 'treatment_id';
  String _androidCampaignIdKey = 'pinpoint.campaign.';
  String _androidCampaignActivityIdKey =
      'pinpoint.campaign.campaign_activity_id';
  String _androidCampaignTreatmentIdKey = 'pinpoint.campaign.treatment_id';
  bool _isInitialized = false;

  @override
  Future<void> init({
    required NotificationsPinpointPluginConfig config,
    required AmplifyAuthProviderRepository authProviderRepo,
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

        _analyticsClient = FlutterAnalyticsClient(
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
      _logger.error('Unable to initialize the Analytics Client: $e');
    }
  }

  @override
  Future<void> identifyUser({
    required String userId,
    required AnalyticsUserProfile userProfile,
  }) async {
    try {
      if (!_isInitialized) {
        _logger.error(
          'Pinpoint provider not configured, re-run Amplify.configure',
        );
        return;
      }
      await _analyticsClient.endpointClient.setUser(
        userId,
        userProfile,
      );
    } on Exception catch (e) {
      _logger.error('Unable to register user details: $e');
    }
  }

  @override
  Future<void> recordNotificationEvent({
    required AWSPinpointMessageEvent eventType,
    required PushNotificationMessage notification,
  }) async {
    try {
      if (!_isInitialized) {
        _logger.error(
          'Pinpoint provider not configured, re-run Amplify.configure',
        );
        return;
      }
      if (notification.data.isEmpty) {
        _logger.error(
          'Notification missing event information was not recorded',
        );
        return;
      }

      final eventInfo = _constructEventInfo(notification: notification);
      await _analyticsClient.eventClient.recordEvent(
        eventType: '${eventInfo.first as String}.${eventType.name}',
        properties: eventInfo.last as AnalyticsProperties,
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
          'Pinpoint provider not configured, re-run Amplify.configure',
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

  Set<Object> _constructEventInfo({
    required PushNotificationMessage notification,
  }) {
    final data = notification.data;
    final analyticsProperties = AnalyticsProperties();
    var source = AWSPinpointMessageEventSource.campaign.name;
    var campaign = <String, String>{};
    var journey = <String, String>{};
    var pinpointData = <Object?, Object?>{};

    // Android payload contain pinpoint.campaign.* format
    if (data.containsKey(_androidCampaignIdKey)) {
      source = AWSPinpointMessageEventSource.campaign.name;
      campaign[_campaginIdKey] = data[_androidCampaignIdKey] as String;
      if (data.containsKey(_androidCampaignActivityIdKey)) {
        campaign[_campaignActivityIdKey] =
            data[_androidCampaignActivityIdKey] as String;
      }
      if (data.containsKey(_androidCampaignTreatmentIdKey)) {
        campaign[_treatmentIdKey] =
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
        source = AWSPinpointMessageEventSource.campaign.name;
        campaign = Map<String, String>.from(
          pinpointData['campaign'] as Map<Object?, Object?>,
        );
      }

      // Common way of represting journeys both on Android and iOS payloads
      if (pinpointData.containsKey('journey')) {
        source = AWSPinpointMessageEventSource.journey.name;
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
    analyticsProperties.addBoolProperty(
      'isTestEvent',
      true,
    );
    return {source, analyticsProperties};
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
