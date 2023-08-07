// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.get_object_lock_configuration_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_enabled.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_rule.dart';

part 'get_object_lock_configuration_output.g.dart';

abstract class GetObjectLockConfigurationOutput
    with
        _i1.AWSEquatable<GetObjectLockConfigurationOutput>
    implements
        Built<GetObjectLockConfigurationOutput,
            GetObjectLockConfigurationOutputBuilder>,
        _i2.HasPayload<ObjectLockConfiguration> {
  factory GetObjectLockConfigurationOutput(
      {ObjectLockConfiguration? objectLockConfiguration}) {
    return _$GetObjectLockConfigurationOutput._(
        objectLockConfiguration: objectLockConfiguration);
  }

  factory GetObjectLockConfigurationOutput.build(
          [void Function(GetObjectLockConfigurationOutputBuilder) updates]) =
      _$GetObjectLockConfigurationOutput;

  const GetObjectLockConfigurationOutput._();

  /// Constructs a [GetObjectLockConfigurationOutput] from a [payload] and [response].
  factory GetObjectLockConfigurationOutput.fromResponse(
    ObjectLockConfiguration? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetObjectLockConfigurationOutput.build((b) {
        if (payload != null) {
          b.objectLockConfiguration.replace(payload);
        }
      });

  static const List<_i2.SmithySerializer<ObjectLockConfiguration?>>
      serializers = [GetObjectLockConfigurationOutputRestXmlSerializer()];

  /// The specified bucket's Object Lock configuration.
  ObjectLockConfiguration? get objectLockConfiguration;
  @override
  ObjectLockConfiguration? getPayload() =>
      objectLockConfiguration ?? ObjectLockConfiguration();
  @override
  List<Object?> get props => [objectLockConfiguration];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetObjectLockConfigurationOutput')
          ..add(
            'objectLockConfiguration',
            objectLockConfiguration,
          );
    return helper.toString();
  }
}

class GetObjectLockConfigurationOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ObjectLockConfiguration> {
  const GetObjectLockConfigurationOutputRestXmlSerializer()
      : super('GetObjectLockConfigurationOutput');

  @override
  Iterable<Type> get types => const [
        GetObjectLockConfigurationOutput,
        _$GetObjectLockConfigurationOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ObjectLockConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectLockConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ObjectLockEnabled':
          result.objectLockEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(ObjectLockEnabled),
          ) as ObjectLockEnabled);
        case 'Rule':
          result.rule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ObjectLockRule),
          ) as ObjectLockRule));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ObjectLockConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ObjectLockConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ObjectLockConfiguration(:objectLockEnabled, :rule) = object;
    if (objectLockEnabled != null) {
      result$
        ..add(const _i2.XmlElementName('ObjectLockEnabled'))
        ..add(serializers.serialize(
          objectLockEnabled,
          specifiedType: const FullType.nullable(ObjectLockEnabled),
        ));
    }
    if (rule != null) {
      result$
        ..add(const _i2.XmlElementName('Rule'))
        ..add(serializers.serialize(
          rule,
          specifiedType: const FullType(ObjectLockRule),
        ));
    }
    return result$;
  }
}
