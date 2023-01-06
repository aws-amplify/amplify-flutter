// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:jmespath/src/parser.dart';
import 'package:meta/meta.dart';

@internal
abstract class JmesVisitor<T> {
  const JmesVisitor();

  T visitComparator(AstNode node, [AstNode? parent]);
  T visitField(AstNode node, [AstNode? parent]);
  T visitFunctionExpression(AstNode node, [AstNode? parent]);
  T visitSubexpression(AstNode node, [AstNode? parent]);

  T visit(AstNode node, [AstNode? parent]) {
    switch (node.type) {
      case ast.empty:
        break;
      case ast.comparator:
        return visitComparator(node, parent);
      case ast.currentNode:
        break;
      case ast.expRef:
        break;
      case ast.functionExpression:
        return visitFunctionExpression(node, parent);
      case ast.field:
        return visitField(node, parent);
      case ast.filterProjection:
        break;
      case ast.flatten:
        break;
      case ast.identity:
        break;
      case ast.indexValue:
        break;
      case ast.indexExpression:
        break;
      case ast.keyValPair:
        break;
      case ast.literal:
        break;
      case ast.multiSelectHash:
        break;
      case ast.multiSelectList:
        break;
      case ast.orExpression:
        break;
      case ast.andExpression:
        break;
      case ast.notExpression:
        break;
      case ast.pipe:
        break;
      case ast.projection:
        break;
      case ast.subexpression:
        return visitSubexpression(node, parent);
      case ast.slice:
        break;
      case ast.valueProjection:
        break;
    }
    throw UnimplementedError();
  }
}
