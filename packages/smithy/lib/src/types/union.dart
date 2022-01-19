import 'package:built_value/serializer.dart';
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
    with AWSEquatable<SmithyUnion<U>> {
  const SmithyUnion();

  /// The key or property name of [value].
  String get name;

  // Exactly one member of a union MUST be set to a non-null value.
  /// The union's value.
  Object get value;

  @override
  List<Object> get props => [U, value];

  /// Switch on the union's value.
  T? when<T>();

  @override
  String toString() => value.toString();
}

/// A protocol-agnostic serializer for [SmithyUnion] types, for use with
/// `built_value`.
class SmithyUnionSerializer<U extends SmithyUnion<U>>
    implements StructuredSerializer<U?> {
  const SmithyUnionSerializer(
    this.wireName,
    this.ctor,
  );

  final JsonConstructor<U?> ctor;

  @override
  final String wireName;

  @override
  U? deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return ctor({
      serialized.first as String: serialized.elementAt(1),
    });
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, U? object,
      {FullType specifiedType = FullType.unspecified}) {
    if (object == null) {
      return const Iterable.empty();
    }
    return [object.name, object.value];
  }

  @override
  Iterable<Type> get types => [U];
}
