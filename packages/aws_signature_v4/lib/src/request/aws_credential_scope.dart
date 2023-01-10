// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
