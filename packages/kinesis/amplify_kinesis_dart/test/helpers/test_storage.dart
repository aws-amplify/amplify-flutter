// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Platform-aware `RecordStorage` for storage-agnostic client tests:
/// SQLite on the VM, in-memory on web (where drift/native can't compile).
library;

export 'test_storage_io.dart'
    if (dart.library.js_interop) 'test_storage_web.dart';
