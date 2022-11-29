// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.sdk_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/sdk_configuration_property.dart'
    as _i2;

part 'sdk_type.g.dart';

/// A type of SDK that API Gateway can generate.
abstract class SdkType
    with _i1.AWSEquatable<SdkType>
    implements Built<SdkType, SdkTypeBuilder> {
  /// A type of SDK that API Gateway can generate.
  factory SdkType({
    List<_i2.SdkConfigurationProperty>? configurationProperties,
    String? description,
    String? friendlyName,
    String? id,
  }) {
    return _$SdkType._(
      configurationProperties: configurationProperties == null
          ? null
          : _i3.BuiltList(configurationProperties),
      description: description,
      friendlyName: friendlyName,
      id: id,
    );
  }

  /// A type of SDK that API Gateway can generate.
  factory SdkType.build([void Function(SdkTypeBuilder) updates]) = _$SdkType;

  const SdkType._();

  /// Constructs a [SdkType] from a [payload] and [response].
  factory SdkType.fromResponse(
    SdkType payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    SdkTypeRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SdkTypeBuilder b) {}

  /// A list of configuration properties of an SdkType.
  _i3.BuiltList<_i2.SdkConfigurationProperty>? get configurationProperties;

  /// The description of an SdkType.
  String? get description;

  /// The user-friendly name of an SdkType instance.
  String? get friendlyName;

  /// The identifier of an SdkType instance.
  String? get id;
  @override
  List<Object?> get props => [
        configurationProperties,
        description,
        friendlyName,
        id,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SdkType');
    helper.add(
      'configurationProperties',
      configurationProperties,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'friendlyName',
      friendlyName,
    );
    helper.add(
      'id',
      id,
    );
    return helper.toString();
  }
}

class SdkTypeRestJson1Serializer
    extends _i4.StructuredSmithySerializer<SdkType> {
  const SdkTypeRestJson1Serializer() : super('SdkType');

  @override
  Iterable<Type> get types => const [
        SdkType,
        _$SdkType,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  SdkType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdkTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'configurationProperties':
          if (value != null) {
            result.configurationProperties.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.SdkConfigurationProperty)],
              ),
            ) as _i3.BuiltList<_i2.SdkConfigurationProperty>));
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'friendlyName':
          if (value != null) {
            result.friendlyName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'id':
          if (value != null) {
            result.id = (serializers.deserialize(
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
    final payload = (object as SdkType);
    final result = <Object?>[];
    if (payload.configurationProperties != null) {
      result
        ..add('configurationProperties')
        ..add(serializers.serialize(
          payload.configurationProperties!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.SdkConfigurationProperty)],
          ),
        ));
    }
    if (payload.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.friendlyName != null) {
      result
        ..add('friendlyName')
        ..add(serializers.serialize(
          payload.friendlyName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(
          payload.id!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
