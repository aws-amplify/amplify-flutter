import 'package:uuid/uuid.dart';

final uuid = Uuid();

final String mockPhoneNumber = '+15555551234';

String generateEmail() =>
    'test-amplify-flutter-${uuid.v4()}@test${uuid.v4()}.com';

String generatePassword() => uuid.v4();

String generateUsername() => 'TEMP_USER-${uuid.v4()}';
