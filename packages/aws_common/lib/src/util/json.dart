// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

/// Encodes [json] with indentation for easier debugging.
String prettyPrintJson(Object? json) {
  const defaultIndent = '  ';
  const jsonIndent = JsonEncoder.withIndent(defaultIndent);
  return jsonIndent.convert(json);
}
