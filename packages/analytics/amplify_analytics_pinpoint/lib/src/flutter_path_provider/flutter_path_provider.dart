// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

export 'flutter_path_provider_stub.dart'
    if (dart.library.html) 'flutter_path_provider_html.dart'
    if (dart.library.io) 'flutter_path_provider_io.dart';
