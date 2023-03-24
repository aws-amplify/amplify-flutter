const standardAndroidPushMessage = {
  'title': 'TITTLE',
  'body': 'BODY',
  'imageUrl': null,
  'channelId': 'PINPOINT.NOTIFICATION',
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
  'channelId': 'PINPOINT.NOTIFICATION',
  'action': {'openApp': null, 'url': 'URL', 'deeplink': 'DEEPLINK'},
  'rawData': {
    'pinpoint.url': 'URL',
    'pinpoint.notification.title': 'TITTLE',
    'pinpoint.notification.body': 'BODY',
    'pinpoint.campaign.campaign_id': '_DIRECT',
    'pinpoint.notification.silentPush': 0
  }
};
