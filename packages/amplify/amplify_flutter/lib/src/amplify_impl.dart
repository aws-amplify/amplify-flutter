// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: invalid_use_of_internal_member, implementation_imports

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/amplify_class_impl.dart' as core;
import 'package:amplify_flutter/src/hybrid_impl.dart';
import 'package:flutter/foundation.dart';

/// {@macro amplify_flutter.amplify_class}
@internal
class AmplifyClassImpl extends core.AmplifyClassImpl {
  /// {@macro amplify_flutter.amplify_class}
  factory AmplifyClassImpl() {
    final isMobile =
        defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
    if (!zIsWeb && isMobile) {
      return AmplifyHybridImpl();
    }
    return AmplifyClassImpl.protected();
  }

  /// {@macro amplify_flutter.amplify_class}
  @protected
  AmplifyClassImpl.protected();
}
