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

  /// Application identifier used in the event envelope.
  final String appId;

  /// Application package name.
  final String? packageName;

  /// Application version name.
  final String? versionName;

  /// Application version code.
  final String? versionCode;

  /// Application display title.
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
