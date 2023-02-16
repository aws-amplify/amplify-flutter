// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:code_builder/code_builder.dart';
// ignore: implementation_imports
import 'package:jmespath/src/parser.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/jmespath/expression_visitor.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

class WaiterGenerator extends LibraryGenerator<OperationShape>
    with OperationGenerationContext {
  WaiterGenerator(
    super.shape, {
    required super.context,
  });

  late final WaitableTrait trait = shape.expectTrait();

  @override
  Library generate() {
    builder
      ..name = '${shape.libraryName(context)}_waiters'
      ..body.addAll(matcherClasses);

    return builder.build();
  }

  Iterable<Class> get matcherClasses sync* {
    for (final entry in trait.waiters.entries) {
      final waiterName = entry.key;
      final waiter = entry.value;

      final constructorParams = shape.constructorParameters(
        context,
        toThis: (p) => false,
      );
      final acceptors = waiter.acceptors.map(buildAcceptor).toList();
      yield Class(
        (c) => c
          ..name = '${waiterName.pascalCase}Waiter'
          ..extend = DartTypes.smithy.waiter(
            inputSymbol,
            outputSymbol,
          )
          ..methods.addAll(waiterMethods(waiter, acceptors))
          ..constructors.add(
            Constructor((c) => c
              ..optionalParameters.addAll([
                Parameter(
                  (p) => p
                    ..required = true
                    ..type = DartTypes.core.duration
                    ..named = true
                    ..name = 'timeout',
                ),
                ...constructorParams,
              ])
              ..initializers.add(refer('super').call([], {
                'timeout': refer('timeout'),
                'operationBuilder': Method((m) => m
                  ..lambda = true
                  ..body = symbol.newInstance([], {
                    for (final parameter in constructorParams)
                      parameter.name: refer(parameter.name)
                  }).code).closure,
              }).code)),
          ),
      );
      yield* acceptors;
    }
  }

  Iterable<Method> waiterMethods(Waiter waiter, List<Class> acceptors) sync* {
    yield Method(
      (m) => m
        ..name = 'acceptors'
        ..annotations.add(DartTypes.core.override)
        ..type = MethodType.getter
        ..returns = DartTypes.core.list(DartTypes.smithy.acceptor(
          inputSymbol,
          outputSymbol,
        ))
        ..lambda = true
        ..body = literalConstList([
          for (final acceptor in acceptors)
            refer(acceptor.name).constInstance([]),
        ]).code,
    );

    // Operation methods
    final errorTypeNames = waiter.acceptors
        .where((el) => el.matcher.type == MatcherType.error)
        .map((el) => el.matcher.errorType!);
    final errorTypes = errorSymbols.where(
      (e) => errorTypeNames.any(e.shapeId.toString().contains),
    );
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..type = MethodType.getter
        ..returns = DartTypes.core.list(DartTypes.smithy.smithyError)
        ..name = 'errorTypes'
        ..body = literalConstList([
          for (final errorType in errorTypes) errorType.constInstance,
        ]).code,
    );
  }

  Code matchesBody(AcceptorDefinition acceptor) {
    final output = refer('output');

    final PathMatcher matcher;
    final Expression valueExpression;
    switch (acceptor.matcher.type) {
      case MatcherType.success:
        return output.notEqualTo(literalNull).returned.statement;
      case MatcherType.error:
        final exception = refer('exception');
        final errorType = errorSymbols.firstWhere((error) {
          return error.shapeId.toString().contains(acceptor.matcher.errorType!);
        });
        return exception.isA(errorType.symbol).returned.statement;
      case MatcherType.inputOutput:
        matcher = acceptor.matcher.inputOutput!;
        valueExpression = JmespathExpressionVisitor(
          context: context,
          input: inputShape,
          output: outputShape,
        ).visit(
          parse(matcher.path),
        );
        break;
      case MatcherType.output:
        matcher = acceptor.matcher.output!;
        valueExpression = JmespathExpressionVisitor(
          context: context,
          input: inputShape,
          output: outputShape,
          base: output,
        ).visit(
          parse(matcher.path),
        );
    }

    final builder = BlockBuilder();
    final value = refer('value');

    builder.statements.add(const Code('if (output == null) return false;'));
    builder.addExpression(declareFinal('value').assign(valueExpression));

    switch (matcher.comparator) {
      case PathComparator.stringEquals:
        builder.addExpression(
          value.equalTo(literalString(matcher.expected)).returned,
        );
        break;
      case PathComparator.booleanEquals:
        builder.addExpression(value.returned);
        break;
      case PathComparator.allStringEquals:
      case PathComparator.anyStringEquals:
        final comparator = matcher.comparator == PathComparator.allStringEquals
            ? 'every'
            : 'any';
        builder.addExpression(
          value
              .isA(DartTypes.core.list(DartTypes.core.string))
              .and(value
                  .property('isNotEmpty')
                  .and(value.property(comparator).call([
                    Method(
                      (m) => m
                        ..requiredParameters
                            .add(Parameter((p) => p..name = 'el'))
                        ..body = refer('el')
                            .equalTo(literalString(matcher.expected))
                            .code,
                    ).closure
                  ])))
              .returned,
        );
        break;
    }

    return builder.build();
  }

  var _inputOutputAcceptor = 0;
  var _outputAcceptor = 0;
  Class buildAcceptor(AcceptorDefinition acceptor) {
    return Class((c) {
      final String prefix;
      switch (acceptor.state) {
        case AcceptorState.success:
          prefix = 'Succeed';
          break;
        case AcceptorState.failure:
          prefix = 'Fail';
          break;
        case AcceptorState.retry:
          prefix = 'Retry';
          break;
      }
      String suffix;
      switch (acceptor.matcher.type) {
        case MatcherType.success:
          suffix = 'OnSuccess';
          break;
        case MatcherType.error:
          suffix = 'On${acceptor.matcher.errorType}';
          break;
        case MatcherType.inputOutput:
          suffix = 'OnInputOutput';
          if (_inputOutputAcceptor++ > 0) {
            suffix += _inputOutputAcceptor.toString();
          }
          break;
        case MatcherType.output:
          suffix = 'OnOutput';
          if (_outputAcceptor++ > 0) {
            suffix += _outputAcceptor.toString();
          }
          break;
      }
      c
        ..name = '_$prefix$suffix'
        ..extend = DartTypes.smithy.acceptor(inputSymbol, outputSymbol)
        ..constructors.add(Constructor((c) => c..constant = true))
        ..methods.addAll([
          Method(
            (m) => m
              ..annotations.add(DartTypes.core.override)
              ..returns = DartTypes.smithy.acceptorState
              ..type = MethodType.getter
              ..name = 'state'
              ..body = DartTypes.smithy.acceptorState
                  .property(acceptor.state.name)
                  .code,
          ),
          Method((m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.bool
            ..name = 'matches'
            ..optionalParameters.addAll([
              Parameter((p) => p
                ..type = inputSymbol
                ..required = true
                ..name = 'input'
                ..named = true),
              Parameter((p) => p
                ..type = outputSymbol.boxed
                ..name = 'output'
                ..named = true),
              Parameter((p) => p
                ..type = DartTypes.smithy.smithyException.boxed
                ..name = 'exception'
                ..named = true),
            ])
            ..body = matchesBody(acceptor)),
        ]);
    });
  }
}
