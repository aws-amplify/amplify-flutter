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

import 'package:amplify_core/src/types/auth/sign_up/sign_up_options.dart';
import 'package:amplify_core/src/util/serializable.dart';
import 'package:aws_common/aws_common.dart';

part 'sign_up_request.g.dart';

@zAmplifyGenericSerializable
class SignUpRequest<Options extends SignUpOptions>
    with
        AWSEquatable<SignUpRequest<SignUpOptions>>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const SignUpRequest({
    required this.username,
    required this.password,
    this.options,
  });

  factory SignUpRequest.fromJson(
    Map<String, Object?> json,
    Options Function(Map<String, Object?>) fromJsonOptions,
  ) =>
      _$SignUpRequestFromJson(
        json,
        (json) => fromJsonOptions((json as Map).cast()),
      );

  final String username;
  final String password;
  final Options? options;

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  List<Object?> get props => [username, password, options];

  @override
  String get runtimeTypeName => 'SignUpRequest';

  @override
  Map<String, Object?> toJson() => _$SignUpRequestToJson(
        this,
        (Options options) => options.toJson(),
      );
}
