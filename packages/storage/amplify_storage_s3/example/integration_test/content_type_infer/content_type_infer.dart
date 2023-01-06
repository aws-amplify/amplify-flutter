// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

export 'content_type_infer_stub.dart'
    if (dart.library.html) 'content_type_infer_html.dart'
    if (dart.library.io) 'content_type_infer_io.dart';
