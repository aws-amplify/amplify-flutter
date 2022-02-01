// Credit to original Flutter team
//
//  https://api.flutter.dev/flutter/foundation/describeEnum.html

///
/// Returns description of enum value
String describeEnum(Object enumEntry) {
  final String description = enumEntry.toString();
  final int indexOfDot = description.indexOf('.');
  assert(
    indexOfDot != -1 && indexOfDot < description.length - 1,
    'The provided object "$enumEntry" is not an enum.',
  );
  return description.substring(indexOfDot + 1);
}
