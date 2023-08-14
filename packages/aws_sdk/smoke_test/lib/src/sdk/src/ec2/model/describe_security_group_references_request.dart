// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_security_group_references_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_security_group_references_request.g.dart';

abstract class DescribeSecurityGroupReferencesRequest
    with
        _i1.HttpInput<DescribeSecurityGroupReferencesRequest>,
        _i2.AWSEquatable<DescribeSecurityGroupReferencesRequest>
    implements
        Built<DescribeSecurityGroupReferencesRequest,
            DescribeSecurityGroupReferencesRequestBuilder> {
  factory DescribeSecurityGroupReferencesRequest({
    bool? dryRun,
    List<String>? groupId,
  }) {
    dryRun ??= false;
    return _$DescribeSecurityGroupReferencesRequest._(
      dryRun: dryRun,
      groupId: groupId == null ? null : _i3.BuiltList(groupId),
    );
  }

  factory DescribeSecurityGroupReferencesRequest.build(
      [void Function(DescribeSecurityGroupReferencesRequestBuilder)
          updates]) = _$DescribeSecurityGroupReferencesRequest;

  const DescribeSecurityGroupReferencesRequest._();

  factory DescribeSecurityGroupReferencesRequest.fromRequest(
    DescribeSecurityGroupReferencesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeSecurityGroupReferencesRequest>>
      serializers = [
    DescribeSecurityGroupReferencesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSecurityGroupReferencesRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the security groups in your account.
  _i3.BuiltList<String>? get groupId;
  @override
  DescribeSecurityGroupReferencesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        groupId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSecurityGroupReferencesRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'groupId',
            groupId,
          );
    return helper.toString();
  }
}

class DescribeSecurityGroupReferencesRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeSecurityGroupReferencesRequest> {
  const DescribeSecurityGroupReferencesRequestEc2QuerySerializer()
      : super('DescribeSecurityGroupReferencesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeSecurityGroupReferencesRequest,
        _$DescribeSecurityGroupReferencesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSecurityGroupReferencesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSecurityGroupReferencesRequestBuilder();
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
        case 'GroupId':
          result.groupId.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeSecurityGroupReferencesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeSecurityGroupReferencesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSecurityGroupReferencesRequest(:dryRun, :groupId) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (groupId != null) {
      result$
        ..add(const _i1.XmlElementName('GroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groupId,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
