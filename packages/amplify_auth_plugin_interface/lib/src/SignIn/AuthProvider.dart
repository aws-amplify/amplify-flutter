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

/*
  !!IMPORTANT!! 
  Dart enums are 0-based indices; new values must be added to the end of the list.
  !!IMPORTANT!! 
*/

/// Enumerates allowed OAuth providers
/// For additional usage information, see the documentation for the plugin you are using.
enum AuthProvider {
  /// [Google Developer Console](https://console.developers.google.com/)
  google,

  /// [Facebook For Developers](https://developers.facebook.com/docs/facebook-login)
  facebook, 

  /// [Amazon Developer Console](https://developer.amazon.com/settings/console/home?)
  amazon,

  /// [Apple Developer](https://developer.apple.com/account/#)
  apple 
}
