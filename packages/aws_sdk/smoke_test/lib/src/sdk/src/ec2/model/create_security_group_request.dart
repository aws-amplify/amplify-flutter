// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_security_group_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_security_group_request.g.dart';

abstract class CreateSecurityGroupRequest
    with
        _i1.HttpInput<CreateSecurityGroupRequest>,
        _i2.AWSEquatable<CreateSecurityGroupRequest>
    implements
        Built<CreateSecurityGroupRequest, CreateSecurityGroupRequestBuilder> {
  factory CreateSecurityGroupRequest({
    String? description,
    String? groupName,
    String? vpcId,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateSecurityGroupRequest._(
      description: description,
      groupName: groupName,
      vpcId: vpcId,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateSecurityGroupRequest.build(
          [void Function(CreateSecurityGroupRequestBuilder) updates]) =
      _$CreateSecurityGroupRequest;

  const CreateSecurityGroupRequest._();

  factory CreateSecurityGroupRequest.fromRequest(
    CreateSecurityGroupRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateSecurityGroupRequest>>
      serializers = [CreateSecurityGroupRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateSecurityGroupRequestBuilder b) {
    b.dryRun = false;
  }

  /// A description for the security group.
  ///
  /// Constraints: Up to 255 characters in length
  ///
  /// Valid characters: a-z, A-Z, 0-9, spaces, and ._-:/()#,@\[\]+=&;{}!$*
  String? get description;

  /// The name of the security group.
  ///
  /// Constraints: Up to 255 characters in length. Cannot start with `sg-`.
  ///
  /// Valid characters: a-z, A-Z, 0-9, spaces, and ._-:/()#,@\[\]+=&;{}!$*
  String? get groupName;

  /// The ID of the VPC. Required for a nondefault VPC.
  String? get vpcId;

  /// The tags to assign to the security group.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateSecurityGroupRequest getPayload() => this;
  @override
  List<Object?> get props => [
        description,
        groupName,
        vpcId,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateSecurityGroupRequest')
      ..add(
        'description',
        description,
      )
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class CreateSecurityGroupRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateSecurityGroupRequest> {
  const CreateSecurityGroupRequestEc2QuerySerializer()
      : super('CreateSecurityGroupRequest');

  @override
  Iterable<Type> get types => const [
        CreateSecurityGroupRequest,
        _$CreateSecurityGroupRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateSecurityGroupRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSecurityGroupRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'GroupDescription':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'GroupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
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
    CreateSecurityGroupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateSecurityGroupRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateSecurityGroupRequest(
      :description,
      :groupName,
      :vpcId,
      :tagSpecifications,
      :dryRun
    ) = object;
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('GroupDescription'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (groupName != null) {
      result$
        ..add(const _i1.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          groupName,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(TagSpecification)],
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
