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

import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'credential_scope.g.dart';

/// {@template smithy_aws.credential_scope}
/// Signature version 4 credential scope information
/// {@endtemplate}
@JsonSerializable()
class CredentialScope {
  /// {@macro smithy_aws.credential_scope}
  const CredentialScope({
    this.region,
    this.service,
  });

  factory CredentialScope.fromJson(Map<String, Object?> json) =>
      _$CredentialScopeFromJson(json);

  /// Signing region
  final String? region;

  /// Signing service name
  final String? service;

  /// Zone value overrides for use in [runZoned].
  Map<Object?, Object?> get zoneValues => {
        #sigV4Region: region,
        #sigV4Service: service,
      };
}
