// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

export 'kinesis_storage_platform_stub.dart'
    if (dart.library.js_interop) 'kinesis_storage_platform_web.dart'
    if (dart.library.io) 'kinesis_storage_platform_vm.dart';
