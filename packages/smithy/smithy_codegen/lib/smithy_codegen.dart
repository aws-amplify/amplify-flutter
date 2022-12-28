// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Code generation library for Smithy AST models.
library smithy_codegen;

export 'src/config.dart';
export 'src/exception.dart';
export 'src/format/format_stub.dart'
    if (dart.library.io) 'src/format/format_io.dart';
export 'src/generate.dart';
export 'src/generator/context.dart';
export 'src/generator/generated_library.dart';
export 'src/model/smithy_library.dart';
export 'src/parse.dart';
export 'src/service/codegen.pb.dart';
export 'src/util/pubspec.dart';
