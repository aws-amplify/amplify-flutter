// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_password_data_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_password_data_result.g.dart';

abstract class GetPasswordDataResult
    with _i1.AWSEquatable<GetPasswordDataResult>
    implements Built<GetPasswordDataResult, GetPasswordDataResultBuilder> {
  factory GetPasswordDataResult({
    String? instanceId,
    String? passwordData,
    DateTime? timestamp,
  }) {
    return _$GetPasswordDataResult._(
      instanceId: instanceId,
      passwordData: passwordData,
      timestamp: timestamp,
    );
  }

  factory GetPasswordDataResult.build(
          [void Function(GetPasswordDataResultBuilder) updates]) =
      _$GetPasswordDataResult;

  const GetPasswordDataResult._();

  /// Constructs a [GetPasswordDataResult] from a [payload] and [response].
  factory GetPasswordDataResult.fromResponse(
    GetPasswordDataResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetPasswordDataResult>> serializers = [
    GetPasswordDataResultEc2QuerySerializer()
  ];

  /// The ID of the Windows instance.
  String? get instanceId;

  /// The password of the instance. Returns an empty string if the password is not available.
  String? get passwordData;

  /// The time the data was last updated.
  DateTime? get timestamp;
  @override
  List<Object?> get props => [
        instanceId,
        passwordData,
        timestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetPasswordDataResult')
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'passwordData',
        '***SENSITIVE***',
      )
      ..add(
        'timestamp',
        timestamp,
      );
    return helper.toString();
  }
}

class GetPasswordDataResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<GetPasswordDataResult> {
  const GetPasswordDataResultEc2QuerySerializer()
      : super('GetPasswordDataResult');

  @override
  Iterable<Type> get types => const [
        GetPasswordDataResult,
        _$GetPasswordDataResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetPasswordDataResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetPasswordDataResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'passwordData':
          result.passwordData = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'timestamp':
          result.timestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetPasswordDataResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetPasswordDataResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetPasswordDataResult(:instanceId, :passwordData, :timestamp) =
        object;
    if (instanceId != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (passwordData != null) {
      result$
        ..add(const _i2.XmlElementName('PasswordData'))
        ..add(serializers.serialize(
          passwordData,
          specifiedType: const FullType(String),
        ));
    }
    if (timestamp != null) {
      result$
        ..add(const _i2.XmlElementName('Timestamp'))
        ..add(serializers.serialize(
          timestamp,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
