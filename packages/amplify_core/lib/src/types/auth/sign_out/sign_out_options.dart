// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

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
