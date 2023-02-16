// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

/// The name of the database to use in Web.
const String webDatabaseName = 'dart-auth-test';

/// Whether a test is running in a CI environment.
final bool isCI = Platform.environment.containsKey('CI');

/// The URI for the RPC server, used to drive VM tests.
final Uri rpcUri = Uri.parse('ws://localhost:4321');
