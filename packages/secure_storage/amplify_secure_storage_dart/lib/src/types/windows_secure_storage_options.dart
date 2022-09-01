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
  ///
  /// ### [storagePath]
  /// {@template amplify_secure_storage_dart.linux_secure_storage_options.storage_path}
  /// The location in the file system that will be used to store
  /// encrypted data.
  ///
  /// If not provided, the application directory will be used in Flutter.
  /// An in memory file system will be used when this value is not
  /// provided in a non-flutter application.
  /// {@endtemplate}
  factory WindowsSecureStorageOptions({
    String? storagePath,
  }) = _$WindowsSecureStorageOptions._;

  const WindowsSecureStorageOptions._();

  /// {@macro amplify_secure_storage_dart.linux_secure_storage_options.storage_path}
  String? get storagePath;

  /// The [WindowsSecureStorageOptions] serializer.
  static Serializer<WindowsSecureStorageOptions> get serializer =>
      _$windowsSecureStorageOptionsSerializer;
}
