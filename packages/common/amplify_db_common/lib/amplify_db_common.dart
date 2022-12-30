// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Common utilities for working with databases such as SQLite.
library amplify_db_common;

export 'package:amplify_db_common_dart/amplify_db_common_dart.dart'
    hide connect;
export 'package:amplify_db_common_dart/src/connect.dart'
    if (dart.library.io) 'src/connect_io.dart';
