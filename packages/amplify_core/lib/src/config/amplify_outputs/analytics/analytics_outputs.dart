// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/analytics/amazon_pinpoint_outputs.dart';

part 'analytics_outputs.g.dart';

/// {@template amplify_core.amplify_outputs.analytics_outputs}
/// The Amplify Gen 2 output for Analytics category.
/// {@endtemplate}
@zAmplifyOutputsSerializable
class AnalyticsOutputs
    with AWSEquatable<AnalyticsOutputs>, AWSSerializable, AWSDebuggable {
  /// {@macro amplify_core.amplify_outputs.analytics_outputs}
  const AnalyticsOutputs({this.amazonPinpoint});

  factory AnalyticsOutputs.fromJson(Map<String, Object?> json) =>
      _$AnalyticsOutputsFromJson(json);

  /// {@macro amplify_core.amplify_outputs.amazon_pinpoint}
  final AmazonPinpointOutputs? amazonPinpoint;

  @override
  List<Object?> get props => [amazonPinpoint];

  @override
  String get runtimeTypeName => 'AnalyticsOutputs';

  @override
  Map<String, Object?> toJson() {
    return _$AnalyticsOutputsToJson(this);
  }
}
