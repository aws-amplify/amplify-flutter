// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

const standardAndroidPushMessage = {
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
    'pinpoint.notification.silentPush': 0
  }
};

const urlsAndroidMessage = {
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
    'pinpoint.notification.silentPush': 0
  }
};

const imageUrlAndroidPushMessage = {
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
    'pinpoint.notification.silentPush': 0
  }
};

const standardiOSMessage = {
  'aps': {
    'alert': {'title': 'TITTLE', 'body': 'BODY'},
    'mutable-content': 0,
    'content-available': 1,
  }
};

const imageUrliOSMessage = {
  'data': {
    'media-url': 'TEST_URL',
  },
  'aps': {
    'alert': {'title': 'TITTLE', 'body': 'BODY'},
    'mutable-content': 0,
    'content-available': 1,
  }
};

const urlsiOSMessage = {
  'data': {
    'pinpoint': {'deeplink': 'URL'}
  },
  'aps': {
    'alert': {'title': 'TITTLE', 'body': 'BODY'},
    'mutable-content': 0,
    'content-available': 1
  }
};
