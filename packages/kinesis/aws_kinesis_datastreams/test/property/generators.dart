// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:math';
import 'dart:typed_data';

import 'package:aws_kinesis_datastreams/src/impl/kinesis_record.dart';

/// Generators for property-based testing.
class Generators {
  Generators([int? seed]) : _random = Random(seed);

  // ignore: public_member_api_docs
  final Random _random;

  /// Generates a random string of the given length.
  String randomString(int maxLength) {
    final length = _random.nextInt(maxLength) + 1;
    const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    return String.fromCharCodes(
      Iterable.generate(length, (_) => chars.codeUnitAt(_random.nextInt(chars.length))),
    );
  }

  /// Generates a string with SQL injection characters.
  String sqlInjectionString() {
    final injectionPatterns = [
      "'; DROP TABLE kinesis_records; --",
      "1' OR '1'='1",
      "'; DELETE FROM kinesis_records WHERE '1'='1",
      "Robert'); DROP TABLE kinesis_records;--",
      "1; UPDATE kinesis_records SET data = 'hacked'",
      "' UNION SELECT * FROM kinesis_records --",
      "'; INSERT INTO kinesis_records VALUES (999, 'hack', 'hack', x'00', 0, 0, 0); --",
      'test\x00null',
      "test'quote",
      'test"doublequote',
      'test\nNewline',
      'test\rCarriage',
      'test\tTab',
      r'test\backslash',
      'test%percent',
      'test_underscore',
      '😀🎉🚀', // Unicode emojis
      '中文字符', // Chinese characters
      'العربية', // Arabic
    ];
    return injectionPatterns[_random.nextInt(injectionPatterns.length)];
  }

  /// Generates random bytes of the given max length.
  Uint8List randomBytes(int maxLength) {
    final length = _random.nextInt(maxLength) + 1;
    return Uint8List.fromList(
      List.generate(length, (_) => _random.nextInt(256)),
    );
  }

  /// Generates a random KinesisRecord.
  KinesisRecord randomRecord({
    int maxDataSize = 1024,
    String? streamName,
    String? partitionKey,
  }) {
    return KinesisRecord(
      data: randomBytes(maxDataSize),
      partitionKey: partitionKey ?? randomString(32),
      streamName: streamName ?? randomString(32),
    );
  }

  /// Generates a KinesisRecord with SQL injection characters.
  KinesisRecord sqlInjectionRecord() {
    return KinesisRecord(
      data: randomBytes(100),
      partitionKey: sqlInjectionString(),
      streamName: sqlInjectionString(),
    );
  }

  /// Generates a list of random records.
  List<KinesisRecord> randomRecords(int count, {int maxDataSize = 1024}) {
    return List.generate(count, (_) => randomRecord(maxDataSize: maxDataSize));
  }
}
