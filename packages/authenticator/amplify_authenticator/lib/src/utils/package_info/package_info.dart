// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

export 'package_info_stub.dart'
    if (dart.library.js_interop) 'package_info_html.dart'
    if (dart.library.io) 'package_info_io.dart';
