// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:ffi';

import 'package:amplify_secure_storage_dart/src/ffi/gio/gio.bindings.g.dart';
import 'package:amplify_secure_storage_dart/src/ffi/utils/dynamic_library_utils.dart';

export 'gio.bindings.g.dart' hide Gio;

final DynamicLibrary glibDyLib = openDynamicLibrary('libgio-2.0');

final Gio gio = Gio(glibDyLib);
