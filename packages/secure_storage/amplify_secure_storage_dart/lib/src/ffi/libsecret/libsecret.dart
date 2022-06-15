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

import 'dart:ffi';

import 'package:amplify_secure_storage_dart/src/ffi/utils/dynamic_library_utils.dart';
import 'package:ffi/ffi.dart';

import 'libsecret.bindings.g.dart';

export 'libsecret.bindings.g.dart' hide Libsecret;

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
