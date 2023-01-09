// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// wrapper around web and non web implementations
export 'dart_queued_item_store.stub.dart'
    if (dart.library.html) 'dart_queued_item_store.web.dart'
    if (dart.library.io) 'dart_queued_item_store.vm.dart';
