// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.base_path_mapping; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'base_path_mapping.g.dart';

/// Represents the base path that callers of the API must provide as part of the URL after the domain name.
abstract class BasePathMapping
    with _i1.AWSEquatable<BasePathMapping>
    implements Built<BasePathMapping, BasePathMappingBuilder> {
  /// Represents the base path that callers of the API must provide as part of the URL after the domain name.
  factory BasePathMapping({
    String? basePath,
    String? restApiId,
    String? stage,
  }) {
    return _$BasePathMapping._(
      basePath: basePath,
      restApiId: restApiId,
      stage: stage,
    );
  }

  /// Represents the base path that callers of the API must provide as part of the URL after the domain name.
  factory BasePathMapping.build(
      [void Function(BasePathMappingBuilder) updates]) = _$BasePathMapping;

  const BasePathMapping._();

  /// Constructs a [BasePathMapping] from a [payload] and [response].
  factory BasePathMapping.fromResponse(
    BasePathMapping payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    BasePathMappingRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BasePathMappingBuilder b) {}

  /// The base path name that callers of the API must provide as part of the URL after the domain name.
  String? get basePath;

  /// The string identifier of the associated RestApi.
  String? get restApiId;

  /// The name of the associated stage.
  String? get stage;
  @override
  List<Object?> get props => [
        basePath,
        restApiId,
        stage,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BasePathMapping');
    helper.add(
      'basePath',
      basePath,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    helper.add(
      'stage',
      stage,
    );
    return helper.toString();
  }
}

class BasePathMappingRestJson1Serializer
    extends _i2.StructuredSmithySerializer<BasePathMapping> {
  const BasePathMappingRestJson1Serializer() : super('BasePathMapping');

  @override
  Iterable<Type> get types => const [
        BasePathMapping,
        _$BasePathMapping,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  BasePathMapping deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BasePathMappingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'basePath':
          if (value != null) {
            result.basePath = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'restApiId':
          if (value != null) {
            result.restApiId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'stage':
          if (value != null) {
            result.stage = (serializers.deserialize(
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
    final payload = (object as BasePathMapping);
    final result = <Object?>[];
    if (payload.basePath != null) {
      result
        ..add('basePath')
        ..add(serializers.serialize(
          payload.basePath!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.restApiId != null) {
      result
        ..add('restApiId')
        ..add(serializers.serialize(
          payload.restApiId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stage != null) {
      result
        ..add('stage')
        ..add(serializers.serialize(
          payload.stage!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
