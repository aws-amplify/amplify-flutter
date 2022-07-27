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
import 'package:aws_common/aws_common.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'secure_storage_action.dart';

part 'secure_storage_request.g.dart';

/// {@template amplify_secure_storage_dart.secure_storage_request}
/// A serializable form of a request to a secure storage instance, combining
/// a [SecureStorageAction] and accompanying data.
/// {@endtemplate}
abstract class SecureStorageRequest
    implements Built<SecureStorageRequest, SecureStorageRequestBuilder> {
  /// {@macro amplify_secure_storage_dart.secure_storage_request}
  factory SecureStorageRequest([
    void Function(SecureStorageRequestBuilder) updates,
  ]) = _$SecureStorageRequest;
  SecureStorageRequest._();

  /// {@macro amplify_secure_storage_dart.secure_storage_interface.init}
  factory SecureStorageRequest.init({
    required AmplifySecureStorageConfig config,
  }) {
    return SecureStorageRequest(
      (b) => b
        ..action = SecureStorageAction.init
        ..config.replace(config),
    );
  }

  /// {@macro amplify_secure_storage_dart.secure_storage_interface.read}
  factory SecureStorageRequest.read({
    required String key,
  }) {
    return SecureStorageRequest(
      (b) => b
        ..action = SecureStorageAction.read
        ..key = key,
    );
  }

  /// {@macro amplify_secure_storage_dart.secure_storage_interface.write}
  factory SecureStorageRequest.write({
    required String key,
    required String value,
  }) {
    return SecureStorageRequest(
      (b) => b
        ..action = SecureStorageAction.write
        ..key = key
        ..value = value,
    );
  }

  /// {@macro amplify_secure_storage_dart.secure_storage_interface.delete}
  factory SecureStorageRequest.delete({
    required String key,
  }) {
    return SecureStorageRequest(
      (b) => b
        ..action = SecureStorageAction.delete
        ..key = key,
    );
  }

  @BuiltValueHook(finalizeBuilder: true)
  static void _init(SecureStorageRequestBuilder b) {
    b.id ??= uuid();
  }

  /// Unique ID for the request, typically a UUID.
  String get id;

  /// The action to take against the remote secure storage instance.
  SecureStorageAction get action;

  /// The secure storage configuration, used to instantiate a remote secure
  /// storage instance.
  ///
  /// Valid only for [SecureStorageAction.init].
  AmplifySecureStorageConfig? get config;

  /// The key targeted by [action].
  String? get key;

  /// The value associated with [key].
  String? get value;

  /// The [SecureStorageRequest] serializer.
  static Serializer<SecureStorageRequest> get serializer =>
      _$secureStorageRequestSerializer;

  /// toString override that excludes the value.
  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SecureStorageRequest')
          ..add('id', id)
          ..add('action', action)
          ..add('config', config)
          ..add('key', key))
        .toString();
  }
}
