// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Platform interface for the Amplify Flutter DataStore plugin.
///
/// This package exposes the core DataStore types used by the
/// [amplify_datastore](https://pub.dev/packages/amplify_datastore) plugin,
/// including model definitions, temporal types, sync expressions,
/// subscription events, and conflict-handling primitives.
///
/// **This is an internal interface package.** Application code should depend
/// on `amplify_datastore` instead.
library amplify_datastore_plugin_interface;

export 'package:amplify_core/src/types/datastore/datastore_types.dart'
    hide DateTimeParse;
export 'package:amplify_core/src/util/uuid.dart';
