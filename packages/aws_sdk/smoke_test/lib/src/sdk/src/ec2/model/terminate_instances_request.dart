// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.terminate_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'terminate_instances_request.g.dart';

abstract class TerminateInstancesRequest
    with
        _i1.HttpInput<TerminateInstancesRequest>,
        _i2.AWSEquatable<TerminateInstancesRequest>
    implements
        Built<TerminateInstancesRequest, TerminateInstancesRequestBuilder> {
  factory TerminateInstancesRequest({
    List<String>? instanceIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$TerminateInstancesRequest._(
      instanceIds: instanceIds == null ? null : _i3.BuiltList(instanceIds),
      dryRun: dryRun,
    );
  }

  factory TerminateInstancesRequest.build(
          [void Function(TerminateInstancesRequestBuilder) updates]) =
      _$TerminateInstancesRequest;

  const TerminateInstancesRequest._();

  factory TerminateInstancesRequest.fromRequest(
    TerminateInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<TerminateInstancesRequest>>
      serializers = [TerminateInstancesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TerminateInstancesRequestBuilder b) {
    b.dryRun = false;
  }

  /// The IDs of the instances.
  ///
  /// Constraints: Up to 1000 instance IDs. We recommend breaking up this request into smaller batches.
  _i3.BuiltList<String>? get instanceIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  TerminateInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TerminateInstancesRequest')
      ..add(
        'instanceIds',
        instanceIds,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class TerminateInstancesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<TerminateInstancesRequest> {
  const TerminateInstancesRequestEc2QuerySerializer()
      : super('TerminateInstancesRequest');

  @override
  Iterable<Type> get types => const [
        TerminateInstancesRequest,
        _$TerminateInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TerminateInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TerminateInstancesRequestBuilder();
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
          result.instanceIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'InstanceId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
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
    TerminateInstancesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'TerminateInstancesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TerminateInstancesRequest(:instanceIds, :dryRun) = object;
    if (instanceIds != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'InstanceId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
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
