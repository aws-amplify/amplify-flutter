// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'secure_storage_action.g.dart';

/// {@template amplify_secure_storage_dart.secure_storage_action}
/// Discrete actions which can be taken against a remote secure storage worker.
/// {@endtemplate}
class SecureStorageAction extends EnumClass {
  const SecureStorageAction._(super.name);

  /// {@macro amplify_secure_storage_dart.secure_storage_interface.init}
  static const SecureStorageAction init = _$init;

  /// {@macro amplify_secure_storage_dart.secure_storage_interface.read}
  static const SecureStorageAction read = _$read;

  /// {@macro amplify_secure_storage_dart.secure_storage_interface.write}
  static const SecureStorageAction write = _$write;

  /// {@macro amplify_secure_storage_dart.secure_storage_interface.delete}
  static const SecureStorageAction delete = _$delete;

  /// {@macro amplify_secure_storage_dart.amplify_secure_storage_interface.remove_all}
  static const SecureStorageAction removeAll = _$removeAll;

  /// All values of [SecureStorageAction].
  static BuiltSet<SecureStorageAction> get values =>
      _$SecureStorageActionValues;

  /// Finds the [SecureStorageAction] matching [name].
  static SecureStorageAction valueOf(String name) =>
      _$SecureStorageActionValueOf(name);

  /// The [SecureStorageAction] serializer.
  static Serializer<SecureStorageAction> get serializer =>
      _$secureStorageActionSerializer;
}
