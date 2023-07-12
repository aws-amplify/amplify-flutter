// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'resend_sign_in_code_result.g.dart';

@zAmplifySerializable
class ResendSignInCodeResult
    with
        AWSEquatable<ResendSignInCodeResult>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const ResendSignInCodeResult(this.codeDeliveryDetails);

  factory ResendSignInCodeResult.fromJson(Map<String, Object?> json) =>
      _$ResendSignInCodeResultFromJson(json);

  final AuthCodeDeliveryDetails codeDeliveryDetails;

  @override
  List<Object?> get props => [codeDeliveryDetails];

  @override
  String get runtimeTypeName => 'ResendSignInCodeResult';

  @override
  Map<String, Object?> toJson() => _$ResendSignInCodeResultToJson(this);
}
