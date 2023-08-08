// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library;

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'package_info.g.dart';

/// {@template amplify_auth_cognito_dart.asf.package_info}
/// Package information for the current application.
/// {@endtemplate}
@JsonSerializable(
  fieldRename: FieldRename.snake,
  includeIfNull: false,
)
class PackageInfo
    with
        AWSEquatable<PackageInfo>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_auth_cognito_dart.asf.package_info}
  const PackageInfo({
    this.appName,
    this.version,
    this.buildNumber,
    this.packageName,
  });

  /// {@macro amplify_auth_cognito_dart.asf.package_info}
  factory PackageInfo.fromJson(Map<String, Object?> json) =>
      _$PackageInfoFromJson(json);

  /// The application name.
  final String? appName;

  /// The application version string.
  final String? version;

  /// The application build number.
  final String? buildNumber;

  /// The application package name.
  final String? packageName;

  @override
  List<Object?> get props => [appName, version, buildNumber, packageName];

  @override
  String get runtimeTypeName => 'PackageInfo';

  @override
  Map<String, Object?> toJson() => _$PackageInfoToJson(this);
}
