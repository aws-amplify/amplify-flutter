// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@template amplify_event_enrichment.sdk_metadata}
/// SDK-level metadata stamped on every event.
/// {@endtemplate}
@immutable
final class SdkMetadata with AWSEquatable<SdkMetadata>, AWSDebuggable {
  /// {@macro amplify_event_enrichment.sdk_metadata}
  const SdkMetadata({required this.name, required this.version});

  /// SDK name (e.g. "amplify-flutter") serialized as `application.sdk.name`.
  final String name;

  /// SDK version serialized as `application.sdk.version`.
  final String version;

  @override
  List<Object?> get props => [name, version];

  @override
  String get runtimeTypeName => 'SdkMetadata';
}
