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

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.transition}
/// A state machine transition from one state to the next.
/// {@endtemplate}
@immutable
class Transition<E extends StateMachineEvent, S extends StateMachineState>
    with AWSEquatable<Transition<E, S>>, AWSDebuggable {
  /// {@macro amplify_core.transition}
  const Transition(this.previousState, this.event, this.nextState);

  /// The previous state.
  final S previousState;

  /// The event which triggered the change.
  final E event;

  /// The next (current) state.
  final S nextState;

  @override
  List<Object?> get props => [previousState, event, nextState];

  @override
  String get runtimeTypeName => 'Transition';
}
