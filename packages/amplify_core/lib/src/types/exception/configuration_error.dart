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

/// {@template amplify_core.exceptions.configuration_error}
/// An error occurring during configuration of an Amplify plugin, typically
/// the result of missing values needed for that plugin to function properly.
///
/// This is a non-recoverable error only thrown during the call to
/// `Amplify.configure`. If that call succeeds, developers do not need to worry
/// about future configuration errors.
/// {@endtemplate}
class ConfigurationError extends Error {
  /// {@macro amplify_core.exceptions.configuration_error}
  ConfigurationError(
    this.message, {
    this.recoverySuggestion,
  });

  /// A description of the error.
  final String message;

  /// Details on how to fix the issue, if available.
  final String? recoverySuggestion;

  @override
  String toString() {
    return 'ConfigurationError($message${recoverySuggestion == null ? '' : ', $recoverySuggestion'})';
  }
}
