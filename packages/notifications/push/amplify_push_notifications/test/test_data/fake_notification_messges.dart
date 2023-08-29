// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Erase types on maps to mimic how maps come back from the platform.
Map<Object?, Object?> _eraseTypes(Map<Object?, Object?> map) => {
      for (final MapEntry(:key, :value) in map.entries)
        key: switch (value) {
          final Map<Object?, Object?> map => _eraseTypes(map),
          _ => value,
        },
    };

final standardAndroidPushMessage = _eraseTypes({
  'title': 'TITTLE',
  'body': 'BODY',
  'imageUrl': null,
  'fcmOptions': {
    'channelId': 'PINPOINT.NOTIFICATION',
  },
  'action': {'openApp': true, 'url': null, 'deeplink': null},
  'rawData': {
    'pinpoint.openApp': true,
    'pinpoint.notification.title': 'TITTLE',
    'pinpoint.notification.body': 'BODY',
    'pinpoint.campaign.campaign_id': '_DIRECT',
    'pinpoint.notification.silentPush': 0,
  },
});

final urlsAndroidMessage = _eraseTypes({
  'title': 'TITTLE',
  'body': 'BODY',
  'imageUrl': null,
  'fcmOptions': {
    'channelId': 'PINPOINT.NOTIFICATION',
  },
  'action': {'openApp': null, 'url': 'URL', 'deeplink': 'DEEPLINK'},
  'rawData': {
    'pinpoint.url': 'URL',
    'pinpoint.notification.title': 'TITTLE',
    'pinpoint.notification.body': 'BODY',
    'pinpoint.campaign.campaign_id': '_DIRECT',
    'pinpoint.notification.silentPush': 0,
  },
});

final imageUrlAndroidPushMessage = _eraseTypes({
  'title': 'TITTLE',
  'body': 'BODY',
  'imageUrl': 'TEST_URL',
  'fcmOptions': {
    'channelId': 'PINPOINT.NOTIFICATION',
  },
  'action': {'openApp': true, 'url': null, 'deeplink': null},
  'rawData': {
    'pinpoint.openApp': true,
    'pinpoint.notification.title': 'TITTLE',
    'pinpoint.notification.body': 'BODY',
    'pinpoint.campaign.campaign_id': '_DIRECT',
    'pinpoint.notification.silentPush': 0,
  },
});

final standardiOSMessage = _eraseTypes({
  'aps': {
    'alert': {'title': 'TITTLE', 'body': 'BODY'},
    'mutable-content': 0,
    'content-available': 1,
  },
});

final simpleAlertiOSMessage = _eraseTypes({
  'aps': {
    'alert': 'Hello, world',
  },
});

final imageUrliOSMessage = _eraseTypes({
  'data': {
    'media-url': 'TEST_URL',
  },
  'aps': {
    'alert': {'title': 'TITTLE', 'body': 'BODY'},
    'mutable-content': 0,
    'content-available': 1,
  },
});

final urlsiOSMessage = _eraseTypes({
  'data': {
    'pinpoint': {'deeplink': 'URL'},
  },
  'aps': {
    'alert': {'title': 'TITTLE', 'body': 'BODY'},
    'mutable-content': 0,
    'content-available': 1,
  },
});
