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

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'windows_secure_storage_options.g.dart';

/// {@template amplify_secure_storage_dart.windows_secure_storage_options}
/// Configuration options that are specific to Windows.
/// {@endtemplate}
abstract class WindowsSecureStorageOptions
    implements
        Built<WindowsSecureStorageOptions, WindowsSecureStorageOptionsBuilder> {
  /// {@macro amplify_secure_storage_dart.windows_secure_storage_options}
  factory WindowsSecureStorageOptions({
    String? targetNamePrefix,
  }) = _$WindowsSecureStorageOptions._;

  const WindowsSecureStorageOptions._();

  /// The prefix for the "TargetName", which is used to identify the
  /// secret in Windows Credential Manager.
  ///
  /// This will also be used for the "Username".
  ///
  /// If no value is provided, [AmplifySecureStorageConfig.defaultNamespace]
  /// will be used as the prefix.
  ///
  /// Reference: [Wincred](https://docs.microsoft.com/en-us/windows/win32/api/wincred/ns-wincred-credentiala)
  String? get targetNamePrefix;

  static Serializer<WindowsSecureStorageOptions> get serializer =>
      _$windowsSecureStorageOptionsSerializer;
}
