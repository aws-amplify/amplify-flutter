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

import 'package:amplify_core/src/types/auth/sign_in/sign_in_options.dart';
import 'package:amplify_core/src/util/serializable.dart';
import 'package:aws_common/aws_common.dart';

part 'sign_in_request.g.dart';

@zAmplifyGenericSerializable
class SignInRequest<Options extends SignInOptions>
    with
        AWSEquatable<SignInRequest<SignInOptions>>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const SignInRequest({this.username, this.password, this.options});

  factory SignInRequest.fromJson(
    Map<String, Object?> json,
    Options Function(Map<String, Object?>) fromJsonOptions,
  ) =>
      _$SignInRequestFromJson(
        json,
        (json) => fromJsonOptions((json as Map).cast()),
      );

  final String? username;
  final String? password;
  final Options? options;

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  List<Object?> get props => [username, password, options];

  @override
  String get runtimeTypeName => 'SignInRequest';

  @override
  Map<String, Object?> toJson() => _$SignInRequestToJson(
        this,
        (Options options) => options.toJson(),
      );
}
