// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// ignore_for_file: invalid_use_of_internal_member, implementation_imports

import 'dart:async';
import 'dart:io';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/amplify_class_impl.dart' as core;
import 'package:amplify_flutter/src/hybrid_impl.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

part 'method_channel_amplify.dart';

/// {@macro amplify_flutter.amplify_class}
@internal
class AmplifyClassImpl extends core.AmplifyClassImpl {
  /// {@macro amplify_flutter.amplify_class}
  factory AmplifyClassImpl() {
    if (!zIsWeb && (Platform.isAndroid || Platform.isIOS)) {
      return AmplifyHybridImpl();
    }
    return AmplifyClassImpl.protected();
  }

  /// {@macro amplify_flutter.amplify_class}
  @protected
  AmplifyClassImpl.protected();
}
