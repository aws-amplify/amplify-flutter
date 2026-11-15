// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@template amplify_event_enrichment.app_metadata}
/// Application-level metadata stamped on every event.
/// {@endtemplate}
@immutable
final class AppMetadata with AWSEquatable<AppMetadata>, AWSDebuggable {
  /// {@macro amplify_event_enrichment.app_metadata}
  const AppMetadata({
    required this.appId,
    this.packageName,
    this.versionName,
    this.versionCode,
    this.title,
  });

  /// Serialized as `application.app_id` and used as the session ID prefix.
  final String appId;

  /// Serialized as `application.package_name` when non-null.
  final String? packageName;

  /// Serialized as `application.version_name` when non-null.
  final String? versionName;

  /// Serialized as `application.version_code` when non-null.
  final String? versionCode;

  /// Display title serialized as `application.title` when non-null.
  final String? title;

  @override
  List<Object?> get props => [
    appId,
    packageName,
    versionName,
    versionCode,
    title,
  ];

  @override
  String get runtimeTypeName => 'AppMetadata';
}
