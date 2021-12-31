import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/src/serialization/xml/xml.dart';

part 'xml_model.g.dart';

abstract class XmlModel
    with XmlSerializable
    implements Built<XmlModel, XmlModelBuilder> {
  factory XmlModel([void Function(XmlModelBuilder) updates]) = _$XmlModel;
  XmlModel._();

  Uint8List get blob;

  static Serializer<XmlModel> get serializer => _$xmlModelSerializer;
}
