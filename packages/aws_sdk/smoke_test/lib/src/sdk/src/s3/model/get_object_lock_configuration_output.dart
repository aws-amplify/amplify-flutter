// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.get_object_lock_configuration_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_configuration.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_enabled.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_rule.dart' as _i5;

part 'get_object_lock_configuration_output.g.dart';

abstract class GetObjectLockConfigurationOutput
    with
        _i1.AWSEquatable<GetObjectLockConfigurationOutput>
    implements
        Built<GetObjectLockConfigurationOutput,
            GetObjectLockConfigurationOutputBuilder>,
        _i2.HasPayload<_i3.ObjectLockConfiguration> {
  factory GetObjectLockConfigurationOutput(
      {_i3.ObjectLockConfiguration? objectLockConfiguration}) {
    return _$GetObjectLockConfigurationOutput._(
        objectLockConfiguration: objectLockConfiguration);
  }

  factory GetObjectLockConfigurationOutput.build(
          [void Function(GetObjectLockConfigurationOutputBuilder) updates]) =
      _$GetObjectLockConfigurationOutput;

  const GetObjectLockConfigurationOutput._();

  /// Constructs a [GetObjectLockConfigurationOutput] from a [payload] and [response].
  factory GetObjectLockConfigurationOutput.fromResponse(
    _i3.ObjectLockConfiguration? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetObjectLockConfigurationOutput.build((b) {
        if (payload != null) {
          b.objectLockConfiguration.replace(payload);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    GetObjectLockConfigurationOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectLockConfigurationOutputBuilder b) {}

  /// The specified bucket's Object Lock configuration.
  _i3.ObjectLockConfiguration? get objectLockConfiguration;
  @override
  _i3.ObjectLockConfiguration? getPayload() =>
      objectLockConfiguration ?? _i3.ObjectLockConfiguration();
  @override
  List<Object?> get props => [objectLockConfiguration];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetObjectLockConfigurationOutput');
    helper.add(
      'objectLockConfiguration',
      objectLockConfiguration,
    );
    return helper.toString();
  }
}

class GetObjectLockConfigurationOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<_i3.ObjectLockConfiguration> {
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
  _i3.ObjectLockConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i3.ObjectLockConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ObjectLockEnabled':
          if (value != null) {
            result.objectLockEnabled = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ObjectLockEnabled),
            ) as _i4.ObjectLockEnabled);
          }
          break;
        case 'Rule':
          if (value != null) {
            result.rule.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.ObjectLockRule),
            ) as _i5.ObjectLockRule));
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
    final payload = object is GetObjectLockConfigurationOutput
        ? object.getPayload()
        : (object as _i3.ObjectLockConfiguration?);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ObjectLockConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload == null) {
      return result;
    }
    if (payload.objectLockEnabled != null) {
      result
        ..add(const _i2.XmlElementName('ObjectLockEnabled'))
        ..add(serializers.serialize(
          payload.objectLockEnabled!,
          specifiedType: const FullType.nullable(_i4.ObjectLockEnabled),
        ));
    }
    if (payload.rule != null) {
      result
        ..add(const _i2.XmlElementName('Rule'))
        ..add(serializers.serialize(
          payload.rule!,
          specifiedType: const FullType(_i5.ObjectLockRule),
        ));
    }
    return result;
  }
}
