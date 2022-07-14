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

/// (@template amplify_core.state_machine.precondition_exception)
/// An exception raised within a state machine when an event could not be
/// processed due to some precondition not being met.
/// {@endtemplate}
abstract class PreconditionException implements Exception {
  /// (@macro amplify_core.state_machine.precondition_exception)
  const PreconditionException();

  /// The precondition which was not met.
  String get precondition;

  /// Whether the event should be resolved and emitted as a state machine state
  /// (`true`) or whether the error should be reported but not emitted (`false`).
  bool get shouldEmit;
}
