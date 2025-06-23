// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

export 'create_file_stub.dart'
    if (dart.library.js_interop) 'create_file_html.dart'
    if (dart.library.io) 'create_file_io.dart';
