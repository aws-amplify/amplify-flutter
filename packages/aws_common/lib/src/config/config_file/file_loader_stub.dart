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
