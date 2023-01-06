// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
