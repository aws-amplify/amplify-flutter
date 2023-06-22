// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i2.SmithySerializer<Condition>> serializers = [
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
    final helper = newBuiltValueToStringHelper('Condition')
      ..add(
        'httpErrorCodeReturnedEquals',
        httpErrorCodeReturnedEquals,
      )
      ..add(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'HttpErrorCodeReturnedEquals':
          result.httpErrorCodeReturnedEquals = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'KeyPrefixEquals':
          result.keyPrefixEquals = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Condition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Condition',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final Condition(:httpErrorCodeReturnedEquals, :keyPrefixEquals) = object;
    if (httpErrorCodeReturnedEquals != null) {
      result$
        ..add(const _i2.XmlElementName('HttpErrorCodeReturnedEquals'))
        ..add(serializers.serialize(
          httpErrorCodeReturnedEquals,
          specifiedType: const FullType(String),
        ));
    }
    if (keyPrefixEquals != null) {
      result$
        ..add(const _i2.XmlElementName('KeyPrefixEquals'))
        ..add(serializers.serialize(
          keyPrefixEquals,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
