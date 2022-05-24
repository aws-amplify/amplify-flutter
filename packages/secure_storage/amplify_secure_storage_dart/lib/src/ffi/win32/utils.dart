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
import 'dart:typed_data';

import 'package:win32/win32.dart';

/// A flag for cred* apis that uses default behavior.
///
/// CredReadA, CredWriteA, and CredDeleteA require a flags param. For
/// read/delete this value must be 0. Write allows for one other option
/// of [CRED_PRESERVE_CREDENTIAL_BLOB], which is used to preserve
/// the credential blob when updating the credentials attributes.
///
/// Reference: https://docs.microsoft.com/en-us/windows/win32/api/wincred/nf-wincred-credwritea#parameters
// ignore: constant_identifier_names
const CRED_FLAG_DEFAULT = 0;

extension Uint8ListBlobConversion on Uint8List {
  /// Alternative to [allocatePointer] from win32, which accepts an allocator
  Pointer<Uint8> allocatePointerWith(Allocator allocator) {
    final blob = allocator<Uint8>(length);
    blob.asTypedList(length).setAll(0, this);
    return blob;
  }
}
