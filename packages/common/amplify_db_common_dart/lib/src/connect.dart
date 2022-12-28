// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:drift/backends.dart';

export 'connect_stub.dart'
    if (dart.library.html) 'connect_html.dart'
    if (dart.library.io) 'connect_io.dart';

/// Interface of the Drift DB connect function.
typedef Connect = QueryExecutor Function({
  required String name,
  FutureOr<String>? path,
});
