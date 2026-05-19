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
  'title': 'TITLE',
  'body': 'BODY',
  'imageUrl': null,
  'fcmOptions': {'channelId': 'DEFAULT_CHANNEL'},
  'action': {'openApp': true, 'url': null, 'deeplink': null},
  'data': {},
});

final urlsAndroidMessage = _eraseTypes({
  'title': 'TITLE',
  'body': 'BODY',
  'imageUrl': null,
  'fcmOptions': {'channelId': 'DEFAULT_CHANNEL'},
  'action': {'openApp': null, 'url': 'URL', 'deeplink': 'DEEPLINK'},
  'data': {},
});

final imageUrlAndroidPushMessage = _eraseTypes({
  'title': 'TITLE',
  'body': 'BODY',
  'imageUrl': 'TEST_URL',
  'fcmOptions': {'channelId': 'DEFAULT_CHANNEL'},
  'action': {'openApp': true, 'url': null, 'deeplink': null},
  'data': {},
});

final standardiOSMessage = _eraseTypes({
  'aps': {
    'alert': {'title': 'TITLE', 'body': 'BODY'},
    'mutable-content': 0,
    'content-available': 1,
  },
  'data': {},
});

final simpleAlertiOSMessage = _eraseTypes({
  'aps': {'alert': 'Hello, world'},
  'data': {},
});

final imageUrliOSMessage = _eraseTypes({
  'data': {'media-url': 'TEST_URL'},
  'aps': {
    'alert': {'title': 'TITLE', 'body': 'BODY'},
  },
});

final urlsiOSMessage = _eraseTypes({
  'data': {
    'pinpoint': {'deeplink': 'URL'},
  },
  'aps': {
    'alert': {'title': 'TITLE', 'body': 'BODY'},
  },
});
