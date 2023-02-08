// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

// ignore: implementation_imports
import 'package:amplify_db_common_dart/src/connect_io.dart' as base;
import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';

/// {@macro amplify_db_common.connect}
QueryExecutor connect({
  required String name,
  FutureOr<String>? path,
}) {
  return LazyDatabase(() async {
    final resolvedPath =
        await path ?? (await getApplicationSupportDirectory()).path;
    return base.connect(name: name, path: resolvedPath);
  });
}
