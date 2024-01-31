// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

export 'app_path_provider_stub.dart'
    if (dart.library.html) 'app_path_provider_html.dart'
    if (dart.library.io) 'app_path_provider_io.dart';
