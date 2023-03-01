// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

const pinpointAppId = 'pinpointAppId';

const stringProperty = 'stringProperty';
const doubleProperty = 'doubleProperty';
const boolProperty = 'boolProperty';
const intProperty = 'intProperty';

const stringValue = 'stringValue';
const doubleValue = 99.99;
const boolValue = false;
const intValue = 9999;

final analyticsProperties = AnalyticsProperties()
  ..addStringProperty(stringProperty, stringValue)
  ..addDoubleProperty(doubleProperty, doubleValue)
  ..addBoolProperty(boolProperty, boolValue)
  ..addIntProperty(intProperty, intValue);
