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

/// The shared sign out options among all Auth plugins
class SignOutOptions {
  /// Sign the current user out from all devices
  ///
  /// If the user is signed into another device, they will not be authorized to perform
  /// tasks that requires a valid token after a global signout is called.
  final bool globalSignOut;

  /// Default constructor
  const SignOutOptions({this.globalSignOut = false});

  /// Serialize the object to a map
  Map serializeAsMap() {
    return <String, dynamic>{
      'globalSignOut': globalSignOut,
    };
  }
}
