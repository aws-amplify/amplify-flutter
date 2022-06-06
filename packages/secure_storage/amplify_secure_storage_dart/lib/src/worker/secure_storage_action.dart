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

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'secure_storage_action.g.dart';

/// {@template amplify_secure_storage_dart.secure_storage_action}
/// Discrete actions which can be taken against a remote secure storage worker.
/// {@endtemplate}
class SecureStorageAction extends EnumClass {
  // TODO(dnys1): `built_value` does not support super invocations.
  // ignore: use_super_parameters
  const SecureStorageAction._(String name) : super(name);

  /// {@macro amplify_secure_storage_dart.secure_storage_interface.init}
  static const SecureStorageAction init = _$init;

  /// {@macro amplify_secure_storage_dart.secure_storage_interface.read}
  static const SecureStorageAction read = _$read;

  /// {@macro amplify_secure_storage_dart.secure_storage_interface.write}
  static const SecureStorageAction write = _$write;

  /// {@macro amplify_secure_storage_dart.secure_storage_interface.delete}
  static const SecureStorageAction delete = _$delete;

  /// All values of [SecureStorageAction].
  static BuiltSet<SecureStorageAction> get values =>
      _$SecureStorageActionValues;

  /// Finds the [SecureStorageAction] matching [name].
  static SecureStorageAction valueOf(String name) =>
      _$SecureStorageActionValueOf(name);

  /// The [SecureStorageAction] action.
  static Serializer<SecureStorageAction> get serializer =>
      _$secureStorageActionSerializer;
}
