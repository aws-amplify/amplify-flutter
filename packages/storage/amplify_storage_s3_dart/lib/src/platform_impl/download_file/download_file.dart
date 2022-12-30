// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

export 'download_file_stub.dart'
    if (dart.library.html) 'download_file_html.dart'
    if (dart.library.io) 'download_file_io.dart';
