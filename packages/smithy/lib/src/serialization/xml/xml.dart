import 'package:xml/xml.dart';

/// Properties for XML serializable types.
mixin XmlSerializable {
  /// Returns a map of attribute names to their values.
  Map<String, Object> getAttributes() => const {};

  /// Returns the members which should be flattened during serialization.
  List<String> getFlattenedMembers() => const [];

  /// Returns a map of element names to their wire names.
  Map<String, String> getRenames() => const {};

  /// Returns the namespace of this type, if applicable.
  String? getNamespace() => null;
}

mixin AWSXmlSerializable {
  XmlNode toXml();

  @override
  String toString() => toXml().toXmlString(pretty: true);
}
