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

import 'package:drift/backends.dart';
import 'package:drift/web.dart';

/// {@template amplify_analytics_pinpoint_dart.connection_html}
/// Obtains a database connection for running drift in a Dart VM.
/// {@endtemplate}
QueryExecutor connect({
  String? driftStoragePath,
}) {
  return WebDatabase.withStorage(
    DriftWebStorage.indexedDb('amplify_analytics_cached_events'),
  );
}
