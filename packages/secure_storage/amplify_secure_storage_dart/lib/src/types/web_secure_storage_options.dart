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

part 'web_secure_storage_options.g.dart';

/// {@template amplify_secure_storage_dart.web_secure_storage_options}
/// Configuration options that are specific to Web.
/// {@endtemplate}
abstract class WebSecureStorageOptions
    implements Built<WebSecureStorageOptions, WebSecureStorageOptionsBuilder> {
  /// {@macro amplify_secure_storage_dart.web_secure_storage_options}
  factory WebSecureStorageOptions({
    String? databaseName,
    bool inMemory = true,
  }) =>
      _$WebSecureStorageOptions._(
        databaseName: databaseName,
        inMemory: inMemory,
      );

  const WebSecureStorageOptions._();

  /// The prefix of the Indexed DB database name.
  ///
  /// If no value is provided, [AmplifySecureStorageConfig.defaultNamespace]
  /// will be used as the database name.
  String? get databaseName;

  /// Wether or not data should be stored in memory.
  ///
  /// If this is true, secrets will never be written to disk. Instead
  /// they will be stored in memory.
  ///
  /// If this is false, secrets will be stored in browser storage
  /// using IndexedDB.
  bool get inMemory;

  /// The [WebSecureStorageOptions] serializer.
  static Serializer<WebSecureStorageOptions> get serializer =>
      _$webSecureStorageOptionsSerializer;
}
