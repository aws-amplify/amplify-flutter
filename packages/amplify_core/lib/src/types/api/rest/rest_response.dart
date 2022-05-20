/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// {@template rest_response}
/// An HTTP response from a REST API call.
/// {@endtemplate}
@immutable
class RestResponse {
  /// The response status code.
  final int statusCode;

  /// The response headers.
  ///
  /// Will be `null` if unavailable from the platform.
  final Map<String, String>? headers;

  /// The response body bytes.
  final Uint8List data;

  /// The decoded body (using UTF-8).
  ///
  /// For custom processing, use [data] to get the raw body bytes.
  late final String body;

  /// {@macro rest_response}
  RestResponse({
    required Uint8List? data,
    required this.headers,
    required this.statusCode,
  }) : data = data ?? Uint8List(0) {
    body = utf8.decode(this.data, allowMalformed: true);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RestResponse &&
          statusCode == other.statusCode &&
          headers == other.headers &&
          listEquals(data, other.data);

  @override
  int get hashCode => hashValues(statusCode, headers, hashList(data));

  @override
  String toString() {
    return 'RestResponse{statusCode=$statusCode, headers=$headers, body=$body}';
  }
}
