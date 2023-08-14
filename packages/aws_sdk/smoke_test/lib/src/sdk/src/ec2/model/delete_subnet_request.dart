// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_subnet_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_subnet_request.g.dart';

abstract class DeleteSubnetRequest
    with
        _i1.HttpInput<DeleteSubnetRequest>,
        _i2.AWSEquatable<DeleteSubnetRequest>
    implements Built<DeleteSubnetRequest, DeleteSubnetRequestBuilder> {
  factory DeleteSubnetRequest({
    String? subnetId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteSubnetRequest._(
      subnetId: subnetId,
      dryRun: dryRun,
    );
  }

  factory DeleteSubnetRequest.build(
          [void Function(DeleteSubnetRequestBuilder) updates]) =
      _$DeleteSubnetRequest;

  const DeleteSubnetRequest._();

  factory DeleteSubnetRequest.fromRequest(
    DeleteSubnetRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteSubnetRequest>> serializers = [
    DeleteSubnetRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteSubnetRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the subnet.
  String? get subnetId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteSubnetRequest getPayload() => this;
  @override
  List<Object?> get props => [
        subnetId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteSubnetRequest')
      ..add(
        'subnetId',
        subnetId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DeleteSubnetRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteSubnetRequest> {
  const DeleteSubnetRequestEc2QuerySerializer() : super('DeleteSubnetRequest');

  @override
  Iterable<Type> get types => const [
        DeleteSubnetRequest,
        _$DeleteSubnetRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteSubnetRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteSubnetRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SubnetId':
          result.subnetId = (serializers.deserialize(
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
    DeleteSubnetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteSubnetRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteSubnetRequest(:subnetId, :dryRun) = object;
    if (subnetId != null) {
      result$
        ..add(const _i1.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
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
