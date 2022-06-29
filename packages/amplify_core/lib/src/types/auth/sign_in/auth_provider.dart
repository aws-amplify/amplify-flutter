/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

class AuthProvider {
  const AuthProvider._(this.name);

  final String name;

  const AuthProvider.custom(this.name);

  static const google = AuthProvider._('google');
  static const facebook = AuthProvider._('facebook');
  static const amazon = AuthProvider._('amazon');
  static const apple = AuthProvider._('apple');
  static const cognito = AuthProvider._('cognito');

  static const values = [
    google,
    facebook,
    amazon,
    apple,
    cognito,
  ];

  /// The value of the `identity_provider` URI parameter.
  ///
  /// [Reference](https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html)
  String get uriParameter {
    switch (this) {
      case google:
        return 'Google';
      case facebook:
        return 'Facebook';
      case amazon:
        return 'LoginWithAmazon';
      case apple:
        return 'SignInWithApple';
      case cognito:
        return 'COGNITO';
    }
    return name;
  }

  @override
  String toString() => 'AuthProvider.$name';
}
