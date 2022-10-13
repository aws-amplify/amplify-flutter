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

import 'dart:async';

import 'package:smithy/smithy.dart';

abstract class Acceptor<Input, Output> {
  const Acceptor();

  AcceptorState get state;
  bool matches({
    required Input input,
    Output? output,
    SmithyException? exception,
  });
}

abstract class Waiter<Input, Output> implements Operation<Input, Output> {
  Waiter({
    required this.timeout,
    required Operation<Input, Output> Function() operationBuilder,
  }) : _operationBuilder = operationBuilder;

  /// The total time to wait for the waiter to complete.
  final Duration timeout;

  /// The waiter's state machine builder.
  final Operation<Input, Output> Function() _operationBuilder;

  List<Acceptor<Input, Output>> get acceptors;

  @override
  Future<Output> run(
    Input input, {
    covariant Client? client,
    ShapeId? useProtocol,
  }) async {
    final timer = Stopwatch()..start();
    while (timer.elapsed < timeout) {
      Output? output;
      SmithyException? exception;
      try {
        output = await _operationBuilder().run(
          input,
          client: client,
          useProtocol: useProtocol,
        );
      } on SmithyException catch (e) {
        exception = e;
      }
      final nextState = _nextState(
        input: input,
        output: output,
        exception: exception,
      );
      switch (nextState) {
        case AcceptorState.success:
          return output!;
        case AcceptorState.failure:
          throw exception ?? Exception('Operation could not be completed');
        case AcceptorState.retry:
          continue;
      }
    }
    throw TimeoutException('Operation could not be completed');
  }

  AcceptorState _nextState({
    required Input input,
    Output? output,
    SmithyException? exception,
  }) {
    // For every acceptor in the waiter
    for (final acceptor in acceptors) {
      // If the acceptor matcher is a match, transition to the state of the
      // acceptor.
      if (acceptor.matches(
        input: input,
        output: output,
        exception: exception,
      )) {
        return acceptor.state;
      }
    }

    // If none of the acceptors are matched and an error was encountered while
    // calling the operation, then transition to the failure state and stop
    // waiting.
    if (exception != null) {
      return AcceptorState.failure;
    }

    // Transition the waiter to the retry state.
    return AcceptorState.retry;
  }
}
