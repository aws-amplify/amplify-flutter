import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_logging_cloudwatch/src/device_info/device_info.dart';
import 'package:intl/intl.dart';

const _guestUserId = 'guest';

/// {@template amplify_logging_cloudwatch.amplify_log_stream_name_provider}
/// It uses {mm-dd-yyyy}.{deviceId}.{userId|guest} format for log stream name.
///
/// It gets deviceId from platform information or uuid if it is `null`.
/// It gets userId from `Amplify.Auth.getCurrentUser()).userId` or uses `guest`
/// if userId is not available.
/// {@endtemplate}
class AmplifyLogStreamNameProvider {
  /// {@macro amplify_logging_cloudwatch.amplify_log_stream_name_provider}
  AmplifyLogStreamNameProvider();
  static final DateFormat _dateFormat = DateFormat('yyyy-MM-dd');
  String? _deviceID;

  /// Returns log stream name in `{mm-dd-yyyy}.{deviceId}.{userId|guest}` format
  Future<String> defaultLogStreamName() async {
    _deviceID ??= await getDeviceId() ?? UUID.getUUID();
    String userId;
    userId = await _getUserId();
    return '${_dateFormat.format(DateTime.timestamp())}.$_deviceID.$userId';
  }

  Future<String> _getUserId() async {
    String userId;
    try {
      userId = (await Amplify.Auth.getCurrentUser()).userId;
    } on Error {
      userId = _guestUserId;
    } on Exception {
      userId = _guestUserId;
    }
    return userId;
  }
}
