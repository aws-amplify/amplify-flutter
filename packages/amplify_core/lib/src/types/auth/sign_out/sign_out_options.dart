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

import 'package:amplify_core/src/util/serializable.dart';
import 'package:aws_common/aws_common.dart';

part 'sign_out_options.g.dart';

/// {@template amplify_core.sign_out_options}
/// The shared sign out options among all Auth plugins.
/// {@endtemplate}
@zAmplifySerializable
class SignOutOptions with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  /// {@macro amplify_core.sign_out_options}
  const SignOutOptions({this.globalSignOut = false});

  /// {@macro amplify_core.sign_out_options}
  factory SignOutOptions.fromJson(Map<String, Object?> json) =>
      _$SignOutOptionsFromJson(json);

  /// Sign the current user out from all devices
  ///
  /// If the user is signed into another device, they will not be authorized to perform
  /// tasks that requires a valid token after a global signout is called.
  final bool globalSignOut;

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  String get runtimeTypeName => 'SignOutOptions';

  @override
  Map<String, Object?> toJson() => _$SignOutOptionsToJson(this);
}
