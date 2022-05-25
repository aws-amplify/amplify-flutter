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

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/src/request/aws_date_time.dart';
import 'package:aws_signature_v4/src/signer/aws_signer.dart';

/// {@template aws_signature_v4.aws_credential_scope}
/// The scope for an AWS request.
/// {@endtemplate}
class AWSCredentialScope {
  /// {@macro aws_signature_v4.aws_credential_scope}
  AWSCredentialScope({
    AWSDateTime? dateTime,
    required String region,
    required AWSService service,
  }) : this.raw(
          region: region,
          service: service.service,
          dateTime: dateTime,
        );

  /// {@macro aws_signature_v4.aws_credential_scope}
  AWSCredentialScope.raw({
    AWSDateTime? dateTime,
    required String region,
    required String service,
  })  : _region = region,
        _service = service,
        dateTime = dateTime ?? AWSDateTime.now();

  /// The time of the request.
  final AWSDateTime dateTime;

  final String _region;

  /// The region of the request.
  ///
  /// This value may be overriden on a per-request basis using [runZoned] and
  /// the `zoneValues` field.
  String get region => Zone.current[#sigV4Region] as String? ?? _region;

  final String _service;

  /// The AWS service receiving the request.
  ///
  /// This value may be overriden on a per-request basis using [runZoned] and
  /// the `zoneValues` field.
  String get service {
    final Object? override = Zone.current[#sigV4Service];
    if (override is AWSService) {
      return override.service;
    } else if (override is String) {
      return override;
    }
    return _service;
  }

  @override
  String toString() =>
      '${dateTime.formatDate()}/$region/$service/${AWSSigV4Signer.terminationString}';
}
