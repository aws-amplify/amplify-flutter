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

// ignore_for_file: avoid_unused_constructor_parameters

import 'dart:async';

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';

/// {@template amplify_core.io.aws_file_platform}
/// A cross platform implementation of [AWSFile].
/// {@endtemplate}
class AWSFilePlatform extends AWSFile {
  /// {@macro amplify_core.io.aws_file_platform}
  AWSFilePlatform() : super.protected();

  /// {@macro amplify_core.io.aws_file.from_stream}
  AWSFilePlatform.fromStream(
    Stream<List<int>> stream, {
    super.name,
    super.contentType,
    required int size,
  }) : super.protected();

  /// {@macro amplify_core.io.aws_file.from_path}
  AWSFilePlatform.fromPath(
    String path, {
    super.name,
    super.contentType,
  }) : super.protected(
          path: path,
        ) {
    throw UnimplementedError(
      'AWSFile is not available in the current platform',
    );
  }

  /// {@macro amplify_core.io.aws_file.from_path}
  AWSFilePlatform.fromData(
    List<int> data, {
    super.name,
    super.contentType,
  }) : super.protected(
          bytes: data,
        );

  @override
  Future<int> get size {
    throw UnimplementedError(
      'size getter has not been implemented in the current platform.',
    );
  }

  @override
  Stream<List<int>> get stream {
    throw UnimplementedError(
      'stream getter has not been implemented in the current platform.',
    );
  }

  /// {@macro amplify_core.io.aws_file.chunked_reader}
  @override
  ChunkedStreamReader<int> getChunkedStreamReader() {
    throw UnimplementedError(
      'getChunkedStreamReader is not available in the current platform',
    );
  }
}
