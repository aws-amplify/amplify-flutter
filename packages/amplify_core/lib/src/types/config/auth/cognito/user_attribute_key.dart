//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

@internal
class CognitoUserAttributeKeyConverter
    extends JsonConverter<CognitoUserAttributeKey, String> {
  const CognitoUserAttributeKeyConverter();

  @override
  CognitoUserAttributeKey fromJson(String json) {
    return CognitoUserAttributeKey.parse(json);
  }

  @override
  String toJson(CognitoUserAttributeKey object) {
    return object.key.toUpperCase();
  }
}
