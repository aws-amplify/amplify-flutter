import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

///
class TemporalTimestamp {
  int _secondsSinceEpoch;

  ///
  TemporalTimestamp(DateTime date) {
    var ms = (new DateTime.now()).millisecondsSinceEpoch;
    _secondsSinceEpoch = (ms / 1000).round();
  }

  ///
  TemporalTimestamp.fromSeconds(int secondsSinceEpoch) {
    _secondsSinceEpoch = secondsSinceEpoch;
  }

  int toInt() {
    return _secondsSinceEpoch;
  }

  String toString() {
    return _secondsSinceEpoch.toString();
  }

  bool operator ==(o) =>
      o is TemporalTimestamp && _secondsSinceEpoch == o._secondsSinceEpoch;
  int get hashCode => _secondsSinceEpoch.hashCode;
}
