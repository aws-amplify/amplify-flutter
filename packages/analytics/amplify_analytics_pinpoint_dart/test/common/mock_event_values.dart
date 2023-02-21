import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/session.dart';

const eventType = 'eventType';

const successEventType = 'successEventType';
const retryableFailEventType = 'retryableFailEventType';
const failEventType = 'failEventType';

final session = Session(
  duration: 100,
  id: 'id',
  startTimestamp: DateTime.utc(2020).toIso8601String(),
  stopTimestamp: DateTime.utc(2020, 1).toIso8601String(),
);
