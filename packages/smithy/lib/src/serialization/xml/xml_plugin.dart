import 'package:built_value/serializer.dart';
import 'package:xml/xml.dart';

class XmlPlugin implements SerializerPlugin {
  const XmlPlugin();

  @override
  Object? beforeSerialize(Object? object, FullType specifiedType) {
    if (specifiedType.isUnspecified) {
      throw ArgumentError('XmlPlugin cannot serialize unspecified types.');
    }
    return object;
  }

  @override
  Object? afterSerialize(Object? object, FullType specifiedType) {
    if (object is! List) {
      throw ArgumentError(
        'XmlPlugin cannot serialize primitive types, only unions and structs.',
      );
    }
    final wireName = object.first as String;
    return XmlBuilder()..element(wireName);
  }

  /// Transforms [XmlNode]s to lists of objects which the serializer
  /// can understand.
  @override
  Object? beforeDeserialize(Object? object, FullType specifiedType) {
    if (object is! XmlNode) {
      if (object is String) {
        object = XmlDocument.parse(object);
      }
      throw ArgumentError.value(object, 'object', 'must be an XmlNode');
    }

    return _toList(object);
  }

  @override
  Object? afterDeserialize(Object? object, FullType specifiedType) {
    return object;
  }

  List<Object?> _toList(XmlNode node) {
    throw UnimplementedError();
  }
}
