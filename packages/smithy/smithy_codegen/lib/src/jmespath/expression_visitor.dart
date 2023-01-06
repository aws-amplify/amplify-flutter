// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:code_builder/code_builder.dart';
import 'package:jmespath/src/lex.dart';
import 'package:jmespath/src/parser.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

import 'visitor.dart';

class JmespathExpressionVisitor extends JmesVisitor<Expression> {
  JmespathExpressionVisitor({
    required this.context,
    required this.input,
    required this.output,
    this.base,
  });

  AstNode? _root;
  final CodegenContext context;
  final NamedMembersShape input;
  final NamedMembersShape output;
  final Reference? base;

  @override
  Expression visitComparator(AstNode node, [AstNode? parent]) {
    assert(node.children.length == 2, 'Must have two nodes to compare');
    final lhs = visit(node.children[0]);
    final rhs = visit(node.children[1]);

    final comparator = node.value as tt;
    switch (comparator) {
      case tt.tEQ:
        return lhs.equalTo(rhs);
      case tt.tNE:
        return lhs.notEqualTo(rhs);
      case tt.tGT:
        return lhs.greaterThan(rhs);
      case tt.tGTE:
        return lhs.greaterOrEqualTo(rhs);
      case tt.tLT:
        return lhs.lessThan(rhs);
      case tt.tLTE:
        return lhs.lessOrEqualTo(rhs);
      default:
        throw UnsupportedError('Invalid comparator: $comparator');
    }
  }

  @override
  Expression visitField(AstNode node, [AstNode? parent]) {
    final fieldName = node.value as String;
    return (node == _root && base != null)
        ? base!.property(fieldName)
        : refer(fieldName);
  }

  @override
  Expression visitFunctionExpression(AstNode node, [AstNode? parent]) {
    switch (node.value) {
      case 'length':
        assert(
          node.children.length == 1,
          'Can only take length of a single item',
        );
        final arg = visit(node.children.single);
        return arg.property('length');
    }
    throw UnimplementedError();
  }

  @override
  Expression visitSubexpression(AstNode node, [AstNode? parent]) {
    assert(node.children.length == 2, 'Must have parent.child relation');
    final parentNode = node.children[0];
    final parentExp = visit(parentNode);
    final childExp = visit(node.children[1]);
    final codeExp = CodeExpression(Block.of([
      parentExp.code,
      const Code('.'),
      childExp.code,
    ]));
    if ((_root == node && base != null) ||
        parentNode.value == 'input' ||
        parentNode.value == 'output') {
      final path = buildEmitter(Allocator.none)
          .visitCodeExpression(codeExp)
          .toString()
          .replaceAll(RegExp(r'\s'), '');
      final shape = parentNode.value == 'input' ? input : output;
      final item = shape.parsePathToExpression(context, path);
      var expression = item.buildExpression(
        base != null ? base! : refer(parentNode.value as String),
      );
      final targetShape = context.shapeFor(item.member.target);
      if (targetShape.isEnum) {
        expression = expression.nullableProperty('value', item.isNullable);
      }
      return expression;
    }
    return codeExp;
  }

  @override
  Expression visit(AstNode node, [AstNode? parent]) {
    _root ??= node;
    return super.visit(node, parent);
  }
}
