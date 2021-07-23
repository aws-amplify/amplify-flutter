import 'package:uuid/uuid.dart';
import 'dart:math';

var random = new Random();

final uuid = Uuid();

const String mockPhoneNumber = '+15555551234';
const String mockCode = '12345';

String generateEmail() => 'flutter-email-${randomNumber()}@test.com';

String generatePassword() => uuid.v4();

String generateUsername() => 'flutter-user-${randomNumber()}';

int randomNumber() => random.nextInt(500);
