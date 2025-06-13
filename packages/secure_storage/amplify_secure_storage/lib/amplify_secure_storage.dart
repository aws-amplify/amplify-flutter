// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library;

export 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

export 'src/amplify_secure_storage.vm.dart'
    if (dart.library.js_interop) 'src/amplify_secure_storage.web.dart';
