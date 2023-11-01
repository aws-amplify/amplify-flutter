// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// {@template amplify_core.state_machine.precondition_exception}
/// An exception raised within a state machine when an event could not be
/// processed due to some precondition not being met.
/// {@endtemplate}
abstract interface class PreconditionException implements Exception {
  /// (@macro amplify_core.state_machine.precondition_exception)
  const PreconditionException();

  /// The precondition which was not met.
  String get precondition;

  /// Whether the event should be logged via the state machine's [AWSLogger].
  bool get shouldLog;

  /// Whether the event should be resolved and emitted as a state machine state
  /// (`true`) or whether the error should be reported but not emitted (`false`).
  bool get shouldEmit;
}
