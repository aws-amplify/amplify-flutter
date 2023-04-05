// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

const androidJourneyMessage = {
  'title': 'TITTLE',
  'body': 'BODY',
  'imageUrl': null,
  'fcmOptions': {
    'channelId': 'PINPOINT.NOTIFICATION',
  },
  'action': {'openApp': true, 'url': null, 'deeplink': null},
  'data': {
    'pinpoint.openApp': true,
    'pinpoint.notification.title': 'TITTLE',
    'pinpoint': {
      'journey': {
        'journey_activity_id': 'JOURNEY_ACTIVITY_ID',
        'journey_run_id': 'JOURNEY_RUN_ID',
        'journey_id': 'JOURNEY_ID'
      }
    },
    'pinpoint.notification.body': 'BODY',
    'data': {
      'pinpoint': {'endpointId': 'ENDPOINTID'}
    },
    'pinpoint.notification.silentPush': 0
  }
};

const androidCampaignMessage = {
  'title': 'TITTLE',
  'body': 'BODY',
  'imageUrl': null,
  'fcmOptions': {
    'channelId': 'PINPOINT.NOTIFICATION',
  },
  'action': {'openApp': true, 'url': null, 'deeplink': null},
  'data': {
    'pinpoint.openApp': true,
    'pinpoint.campaign.treatment_id': '0',
    'pinpoint.notification.title': 'TITTLE',
    'pinpoint.notification.body': 'BODY',
    'data': {
      'pinpoint': {'endpointId': 'ENDPOINTID'}
    },
    'pinpoint.campaign.campaign_id': 'CAMPAIGN_ID',
    'pinpoint.notification.silentPush': 0,
    'pinpoint.campaign.campaign_activity_id': 'CAMPAIGN_ACTIVITY_ID'
  }
};

const iosCampaignMessage = {
  'aps': {
    'alert': {'title': 'TITTLE', 'body': 'BODY'},
    'mutable-content': 0,
    'content-available': 1
  },
  'data': {
    'pinpoint': {
      'endpointId': 'ENDPOINT_ID',
      'campaign': {
        'treatment_id': 0,
        'campaign_id': 'CAMPAIGN_ID',
        'campaign_activity_id': 'CAMPAIGN_ACTIVITY_ID'
      }
    }
  }
};

const iosJourneyMessage = {
  'data': {
    'pinpoint': {
      'journey': {
        'journey_run_id': 'JOURNEY_RUN_ID',
        'journey_activity_id': 'JOURNEY_ACTIVITY_ID',
        'journey_id': 'JOURNEY_ID'
      },
      'endpointId': 'ENDPOINT_ID'
    }
  },
  'aps': {
    'alert': {'title': 'TITTLE', 'body': 'BODY'},
    'mutable-content': 0,
    'content-available': 1
  }
};
