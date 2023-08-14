import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';
import 'package:xml/xml.dart';

class AwsQuerySerializer implements FullSerializer<List<int>> {
  AwsQuerySerializer(
    this._serializers, {
    required this.action,
    required this.version,
  });

  final String action;
  final String version;
  final Serializers _serializers;
  late final _xmlSerializer = XmlSerializer(_serializers);

  late final _prefix = 'Action=$action&Version=$version';

  @override
  Object? deserialize(List<int> input, {FullType? specifiedType}) {
    return _xmlSerializer.deserialize(input, specifiedType: specifiedType);
  }

  @override
  List<int> serialize(Object? input, {FullType? specifiedType}) {
    final serialized = _serializers.serialize(
      input,
      specifiedType: specifiedType ?? FullType.unspecified,
    );
    assert(
      serialized is XmlNode?,
      'awsQuery can only handle struct types as the root: $serialized',
    );
    if (serialized == null) {
      return utf8.encode(_prefix);
    }
    return utf8.encode(
      [
        _prefix,
        ..._serialize(serialized as XmlNode),
      ].join('&'),
    );
  }

  List<String> _serialize(XmlNode node) {
    final visitor = _XmlVisitor(node);
    node.accept(visitor);
    return visitor._result;
  }
}

class _XmlVisitor with XmlVisitor {
  _XmlVisitor(this._root);

  final XmlNode _root;
  final _result = <String>[];
  var _context = StringBuffer();

  @override
  void visitElement(XmlElement element) {
    if (_root != element) {
      if (_context.isNotEmpty) _context.write('.');
      _context.write('${element.name}');
    }
    for (final child in element.children) {
      final context = StringBuffer(_context.toString());
      child.accept(this);
      _context = context;
    }
  }

  @override
  void visitText(XmlText node) {
    _result.add('$_context=${Uri.encodeQueryComponent(node.value)}');
  }
}
