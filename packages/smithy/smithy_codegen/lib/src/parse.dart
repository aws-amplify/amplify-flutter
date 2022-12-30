// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:smithy/ast.dart';

/// Parses the AST JSON received as a string via stdin.
SmithyAst parseAstJson(String json) {
  return SmithyAst.fromJson(jsonDecode(json) as Map<String, Object?>);
}
