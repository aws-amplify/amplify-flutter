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

import 'dart:io';

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_storage_s3_dart.app_path_provider}
/// Provides App paths for amplify_storage_s3_dart package.
/// {@endtemplate}
class S3DartAppPathProvider implements AppPathProvider {
  /// {@macro amplify_storage_s3_dart.app_path_provider}
  const S3DartAppPathProvider();

  @override
  Future<String> getApplicationSupportPath() async {
    return Directory.current.path;
  }

  @override
  Future<String> getTemporaryPath() async {
    return Directory.systemTemp.path;
  }
}
