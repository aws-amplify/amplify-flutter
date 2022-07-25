// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:smithy/smithy.dart';
import 'package:xml/xml.dart';

class SmithyXmlPlugin implements SerializerPlugin {
  const SmithyXmlPlugin();

  @override
  Object? beforeSerialize(Object? object, FullType specifiedType) {
    if (specifiedType.isUnspecified) {
      throw ArgumentError('XmlPlugin cannot serialize unspecified types.');
    }
    return object;
  }

  @override
  Object? afterSerialize(Object? object, FullType specifiedType) {
    if (object is XmlNode) {
      return object;
    }
    if (object is! List<Object?>) {
      return object.toString();
    }
    if (object.isEmpty) {
      return null;
    }
    // Regular XML list of key-value pairs
    if (object.length.isEven && object.none((el) => el is XmlAttribute)) {
      return _serialize(object);
    }
    final builder = XmlBuilder();
    final iterator = object.iterator..moveNext();
    final wireName = iterator.current as XmlElementName;
    final namespace = wireName.namespace;
    builder.element(wireName.name, nest: () {
      if (namespace != null) {
        builder.namespace(namespace.uri, namespace.prefix);
      }
      while (iterator.moveNext()) {
        final key = iterator.current;
        if (key is XmlAttribute) {
          builder.attribute(key.name.qualified, key.value);
          continue;
        }
        iterator.moveNext();
        var value = iterator.current;
        _nest(builder, key, value);
      }
    });
    return builder.buildDocument().rootElement;
  }

  XmlNode _toNode(Object object) {
    if (object is XmlNode) {
      return object;
    }
    return XmlText(object.toString());
  }

  Object? _serialize(List<Object?> object) {
    final res = <XmlElement>[];
    if (object.length == 1) {
      final el = object.first;
      if (el is XmlNode) {
        return el;
      }
    }
    for (var i = 0; i < object.length; i++) {
      var key = object[i];
      final attributes = <XmlAttribute>[];
      if (key is XmlElementName) {
        if (key.namespace != null) {
          attributes.add(XmlAttribute(
            key.namespace!.xmlName,
            key.namespace!.uri,
          ));
        }
        key = XmlName(key.name);
      } else {
        if (key is! XmlName) {
          key = XmlName(key as String);
        }
      }
      key as XmlName;
      var value = object[++i];
      if (value is Iterable<Object?>) {
        value = _serialize(value.toList());
      } else if (value is XmlElement) {
        value = value.children.map((child) => child.copy()).toList();
      }
      res.add(XmlElement(
        key,
        attributes,
        value == null
            ? const []
            : value is List<XmlNode>
                ? value
                : [_toNode(value)],
      ));
    }
    return res;
  }

  Map<String, String> _toAttributeMap(List<XmlAttribute> attributes) => {
        for (final attr in attributes)
          if (!attr.isNamespace) attr.name.qualified: attr.value,
      };

  void _nest(
    XmlBuilder builder,
    Object? key,
    Object? value, [
    List<XmlAttribute> attributes = const [],
  ]) {
    String elementName;
    XmlNamespace? namespace;
    if (key is String) {
      elementName = key;
    } else {
      key as XmlElementName;
      elementName = key.name;
      namespace = key.namespace;
    }
    final namespaces = <String, String>{
      if (namespace != null) namespace.uri: namespace.prefix ?? ''
    };

    if (value is Iterable<XmlNode> || value is! Iterable<Object?>) {
      if (value is XmlElement) {
        builder.element(
          elementName,
          namespaces: namespaces,
          attributes: _toAttributeMap([
            ...attributes,
            ...value.attributes,
          ]),
          nest: value.children,
        );
      } else {
        builder.element(
          elementName,
          attributes: _toAttributeMap(attributes),
          namespaces: namespaces,
          nest: value,
        );
      }
      return;
    }

    builder.element(
      elementName,
      attributes: _toAttributeMap(attributes),
      namespaces: namespaces,
      nest: () {
        final values = value.toList();
        for (var i = 0; i < values.length; i++) {
          final el = values[i];
          if (el is XmlElement) {
            _nest(builder, el.name, el.children, el.attributes);
            continue;
          }

          i++;
          _nest(builder, el, values[i]);
        }
      },
    );
  }

  /// Transforms [XmlDocument]s to lists of objects which the serializer
  /// can understand.
  @override
  Object? beforeDeserialize(Object? object, FullType specifiedType) {
    if (object is! XmlDocument) {
      if (object is! String || !object.startsWith('<')) {
        return object;
      }
      try {
        object = XmlDocument.parse(object);
      } on XmlParserException {
        return object;
      } on XmlTagException {
        return object;
      }
    }
    return _deserialize(object.rootElement);
  }

  @override
  Object? afterDeserialize(Object? object, FullType specifiedType) {
    return object;
  }

  Object? _deserialize(XmlNode node) {
    if (node is XmlElement) {
      if (node.children.length == 1) {
        final child = node.children.single;
        if (child is XmlElement) {
          return [child.name.qualified, _deserialize(child)];
        } else {
          return _deserialize(child);
        }
      }
      final els = <Object?>[];
      for (final attr in node.attributes) {
        if (attr.isNamespace) {
          continue;
        } else {
          els.add(attr.name.qualified);
          els.add(attr.value);
        }
      }
      for (final el in node.childElements) {
        els.add(el.name.qualified);
        els.add(_deserialize(el));
      }
      return els;
    } else if (node is XmlText) {
      return node.text;
    }
    throw ArgumentError('Invalid type: ${node.runtimeType}');
  }
}

extension on XmlAttribute {
  bool get isNamespace =>
      (name.local == 'xmlns' && name.prefix == null) || name.prefix == 'xmlns';
}
