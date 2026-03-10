// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

export 'record_storage_platform_stub.dart'
    if (dart.library.js_interop) 'record_storage_platform_web.dart'
    if (dart.library.io) 'record_storage_platform_vm.dart';
