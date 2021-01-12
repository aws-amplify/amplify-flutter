import 'package:amplify_datastore_plugin_interface/src/types/temporal/temporal_datetime.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('AWSDateTime from DateTime success', () async {
    DateTime now = DateTime.now();

    TemporalDateTime time = TemporalDateTime(now);
    now = now.toUtc();

    expect(time.getOffset(), null);
    expect(time.toDateTime(), now);
    expect(time.format(), now.toIso8601String().substring(0, 26) + "000Z");
  });

  test('AWSDateTime from DateTime with offset success', () async {
    DateTime now = DateTime.now();
    Duration offset = Duration(hours: 3, minutes: 30);

    TemporalDateTime time = TemporalDateTime.withOffset(now, offset);
    now = now.toUtc();

    expect(time.getOffset(), offset);
    expect(time.toDateTime(), now.subtract(offset));
    expect(time.format(),
        now.toIso8601String().substring(0, 26) + "000" + "+03:30");
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mmZ success', () async {
    TemporalDateTime time = TemporalDateTime.fromString("1995-05-03T03:30Z");

    expect(time.getOffset(), null);
    expect(time.toDateTime(), DateTime.utc(1995, 05, 03, 03, 30));
    expect(time.format(), "1995-05-03T03:30:00Z");
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mm:ssZ success', () async {
    TemporalDateTime time = TemporalDateTime.fromString("1995-05-03T03:30:25Z");

    expect(time.getOffset(), null);
    expect(time.toDateTime(), DateTime.utc(1995, 05, 03, 03, 30, 25));
    expect(time.format(), "1995-05-03T03:30:25Z");
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mm:ss.sssZ success', () async {
    TemporalDateTime time =
        TemporalDateTime.fromString("1995-05-03T03:30:25.999999999Z");

    expect(time.getOffset(), null);
    expect(time.toDateTime(), DateTime.utc(1995, 05, 03, 03, 30, 25, 999, 999));
    expect(time.format(), "1995-05-03T03:30:25.999999999Z");
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mm+hh:mm success', () async {
    TemporalDateTime time =
        TemporalDateTime.fromString("1995-05-03T03:30+03:25");
    Duration duration = Duration(hours: 3, minutes: 25);

    expect(time.getOffset(), duration);
    expect(time.toDateTime(),
        DateTime.utc(1995, 05, 03, 03, 30).subtract(duration));
    expect(time.format(), "1995-05-03T03:30:00+03:25");
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mm-hh:mm success', () async {
    TemporalDateTime time =
        TemporalDateTime.fromString("1995-05-03T03:30-03:25");
    Duration duration = Duration(hours: -3, minutes: -25);

    expect(time.getOffset(), duration);
    expect(time.toDateTime(),
        DateTime.utc(1995, 05, 03, 03, 30).subtract(duration));
    expect(time.format(), "1995-05-03T03:30:00-03:25");
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mm+hh:mm:ss success', () async {
    TemporalDateTime time =
        TemporalDateTime.fromString("1995-05-03T03:30+03:25:55");
    Duration duration = Duration(hours: 3, minutes: 25, seconds: 55);

    expect(time.getOffset(), duration);
    expect(time.toDateTime(),
        DateTime.utc(1995, 05, 03, 03, 30).subtract(duration));
    expect(time.format(), "1995-05-03T03:30:00+03:25:55");
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mm:ss+hh:mm:ss success',
      () async {
    TemporalDateTime time =
        TemporalDateTime.fromString("1995-05-03T03:30:25+03:25:55");
    Duration duration = Duration(hours: 3, minutes: 25, seconds: 55);

    expect(time.getOffset(), duration);
    expect(time.toDateTime(),
        DateTime.utc(1995, 05, 03, 03, 30, 25).subtract(duration));
    expect(time.format(), "1995-05-03T03:30:25+03:25:55");
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mm:ss.sss+hh:mm:ss success',
      () async {
    TemporalDateTime time =
        TemporalDateTime.fromString("1995-05-03T03:30:25.999999999+03:25:55");
    Duration duration = Duration(hours: 3, minutes: 25, seconds: 55);

    expect(time.getOffset(), duration);
    expect(time.toDateTime(),
        DateTime.utc(1995, 05, 03, 03, 30, 25, 999, 999).subtract(duration));
    expect(time.format(), "1995-05-03T03:30:25.999999999+03:25:55");
  });

  test(
      'AWSDateTime from string YYYY-MM-DDThh:mm:ss.sss+hh:mm:ss success with 5 digit nanosecond',
      () async {
    TemporalDateTime time =
        TemporalDateTime.fromString("1995-05-03T03:30:25.99999+03:25:55");
    Duration duration = Duration(hours: 3, minutes: 25, seconds: 55);

    expect(time.getOffset(), duration);
    expect(time.toDateTime(),
        DateTime.utc(1995, 05, 03, 03, 30, 25, 0, 99).subtract(duration));
    expect(time.format(), "1995-05-03T03:30:25.000099999+03:25:55");
  });

  test('AWSDateTime from offset with single digit duration', () async {
    DateTime now = DateTime.now();
    Duration offset = Duration(hours: 3, minutes: 3, seconds: 03);

    TemporalDateTime time = TemporalDateTime.withOffset(now, offset);
    now = now.toUtc();

    expect(time.getOffset(), offset);
    expect(time.toDateTime(), now.subtract(offset));
    expect(time.format(),
        now.toIso8601String().substring(0, 26) + "000" + "+03:03:03");
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mm fails', () async {
    expect(
        () => TemporalDateTime.fromString("1995-05-03T03:30"), throwsException);
  });

  test('AWSDateTime from string YYYY-MM-DDThhZ fails', () async {
    expect(
        () => TemporalDateTime.fromString("1995-05-03T03Z"), throwsException);
  });

  test('AWSDateTime from string YYYY-MM-DDThh:ss+hh fails', () async {
    expect(() => TemporalDateTime.fromString("1995-05-03T03:25+03"),
        throwsException);
  });

  test('AWSDateTime from string YYYY-MM-DDThh.sssZ fails', () async {
    expect(() => TemporalDateTime.fromString("1995-05-03T03.999999999"),
        throwsException);
  });
}
