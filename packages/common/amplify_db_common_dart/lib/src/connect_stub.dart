// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
