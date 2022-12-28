// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart'
    show EndpointResponse;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/serializers.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'test_event.g.dart';

const _testSerializable = JsonSerializable(
  createToJson: false,
  fieldRename: FieldRename.snake,
  converters: [
    _EndpointSerializer(),
    _DateTimeSerializer(),
  ],
);

@_testSerializable
class TestEvent with AWSEquatable<TestEvent>, AWSDebuggable {
  const TestEvent({
    required this.eventType,
    required this.eventTimestamp,
    required this.arrivalTimestamp,
    required this.eventVersion,
    this.attributes = const {},
    this.metrics = const {},
    required this.session,
    required this.endpoint,
  });

  factory TestEvent.fromJson(Map<String, Object?> json) =>
      _$TestEventFromJson(json);

  final String eventType;
  final DateTime eventTimestamp;
  final DateTime arrivalTimestamp;
  final String eventVersion;
  final Map<String, String> attributes;
  final Map<String, double> metrics;
  final TestSession session;
  final EndpointResponse endpoint;

  @override
  List<Object?> get props => [
        eventType,
        eventTimestamp,
        arrivalTimestamp,
        eventVersion,
        attributes,
        metrics,
        session,
        endpoint,
      ];

  @override
  String get runtimeTypeName => 'TestEvent';
}

@_testSerializable
class TestSession with AWSEquatable<TestSession>, AWSDebuggable {
  const TestSession({
    required this.sessionId,
    required this.startTimestamp,
    this.stopTimestamp,
  });

  factory TestSession.fromJson(Map<String, Object?> json) =>
      _$TestSessionFromJson(json);

  final String sessionId;
  final DateTime startTimestamp;
  final DateTime? stopTimestamp;

  @override
  List<Object?> get props => [
        sessionId,
        startTimestamp,
        stopTimestamp,
      ];

  @override
  String get runtimeTypeName => 'TestSession';
}

final Serializers _serializers = () {
  final builder = Serializers().toBuilder()
    ..addAll(serializers)
    ..addPlugin(StandardJsonPlugin());
  builderFactories.forEach(builder.addBuilderFactory);
  return builder.build();
}();

class _EndpointSerializer
    extends JsonConverter<EndpointResponse, Map<String, Object?>> {
  const _EndpointSerializer();

  @override
  EndpointResponse fromJson(Map<String, Object?> json) =>
      _serializers.deserialize(
        json,
        specifiedType: const FullType(EndpointResponse),
      ) as EndpointResponse;

  @override
  Map<String, Object?> toJson(EndpointResponse object) =>
      _serializers.serialize(
        object,
        specifiedType: const FullType(EndpointResponse),
      ) as Map<String, Object?>;
}

class _DateTimeSerializer implements JsonConverter<DateTime, int> {
  const _DateTimeSerializer();

  @override
  DateTime fromJson(int json) => DateTime.fromMicrosecondsSinceEpoch(json);

  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch;
}
