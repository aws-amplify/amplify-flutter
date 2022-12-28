// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library amplify_flutter;

import 'package:amplify_core/amplify_core.dart';

import 'src/amplify_impl.dart';

export 'package:amplify_core/amplify_core.dart' hide Amplify, osIdentifier;
export 'package:amplify_secure_storage/amplify_secure_storage.dart';

/// Top level singleton Amplify object.
AmplifyClass get Amplify {
  return AmplifyClass.instance ??= AmplifyClassImpl();
}

set Amplify(AmplifyClass amplifyClass) {
  AmplifyClass.instance = amplifyClass;
}

// ignore_for_file: non_constant_identifier_names
