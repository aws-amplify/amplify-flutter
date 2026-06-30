// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:meta/meta.dart';

/// {@template amplify_event_enrichment.sdk_metadata}
/// SDK-level metadata stamped on every event.
/// {@endtemplate}
@immutable
final class SdkMetadata {
  /// {@macro amplify_event_enrichment.sdk_metadata}
  const SdkMetadata({
    required this.name,
    required this.version,
  });

  /// SDK name (e.g. "amplify-flutter").
  final String name;

  /// SDK version string.
  final String version;
}
