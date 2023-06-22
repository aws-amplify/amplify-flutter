// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.cors_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'cors_rule.g.dart';

/// Specifies a cross-origin access rule for an Amazon S3 bucket.
abstract class CorsRule
    with _i1.AWSEquatable<CorsRule>
    implements Built<CorsRule, CorsRuleBuilder> {
  /// Specifies a cross-origin access rule for an Amazon S3 bucket.
  factory CorsRule({
    String? id,
    List<String>? allowedHeaders,
    required List<String> allowedMethods,
    required List<String> allowedOrigins,
    List<String>? exposeHeaders,
    int? maxAgeSeconds,
  }) {
    return _$CorsRule._(
      id: id,
      allowedHeaders:
          allowedHeaders == null ? null : _i2.BuiltList(allowedHeaders),
      allowedMethods: _i2.BuiltList(allowedMethods),
      allowedOrigins: _i2.BuiltList(allowedOrigins),
      exposeHeaders:
          exposeHeaders == null ? null : _i2.BuiltList(exposeHeaders),
      maxAgeSeconds: maxAgeSeconds,
    );
  }

  /// Specifies a cross-origin access rule for an Amazon S3 bucket.
  factory CorsRule.build([void Function(CorsRuleBuilder) updates]) = _$CorsRule;

  const CorsRule._();

  static const List<_i3.SmithySerializer<CorsRule>> serializers = [
    CorsRuleRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CorsRuleBuilder b) {}

  /// Unique identifier for the rule. The value cannot be longer than 255 characters.
  String? get id;

  /// Headers that are specified in the `Access-Control-Request-Headers` header. These headers are allowed in a preflight OPTIONS request. In response to any preflight OPTIONS request, Amazon S3 returns any requested headers that are allowed.
  _i2.BuiltList<String>? get allowedHeaders;

  /// An HTTP method that you allow the origin to execute. Valid values are `GET`, `PUT`, `HEAD`, `POST`, and `DELETE`.
  _i2.BuiltList<String> get allowedMethods;

  /// One or more origins you want customers to be able to access the bucket from.
  _i2.BuiltList<String> get allowedOrigins;

  /// One or more headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript `XMLHttpRequest` object).
  _i2.BuiltList<String>? get exposeHeaders;

  /// The time in seconds that your browser is to cache the preflight response for the specified resource.
  int? get maxAgeSeconds;
  @override
  List<Object?> get props => [
        id,
        allowedHeaders,
        allowedMethods,
        allowedOrigins,
        exposeHeaders,
        maxAgeSeconds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CorsRule')
      ..add(
        'id',
        id,
      )
      ..add(
        'allowedHeaders',
        allowedHeaders,
      )
      ..add(
        'allowedMethods',
        allowedMethods,
      )
      ..add(
        'allowedOrigins',
        allowedOrigins,
      )
      ..add(
        'exposeHeaders',
        exposeHeaders,
      )
      ..add(
        'maxAgeSeconds',
        maxAgeSeconds,
      );
    return helper.toString();
  }
}

class CorsRuleRestXmlSerializer
    extends _i3.StructuredSmithySerializer<CorsRule> {
  const CorsRuleRestXmlSerializer() : super('CorsRule');

  @override
  Iterable<Type> get types => const [
        CorsRule,
        _$CorsRule,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  CorsRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AllowedHeader':
          result.allowedHeaders.add((serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String));
        case 'AllowedMethod':
          result.allowedMethods.add((serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String));
        case 'AllowedOrigin':
          result.allowedOrigins.add((serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String));
        case 'ExposeHeader':
          result.exposeHeaders.add((serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String));
        case 'ID':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxAgeSeconds':
          result.maxAgeSeconds = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CorsRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CorsRule',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final CorsRule(
      :allowedHeaders,
      :allowedMethods,
      :allowedOrigins,
      :exposeHeaders,
      :id,
      :maxAgeSeconds
    ) = object;
    if (allowedHeaders != null) {
      result$.addAll(
          const _i3.XmlBuiltListSerializer(memberName: 'AllowedHeader')
              .serialize(
        serializers,
        allowedHeaders,
        specifiedType: const FullType.nullable(
          _i2.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    result$.addAll(
        const _i3.XmlBuiltListSerializer(memberName: 'AllowedMethod').serialize(
      serializers,
      allowedMethods,
      specifiedType: const FullType.nullable(
        _i2.BuiltList,
        [FullType(String)],
      ),
    ));
    result$.addAll(
        const _i3.XmlBuiltListSerializer(memberName: 'AllowedOrigin').serialize(
      serializers,
      allowedOrigins,
      specifiedType: const FullType.nullable(
        _i2.BuiltList,
        [FullType(String)],
      ),
    ));
    if (exposeHeaders != null) {
      result$.addAll(
          const _i3.XmlBuiltListSerializer(memberName: 'ExposeHeader')
              .serialize(
        serializers,
        exposeHeaders,
        specifiedType: const FullType.nullable(
          _i2.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (id != null) {
      result$
        ..add(const _i3.XmlElementName('ID'))
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    if (maxAgeSeconds != null) {
      result$
        ..add(const _i3.XmlElementName('MaxAgeSeconds'))
        ..add(serializers.serialize(
          maxAgeSeconds,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result$;
  }
}
