// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_launch_template_data_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_launch_template_data_request.g.dart';

abstract class GetLaunchTemplateDataRequest
    with
        _i1.HttpInput<GetLaunchTemplateDataRequest>,
        _i2.AWSEquatable<GetLaunchTemplateDataRequest>
    implements
        Built<GetLaunchTemplateDataRequest,
            GetLaunchTemplateDataRequestBuilder> {
  factory GetLaunchTemplateDataRequest({
    bool? dryRun,
    String? instanceId,
  }) {
    dryRun ??= false;
    return _$GetLaunchTemplateDataRequest._(
      dryRun: dryRun,
      instanceId: instanceId,
    );
  }

  factory GetLaunchTemplateDataRequest.build(
          [void Function(GetLaunchTemplateDataRequestBuilder) updates]) =
      _$GetLaunchTemplateDataRequest;

  const GetLaunchTemplateDataRequest._();

  factory GetLaunchTemplateDataRequest.fromRequest(
    GetLaunchTemplateDataRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetLaunchTemplateDataRequest>>
      serializers = [GetLaunchTemplateDataRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetLaunchTemplateDataRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the instance.
  String? get instanceId;
  @override
  GetLaunchTemplateDataRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        instanceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetLaunchTemplateDataRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'instanceId',
        instanceId,
      );
    return helper.toString();
  }
}

class GetLaunchTemplateDataRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetLaunchTemplateDataRequest> {
  const GetLaunchTemplateDataRequestEc2QuerySerializer()
      : super('GetLaunchTemplateDataRequest');

  @override
  Iterable<Type> get types => const [
        GetLaunchTemplateDataRequest,
        _$GetLaunchTemplateDataRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetLaunchTemplateDataRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetLaunchTemplateDataRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
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
    GetLaunchTemplateDataRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetLaunchTemplateDataRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetLaunchTemplateDataRequest(:dryRun, :instanceId) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
