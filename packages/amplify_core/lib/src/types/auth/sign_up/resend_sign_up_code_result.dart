// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resend_sign_up_code_result.g.dart';

@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  // TODO(dnys1): Fix generic serialization
  createFactory: false,
)
class ResendSignUpCodeResult
    with
        AWSEquatable<ResendSignUpCodeResult>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const ResendSignUpCodeResult(this.codeDeliveryDetails);

  final AuthCodeDeliveryDetails codeDeliveryDetails;

  @override
  List<Object?> get props => [codeDeliveryDetails];

  @override
  String get runtimeTypeName => 'ResendSignUpCodeResult';

  @override
  Map<String, Object?> toJson() => _$ResendSignUpCodeResultToJson(this);
}
