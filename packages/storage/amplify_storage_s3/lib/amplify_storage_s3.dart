/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

library amplify_storage_plugin;

import 'dart:io';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

import './method_channel_storage_s3.dart';

export './src/types.dart';

/// {@template amplify_storage_s3.amplify_storage_s3}
/// The AWS S3 implementation of the Amplify Storage category.
/// {@endtemplate}
abstract class AmplifyStorageS3 extends StoragePluginInterface {
  /// {@macro amplify_storage_s3.amplify_storage_s3}
  factory AmplifyStorageS3() {
    if (zIsWeb || Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
      throw UnsupportedError('This platform is not supported yet');
    }
    return AmplifyStorageS3MethodChannel();
  }

  /// Protected constructor for subclasses.
  @protected
  AmplifyStorageS3.protected();
}
