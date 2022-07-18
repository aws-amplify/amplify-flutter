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

part 'confirm_sign_in_request.g.dart';

@zAmplifyGenericSerializable
class ConfirmSignInRequest<Options extends ConfirmSignInOptions>
    with
        AWSEquatable<ConfirmSignInRequest<Options>>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const ConfirmSignInRequest({required this.confirmationValue, this.options});

  factory ConfirmSignInRequest.fromJson(
    Map<String, Object?> json,
    Options Function(Map<String, Object?>) fromJsonOptions,
  ) =>
      _$ConfirmSignInRequestFromJson(
        json,
        (json) => fromJsonOptions((json as Map).cast()),
      );

  final String confirmationValue;

  final Options? options;

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  List<Object?> get props => [confirmationValue, options];

  @override
  String get runtimeTypeName => 'ConfirmSignInRequest';

  @override
  Map<String, Object?> toJson() => _$ConfirmSignInRequestToJson(
        this,
        (Options options) => options.toJson(),
      );
}
