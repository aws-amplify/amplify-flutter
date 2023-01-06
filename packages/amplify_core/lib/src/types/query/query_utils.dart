// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'query_field.dart';

/// Removes the model name that is pre-pended to id fields.
///
/// ID fields are named `<Model_Name>.<Field_Name>`, for example "blog.id".
/// This util will remove the model name and return just the field name ("id").
String getFieldName(String fieldName) {
  return fieldName.endsWith('.id') ? 'id' : fieldName;
}
