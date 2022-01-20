import 'package:smithy/smithy.dart';

/// Type representing `void` or empty structure.
class Unit with HttpInput<Unit> {
  const Unit();

  @override
  Unit getPayload() => this;
}
