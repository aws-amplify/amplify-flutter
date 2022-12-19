// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_unused_constructor_parameters

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/config/aws_profile_file.dart';
import 'package:aws_common/src/config/config_file/file_loader.dart';
import 'package:aws_common/src/config/config_file/resolved_file.dart';

/// {@macro aws_common.config_file.file_loader}
class AWSFileLoaderImpl extends AWSFileLoader {
  /// {@macro aws_common.config_file.file_loader}
  const AWSFileLoaderImpl({
    AWSPathProvider? pathProvider,
  }) : super.protected();

  @override
  Future<ResolvedFile> loadFile(
    AWSProfileFileType type,
    String filepath,
  ) =>
      Future.error(
        StateError(
          'Loading configuration files is currently not supported on '
          'non-VM platforms',
        ),
      );
}
