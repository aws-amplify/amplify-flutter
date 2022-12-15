// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.

import 'dart:collection';
import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

const output = 'lib/src/sdk/sdk_exception.dart';

/// Exception types specified by `amplify_core`.
///
/// If a Cognito type has the same name, we do not want to create another
/// wrapper, but instead use the base type.
const authExceptions = [
  'InvalidStateException',
  'NotAuthorizedException',
  'SessionExpiredException',
  'SignedOutException',
  'UnknownException',
  'ValidationException',
];

void main(List<String> args) {
  // Should be run with `aft generate-sdk`
  final astJson = args.single;
  final ast = parseAstJson(astJson);

  final exceptions = StringBuffer(r'''
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

// Generated with tool/generate_sdk_exceptions.dart. Do not modify by hand.

/// Exception types bridged from generated SDKs to their legacy counterparts.
library amplify_auth_cognito_dart.sdk.sdk_exception;

import 'package:amplify_core/amplify_core.dart' as core;
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

/// {@template amplify_auth_cognito_dart.sdk.lambda_exception}
/// Exception thrown when an error from the AWS Lambda service is encountered.
/// {@endtemplate}
class LambdaException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk.lambda_exception}
  factory LambdaException(String message, {
    String? recoverySuggestion, 
    Object? underlyingException,
  }) {
    final match = _errorRegex.firstMatch(message);
    final lambdaName = match?.group(1);
    final parsedMessage = match?.group(2);
    if (parsedMessage != null) {
      message = parsedMessage;
    }
    return LambdaException._(
      message,
      lambdaName: lambdaName,
      recoverySuggestion: recoverySuggestion,
      underlyingException: underlyingException,
    );
  }

  const LambdaException._(
    super.message, {
    this.lambdaName,
    super.recoverySuggestion,
    super.underlyingException,
  });

  /// Whether [exception] originated in a user Lambda.
  static bool isLambdaException(String exception) =>
      _errorRegex.hasMatch(exception);

  /// Used to match errors returned from Cognito for errors originating in
  /// user-defined Lambda triggers.
  ///
  /// This is the only way to check for these currently since Cognito does not
  /// send back any special code to distinguish these from other, more general
  /// errors.
  static final RegExp _errorRegex = RegExp(r'(\w+) failed with error (.*)\.');

  /// The name of the lambda which triggered this exception.
  final String? lambdaName;

  @override
  String get runtimeTypeName => 'LambdaException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.unknown_service_exception}
/// An unknown exception raised by Cognito.
/// {@endtemplate}
class UnknownServiceException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.unknown_service_exception}
  const UnknownServiceException(super.message, {super.recoverySuggestion, super.underlyingException,});

  @override
  String get runtimeTypeName => 'UnknownServiceException';
}

/// Exception thrown when a verification code provided to the requested service
/// is expired.
@Deprecated('Use ExpiredCodeException instead')
typedef CodeExpiredException = ExpiredCodeException;

/// Exception thrown when the software token time-based one-time password (TOTP)
/// multi-factor authentication (MFA) isn't activated for the user pool.
@Deprecated('Use SoftwareTokenMfaNotFoundException instead')
typedef SoftwareTokenMFANotFoundException
    = SoftwareTokenMfaNotFoundException;

/// Exception thrown when too many failed attempts for a given action has been
/// made, such as sign-in.
@Deprecated('Use TooManyFailedAttemptsException instead')
typedef FailedAttemptsLimitExceededException
    = TooManyFailedAttemptsException;

/// Exception thrown when the requested service cannot find a multi-factor
/// authentication (MFA) method.
@Deprecated('Use MfaMethodNotFoundException instead')
typedef MFAMethodNotFoundException = MfaMethodNotFoundException;
''');

  // Collect errors
  final context = CodegenContext(
    smithyVersion: ast.version,
    shapes: ast.shapes,
    packageName: '',
    serviceName: '',
  );
  final operationShapes = ast.shapes.values.whereType<OperationShape>();
  // Find error shapes which are attached to an operation we use.
  final errorShapes =
      ast.shapes.values.where((s) => s.hasTrait<ErrorTrait>()).where(
            (e) => operationShapes.any(
              (o) => o.errors.map((ref) => ref.target).contains(e.shapeId),
            ),
          );
  final uniqueErrorShapes = LinkedHashSet<Shape>(
    equals: (a, b) => a.shapeId.shape == b.shapeId.shape,
    hashCode: (s) => s.shapeId.shape.hashCode,
  )..addAll(errorShapes);
  final sdkExceptions = <String>{};
  for (final shape in uniqueErrorShapes) {
    final shapeName = shape.shapeId.shape.pascalCase;
    sdkExceptions.add(shapeName);

    if (authExceptions.contains(shapeName)) {
      continue;
    }

    final templateName =
        'amplify_auth_cognito_dart.sdk_exception.${shapeName.snakeCase}';
    final docs = shape.formattedDocs(context);
    exceptions.writeln('''
/// {@template $templateName}
${docs.isEmpty ? '/// Cognito `$shapeName` exception' : docs}
/// {@endtemplate}
class $shapeName extends core.AuthServiceException {
  /// {@macro $templateName}
  const $shapeName(
    super.message, {
    super.recoverySuggestion, 
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => '$shapeName';
}
''');
  }

  exceptions.writeln('''
/// Transforms exceptions thrown by SDK clients to types which replace legacy
/// wrapper types or merge types with equivalent names from the underlying
/// service SDKs.
@internal
Object transformSdkException(Object e) {
  if (e is! SmithyException) {
    return e;
  }
  final message = e.message ?? e.toString();
  final shapeId = e.shapeId;
  if (shapeId == null) {
    return UnknownServiceException(message, underlyingException: e);
  }
  // Some exceptions are returned as non-Lambda exceptions even though they
  // orginated in user-defined lambdas.
  if (LambdaException.isLambdaException(message) ||
      shapeId.shape == 'InvalidLambdaResponseException' ||
      shapeId.shape == 'UnexpectedLambdaException' ||
      shapeId.shape == 'UserLambdaValidationException') {
    return LambdaException(message, underlyingException: e);
  }
''');

  for (final exception in sdkExceptions) {
    exceptions.write('''
  if (shapeId.shape == '$exception') {
    return ${authExceptions.contains(exception) ? 'core.Auth$exception' : exception}(message, underlyingException: e,);
  }
''');
  }

  exceptions.write('''
  return UnknownServiceException(message, underlyingException: e);
}
''');

  File(output).writeAsStringSync(exceptions.toString());
  Process.runSync('dart', ['format', '--fix', output]);
}
