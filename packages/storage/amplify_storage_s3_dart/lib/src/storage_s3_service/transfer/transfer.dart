// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

export 'database/database_stub.dart'
    if (dart.library.js_interop) 'database/database_html.dart'
    if (dart.library.io) 'database/database_io.dart';
