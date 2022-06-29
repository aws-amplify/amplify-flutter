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

part 'sign_out_request.g.dart';

/// {@template amplify_core.auth.sign_out_request}
/// Encapsulates parameters for a sign out request
/// {@endtemplate}
@zAmplifySerializable
class SignOutRequest
    with
        AWSEquatable<SignOutRequest>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.sign_out_request}
  const SignOutRequest({this.options});

  /// {@macro amplify_core.auth.sign_out_request}
  factory SignOutRequest.fromJson(Map<String, Object?> json) =>
      _$SignOutRequestFromJson(json);

  /// Advanced options for the request.
  ///
  /// Can be used to specify global sign out.
  final SignOutOptions? options;

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  List<Object?> get props => [options];

  @override
  String get runtimeTypeName => 'SignOutRequest';

  @override
  Map<String, Object?> toJson() => _$SignOutRequestToJson(this);
}
