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

/// {@template amplify_secure_storage_dart.windows_secure_storage_options}
/// Configuration options that are specific to Windows.
/// {@endtemplate}
class WindowsSecureStorageOptions {
  /// {@macro amplify_secure_storage_dart.windows_secure_storage_options}
  const WindowsSecureStorageOptions({
    this.targetNamePrefix = 'com.amplify',
  });

  /// The default options for Windows.
  static const defaultOptions = WindowsSecureStorageOptions();

  /// The prefix for the "TargetName" in Windows Credential Manager.
  ///
  /// Defaults to "com.amplify".
  ///
  /// Reference: [Wincred](https://docs.microsoft.com/en-us/windows/win32/api/wincred/ns-wincred-credentiala)
  final String targetNamePrefix;
}
