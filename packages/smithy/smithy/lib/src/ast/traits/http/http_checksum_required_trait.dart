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

import 'package:smithy/ast.dart';

/// Indicates that an operation requires a checksum in its HTTP request.
/// By default, the checksum used for a service is a MD5 checksum passed
/// in the Content-MD5 header.
class HttpChecksumRequiredTrait extends AnnotationTrait {
  const HttpChecksumRequiredTrait() : super(id);

  const HttpChecksumRequiredTrait.fromJson(Object? json) : super(id);

  static const id =
      ShapeId(namespace: 'smithy.api', shape: 'httpChecksumRequired');
}
