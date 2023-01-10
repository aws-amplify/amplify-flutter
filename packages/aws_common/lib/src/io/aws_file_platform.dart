// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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

  @override
  Future<String?> get contentType {
    throw UnimplementedError(
      'contentType getter has not been implemented in the current platform.',
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
