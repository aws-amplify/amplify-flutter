import 'package:intl/intl.dart';
import 'package:date_time_format/date_time_format.dart';

/// In case the serialized date from different platforms come differently
/// Kotlin -> MMM d, yyyy h:mm:ss a
/// Dart -> ISO 8601 YYYY-MM-DDThh:mm:ssTZD
DateTime dateParser(String serializedDate) {
  if (serializedDate == null) {
    return null;
  }
  try {
    DateFormat kotlinFormat = new DateFormat("MMM d, yyyy h:mm:ss a");
    return kotlinFormat.parse(serializedDate);
  } on FormatException {
    try {
      return DateTime.parse(serializedDate);
    } on FormatException {
      return null;
    }
  }
}

String formatDateToISO8601(DateTime dateTime) {
  return dateTime == null
      ? null
      : DateTimeFormat.format(dateTime, format: DateTimeFormats.iso8601);
}
