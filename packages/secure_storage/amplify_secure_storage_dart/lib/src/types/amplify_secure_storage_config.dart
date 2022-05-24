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

/// {@template amplify_secure_storage_dart.amplify_secure_storage_config}
/// Configuration options for Amplify Secure Storage.
/// {@endtemplate}
class AmplifySecureStorageConfig {
  /// {@macro amplify_secure_storage_dart.amplify_secure_storage_config}
  AmplifySecureStorageConfig({required this.packageId, required this.scope});

  /// A unique package identifier such as a bundle ID.
  ///
  /// Example: "com.example.app"
  ///
  /// This value will be used with the [scope] and key to for a unique
  /// identifier for the secret. Saving two values under unique packageIds will
  /// prevent collisions even if the key & scope overlap.
  final String packageId;

  /// The scope of the secrets to be stored.
  ///
  /// Example: "auth"
  ///
  /// This value will be used with the [packageId] and key to for a unique
  /// identifier for the secret. Saving two values under unique scopes will
  /// prevent collisions even if the key & packageId overlap.
  final String scope;
}
