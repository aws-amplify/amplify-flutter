// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

export 'device_info_provider_stub.dart'
    if (dart.library.html) 'device_info_provider_html.dart'
    if (dart.library.io) 'device_info_provider_io.dart';
