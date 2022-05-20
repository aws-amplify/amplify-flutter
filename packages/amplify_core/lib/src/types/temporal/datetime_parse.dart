/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

// ignore_for_file: public_member_api_docs

import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

final _iso8601Format = DateFormat("yyyy-MM-dd'T'HH:mm:ssZ");

@internal
extension DateTimeParse on DateTime {
  String toDateTimeIso8601String() {
    return _iso8601Format.format(this);
  }

  static DateTime? fromString(String? input) {
    return input == null ? null : DateTime.parse(input);
  }
}
