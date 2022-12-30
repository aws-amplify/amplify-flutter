// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template aws_signature_v4.aws_date_time}
/// A utility class which wraps [DateTime] objects.
///
/// Used for formatting dates and times throughout the signing process.
/// {@endtemplate}
class AWSDateTime {
  /// {@macro aws_signature_v4.aws_date_time}
  AWSDateTime(DateTime dateTime) : dateTime = dateTime.toUtc();

  /// {@macro aws_signature_v4.aws_date_time}
  ///
  /// Uses [DateTime.now] as the input.
  AWSDateTime.now() : dateTime = DateTime.now().toUtc();

  /// The underlying [DateTime] object.
  final DateTime dateTime;

  /// Formats the date and time as `YYYYMMDDTHHMMSSZ`.
  String formatFull() => '${formatDate()}T${formatTime()}Z';

  /// Formats the date as `YYYYMMDD`.
  String formatDate() =>
      '${dateTime.year}'.padLeft(4, '0') +
      '${dateTime.month}'.padLeft(2, '0') +
      '${dateTime.day}'.padLeft(2, '0');

  /// Formats the time as `HHMMSS`.
  String formatTime() =>
      '${dateTime.hour}'.padLeft(2, '0') +
      '${dateTime.minute}'.padLeft(2, '0') +
      '${dateTime.second}'.padLeft(2, '0');

  @override
  String toString() => formatFull();
}
