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
import 'package:built_collection/built_collection.dart';
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
    WebPersistenceOption persistenceOption = WebPersistenceOption.indexedDB,
  }) =>
      _$WebSecureStorageOptions._(
        databaseName: databaseName,
        persistenceOption: persistenceOption,
      );

  const WebSecureStorageOptions._();

  /// The prefix of the Indexed DB database name.
  ///
  /// If no value is provided, [AmplifySecureStorageConfig.defaultNamespace]
  /// will be used as the database name.
  String? get databaseName;

  /// {@macro amplify_secure_storage_dart.web_secure_storage_options.web_persistence_option}
  ///
  /// Defaults to [WebPersistenceOption.inMemory].
  WebPersistenceOption get persistenceOption;

  /// The [WebSecureStorageOptions] serializer.
  static Serializer<WebSecureStorageOptions> get serializer =>
      _$webSecureStorageOptionsSerializer;
}

/// {@template amplify_secure_storage_dart.web_secure_storage_options.web_persistence_option}
/// How data is persisted on the Web platform.
/// {@endtemplate}
class WebPersistenceOption extends EnumClass {
  // TODO(Jordan-Nelson): Remove when built_value supports super parameters.
  // ignore: use_super_parameters
  const WebPersistenceOption._(String name) : super(name);

  /// **NOTE**: Hosted UI is not supported for this option, currently.
  ///
  /// Data will be stored in memory and will never be written to disk.
  ///
  /// Data will not be shared across tabs or windows, and all
  /// data will be lost when the window is closed or page is
  /// refreshed.
  static const WebPersistenceOption inMemory = _$inMemory;

  /// Data will be stored in browser storage using IndexedDB.
  ///
  /// For the Amplify Auth category, it is recommended to
  /// enable device tracking when enabling persistence in
  /// browser storage.
  ///
  /// Reference: [Cognito Device Tracking](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html)
  static const WebPersistenceOption indexedDB = _$indexedDB;

  /// All values of [WebPersistenceOption].
  static BuiltSet<WebPersistenceOption> get values =>
      _$WebPersistenceOptionValues;

  /// Gets the [WebPersistenceOption] value corresponding to [name].
  static WebPersistenceOption valueOf(String name) =>
      _$WebPersistenceOptionValueOf(name);

  /// The [WebPersistenceOption] serializer.
  static Serializer<WebPersistenceOption> get serializer =>
      _$webPersistenceOptionSerializer;
}
