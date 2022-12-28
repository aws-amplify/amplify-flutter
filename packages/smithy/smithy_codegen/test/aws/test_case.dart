// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';

part 'test_case.g.dart';

@JsonSerializable(createToJson: false)
class TestCase {
  const TestCase({
    required this.service,
    required this.region,
    required this.fips,
    required this.dualStack,
    this.endpoint,
  });

  factory TestCase.fromJson(Map<String, Object?> json) =>
      _$TestCaseFromJson(json);

  @JsonKey(name: 'Service')
  final String service;

  @JsonKey(name: 'Region')
  final String region;

  @JsonKey(name: 'FIPS')
  final bool fips;

  @JsonKey(name: 'DualStack')
  final bool dualStack;

  @JsonKey(name: 'Endpoint')
  final String? endpoint;
}
