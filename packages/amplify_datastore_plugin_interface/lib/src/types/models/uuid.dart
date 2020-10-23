import 'package:uuid/uuid.dart';

class UUID {
  static final _internal = Uuid();

  static String getUUID() {
    return _internal.v1();
  }
}
