import 'package:smithy/smithy.dart';

/// An union representation in Smithy, i.e. a value which is one of a fixed set
/// of types.
///
/// For example, the following Smithy model:
///
/// ```
/// @enum("YES": {}, "NO": {})
/// string SimpleYesNo
/// ```
///
/// will be translated to an equivalent Dart model.
///
/// ```dart
/// class SimpleYesNo extends SmithyEnum<SimpleYesNo> {
///   const SimpleYesNo._(int index, String name, String value)
///       : super(index, name, value);
///   const SimpleYesNo.unknown(String value) : super.unknown(value);
///
///   static const yes = SimpleYesNo._(0, 'yes', 'YES');
///   static const no = SimpleYesNo._(1, 'no', 'NO');
///
///   static const List<SimpleYesNo> values = [
///     yes,
///     no,
///   ];
/// }
///
/// extension $SimpleYesNoSmithy on List<SimpleYesNo> {
///   SimpleYesNo? byName(String? name) =>
///       firstWhereOrNull((el) => el.name == name);
///
///   SimpleYesNo? byValue(String? value) {
///     if (value == null) return null;
///     return firstWhere(
///       (el) => el.value == value,
///       orElse: () => SimpleYesNo.unknown(value),
///     );
///   }
/// }
/// ```
abstract class SmithyUnion<U extends SmithyUnion<U>>
    with AWSEquatable<SmithyUnion<U>>, AWSSerializable {
  const SmithyUnion();

  // Exactly one member of a union MUST be set to a non-null value.
  /// The union's value.
  Object get value;

  @override
  List<Object> get props => [U, value];

  /// Switch on the union's value.
  T? when<T>();

  @override
  String toString() => value.toString();

  @override
  Object toJson();
}
