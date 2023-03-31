// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

abstract class HubEvent<HubEventPayload> {
  const HubEvent(this.eventName, {this.payload});

  final String eventName;
  final HubEventPayload? payload;
}
