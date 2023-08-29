// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_password_data_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_password_data_request.g.dart';

abstract class GetPasswordDataRequest
    with
        _i1.HttpInput<GetPasswordDataRequest>,
        _i2.AWSEquatable<GetPasswordDataRequest>
    implements Built<GetPasswordDataRequest, GetPasswordDataRequestBuilder> {
  factory GetPasswordDataRequest({
    String? instanceId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$GetPasswordDataRequest._(
      instanceId: instanceId,
      dryRun: dryRun,
    );
  }

  factory GetPasswordDataRequest.build(
          [void Function(GetPasswordDataRequestBuilder) updates]) =
      _$GetPasswordDataRequest;

  const GetPasswordDataRequest._();

  factory GetPasswordDataRequest.fromRequest(
    GetPasswordDataRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetPasswordDataRequest>> serializers =
      [GetPasswordDataRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetPasswordDataRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Windows instance.
  String? get instanceId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  GetPasswordDataRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetPasswordDataRequest')
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class GetPasswordDataRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetPasswordDataRequest> {
  const GetPasswordDataRequestEc2QuerySerializer()
      : super('GetPasswordDataRequest');

  @override
  Iterable<Type> get types => const [
        GetPasswordDataRequest,
        _$GetPasswordDataRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetPasswordDataRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetPasswordDataRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetPasswordDataRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetPasswordDataRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetPasswordDataRequest(:instanceId, :dryRun) = object;
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
