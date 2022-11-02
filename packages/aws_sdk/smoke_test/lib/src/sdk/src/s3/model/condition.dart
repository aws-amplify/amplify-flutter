// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.condition; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'condition.g.dart';

/// A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the `/docs` folder, redirect to the `/documents` folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error.
abstract class Condition
    with _i1.AWSEquatable<Condition>
    implements Built<Condition, ConditionBuilder> {
  /// A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the `/docs` folder, redirect to the `/documents` folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error.
  factory Condition({
    String? httpErrorCodeReturnedEquals,
    String? keyPrefixEquals,
  }) {
    return _$Condition._(
      httpErrorCodeReturnedEquals: httpErrorCodeReturnedEquals,
      keyPrefixEquals: keyPrefixEquals,
    );
  }

  /// A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the `/docs` folder, redirect to the `/documents` folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error.
  factory Condition.build([void Function(ConditionBuilder) updates]) =
      _$Condition;

  const Condition._();

  static const List<_i2.SmithySerializer> serializers = [
    ConditionRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConditionBuilder b) {}

  /// The HTTP error code when the redirect is applied. In the event of an error, if the error code equals this value, then the specified redirect is applied. Required when parent element `Condition` is specified and sibling `KeyPrefixEquals` is not specified. If both are specified, then both must be true for the redirect to be applied.
  String? get httpErrorCodeReturnedEquals;

  /// The object key name prefix when the redirect is applied. For example, to redirect requests for `ExamplePage.html`, the key prefix will be `ExamplePage.html`. To redirect request for all pages with the prefix `docs/`, the key prefix will be `/docs`, which identifies all objects in the `docs/` folder. Required when the parent element `Condition` is specified and sibling `HttpErrorCodeReturnedEquals` is not specified. If both conditions are specified, both must be true for the redirect to be applied.
  ///
  /// Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  String? get keyPrefixEquals;
  @override
  List<Object?> get props => [
        httpErrorCodeReturnedEquals,
        keyPrefixEquals,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Condition');
    helper.add(
      'httpErrorCodeReturnedEquals',
      httpErrorCodeReturnedEquals,
    );
    helper.add(
      'keyPrefixEquals',
      keyPrefixEquals,
    );
    return helper.toString();
  }
}

class ConditionRestXmlSerializer
    extends _i2.StructuredSmithySerializer<Condition> {
  const ConditionRestXmlSerializer() : super('Condition');

  @override
  Iterable<Type> get types => const [
        Condition,
        _$Condition,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Condition deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConditionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'HttpErrorCodeReturnedEquals':
          if (value != null) {
            result.httpErrorCodeReturnedEquals = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'KeyPrefixEquals':
          if (value != null) {
            result.keyPrefixEquals = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as Condition);
    final result = <Object?>[
      const _i2.XmlElementName(
        'Condition',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.httpErrorCodeReturnedEquals != null) {
      result
        ..add(const _i2.XmlElementName('HttpErrorCodeReturnedEquals'))
        ..add(serializers.serialize(
          payload.httpErrorCodeReturnedEquals!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.keyPrefixEquals != null) {
      result
        ..add(const _i2.XmlElementName('KeyPrefixEquals'))
        ..add(serializers.serialize(
          payload.keyPrefixEquals!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
