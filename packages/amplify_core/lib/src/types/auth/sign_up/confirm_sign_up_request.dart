/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/amplify_core.dart';

part 'confirm_sign_up_request.g.dart';

@zAmplifyGenericSerializable
class ConfirmSignUpRequest<Options extends ConfirmSignUpOptions>
    with
        AWSEquatable<ConfirmSignUpRequest<Options>>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const ConfirmSignUpRequest({
    required this.username,
    required this.confirmationCode,
    this.options,
  });

  factory ConfirmSignUpRequest.fromJson(
    Map<String, Object?> json,
    Options Function(Map<String, Object?>) fromJsonOptions,
  ) =>
      _$ConfirmSignUpRequestFromJson(
        json,
        (json) => fromJsonOptions((json as Map).cast()),
      );

  final String username;
  final String confirmationCode;
  final Options? options;

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  List<Object?> get props => [username, confirmationCode, options];

  @override
  String get runtimeTypeName => 'ConfirmSignUpRequest';

  @override
  Map<String, Object?> toJson() => _$ConfirmSignUpRequestToJson(
        this,
        (Options options) => options.toJson(),
      );
}
