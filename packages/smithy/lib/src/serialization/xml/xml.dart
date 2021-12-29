import 'package:smithy/smithy.dart';
import 'package:xml/xml.dart';

mixin XmlSerializer<T> implements Serializer<T?, String?> {
  @override
  String? serialize(T? input) {}
}
