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

part of 'canonical_request.dart';

/// {@template aws_signature_v4.signed_headers}
/// The signed headers for a canonical request.
/// {@endtemplate}
class SignedHeaders extends DelegatingIterable<String> {
  /// {@macro aws_signature_v4.signed_headers}
  SignedHeaders(Map<String, String> headers)
      : super(headers.keys.where((key) => !_ignoreHeaders.contains(key)));

  /// Creates the signed headers string.
  @override
  String toString() {
    return map((header) => header.toLowerCase()).join(';');
  }
}
