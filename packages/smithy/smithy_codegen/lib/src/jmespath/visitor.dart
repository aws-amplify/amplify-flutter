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
