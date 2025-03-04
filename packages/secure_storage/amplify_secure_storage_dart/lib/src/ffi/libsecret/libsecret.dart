// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:ffi';

import 'package:amplify_secure_storage_dart/src/ffi/libsecret/libsecret.bindings.g.dart';
import 'package:amplify_secure_storage_dart/src/ffi/utils/dynamic_library_utils.dart';
import 'package:ffi/ffi.dart';

export 'package:amplify_secure_storage_dart/src/ffi/libsecret/libsecret.bindings.g.dart'
    hide Libsecret;

final DynamicLibrary libsecretDyLib = openDynamicLibrary('libsecret-1');

final Libsecret libsecret = Libsecret(libsecretDyLib);

/// Extensions on Pointer<SecretSchema>.
extension SecretSchemaPointer on Pointer<SecretSchema> {
  /// Inserts the attribute into the schema with a type SECRET_SCHEMA_ATTRIBUTE_STRING.
  void insertAttribute(int index, String attribute, {required Arena arena}) {
    final attributeName = attribute.toNativeUtf8(allocator: arena);
    ref.attributes[index].name = attributeName.cast();
    ref.attributes[index].type =
        SecretSchemaAttributeType.SECRET_SCHEMA_ATTRIBUTE_STRING;
  }

  /// Adds the list of attributes to the schema with a type SECRET_SCHEMA_ATTRIBUTE_STRING.
  void addAllAttributes(Iterable<String> attributes, {required Arena arena}) {
    for (var i = 0; i < attributes.length; i++) {
      insertAttribute(i, attributes.elementAt(i), arena: arena);
    }
  }
}
