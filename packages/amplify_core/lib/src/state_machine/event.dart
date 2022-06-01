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

import 'package:amplify_core/src/state_machine/state.dart';
import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.event}
/// Base class for discrete events of a state machine.
/// {@endtemplate}
@immutable
abstract class StateMachineEvent<EventType>
    with AWSEquatable<StateMachineEvent<EventType>>, AWSDebuggable {
  /// {@macro amplify_core.event}
  const StateMachineEvent();

  /// The event's discrete type, expressed as an enum.
  EventType get type;

  /// Casts this to an event of type [E].
  E cast<E extends StateMachineEvent<EventType>>() => this as E;

  /// Checks the precondition, given [currentState].
  ///
  /// Returns a string with an error message if the check fails, otherwise
  /// `null`.
  String? checkPrecondition(covariant StateMachineState currentState) => null;
}

/// Mixin functionality for error/failure events of a state machine.
mixin ErrorEvent<EventType> on StateMachineEvent<EventType> {
  /// The exception which triggered this event.
  Exception get exception;
}
