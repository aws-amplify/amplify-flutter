// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// wrapper around web and desktop mixins
export 'amplify_secure_storage_mixin.stub.dart'
    if (dart.library.html) 'amplify_secure_storage_mixin.web.dart'
    if (dart.library.io) 'amplify_secure_storage_mixin.vm.dart';
