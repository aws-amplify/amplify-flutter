/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

import './method_channel_auth_cognito.dart';

export 'package:amplify_core/src/types/auth/auth_types.dart';
export './src/types.dart';

/// {@template amplify_auth_cognito.amplify_auth_cognito}
/// The AWS Cognito implementation of the Amplify Auth category.
/// {@endtemplate}
class AmplifyAuthCognito extends AuthPluginInterface {
  /// {@macro amplify_auth_cognito.amplify_auth_cognito}
  factory AmplifyAuthCognito() {
    // if (zIsWeb || Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
    //   throw UnsupportedError('This platform is not supported yet');
    // }
    return AmplifyAuthCognitoMethodChannel();
  }

  /// Protected constructor for subclasses.
  @protected
  AmplifyAuthCognito.protected();
}
