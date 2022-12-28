// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:drift/drift.dart';

/// {@template amplify_db_common.connect}
/// Returns a [QueryExecutor] on vm and web platforms.
/// {@endtemplate}
///
/// [name] should uniquely identify the database across Amplify plugins. For
/// example, "AnalyticsEventCache".
///
/// [path] must be provided on vm platforms. It will be unused on web.
QueryExecutor connect({
  required String name,
  FutureOr<String>? path,
}) {
  throw UnimplementedError(
    'constructDb has not been implemented for this platform.',
  );
}
