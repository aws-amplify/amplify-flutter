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

part 'linux_secure_storage_options.g.dart';

/// {@template amplify_secure_storage_dart.linux_secure_storage_options}
/// Configuration options that are specific to Linux.
/// {@endtemplate}
abstract class LinuxSecureStorageOptions
    implements
        Built<LinuxSecureStorageOptions, LinuxSecureStorageOptionsBuilder> {
  /// {@macro amplify_secure_storage_dart.linux_secure_storage_options}
  ///
  /// #### [accessGroup]
  /// {@template amplify_secure_storage_dart.linux_secure_storage_options.access_group}
  /// Used as a namespace for the keys, if provided.
  ///
  /// If no value is provided, the application ID will be used.
  ///
  /// Can be used to share data across multiple apps.
  ///
  /// This value will be combined with [AmplifySecureStorageConfig.defaultNamespace]
  /// to form the full schema name.
  ///
  /// Reference: [SecretSchema](https://developer-old.gnome.org/libsecret/unstable/libsecret-SecretSchema.html#SecretSchema)
  /// {@endtemplate}
  factory LinuxSecureStorageOptions({
    String? accessGroup,
  }) = _$LinuxSecureStorageOptions._;

  const LinuxSecureStorageOptions._();

  /// {@macro amplify_secure_storage_dart.linux_secure_storage_options.access_group}
  String? get accessGroup;

  /// The [LinuxSecureStorageOptions] serializer.
  static Serializer<LinuxSecureStorageOptions> get serializer =>
      _$linuxSecureStorageOptionsSerializer;
}
