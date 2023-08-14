// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_network_interface_attribute_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_attachment.dart';

part 'describe_network_interface_attribute_result.g.dart';

/// Contains the output of DescribeNetworkInterfaceAttribute.
abstract class DescribeNetworkInterfaceAttributeResult
    with
        _i1.AWSEquatable<DescribeNetworkInterfaceAttributeResult>
    implements
        Built<DescribeNetworkInterfaceAttributeResult,
            DescribeNetworkInterfaceAttributeResultBuilder> {
  /// Contains the output of DescribeNetworkInterfaceAttribute.
  factory DescribeNetworkInterfaceAttributeResult({
    NetworkInterfaceAttachment? attachment,
    AttributeValue? description,
    List<GroupIdentifier>? groups,
    String? networkInterfaceId,
    AttributeBooleanValue? sourceDestCheck,
  }) {
    return _$DescribeNetworkInterfaceAttributeResult._(
      attachment: attachment,
      description: description,
      groups: groups == null ? null : _i2.BuiltList(groups),
      networkInterfaceId: networkInterfaceId,
      sourceDestCheck: sourceDestCheck,
    );
  }

  /// Contains the output of DescribeNetworkInterfaceAttribute.
  factory DescribeNetworkInterfaceAttributeResult.build(
      [void Function(DescribeNetworkInterfaceAttributeResultBuilder)
          updates]) = _$DescribeNetworkInterfaceAttributeResult;

  const DescribeNetworkInterfaceAttributeResult._();

  /// Constructs a [DescribeNetworkInterfaceAttributeResult] from a [payload] and [response].
  factory DescribeNetworkInterfaceAttributeResult.fromResponse(
    DescribeNetworkInterfaceAttributeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeNetworkInterfaceAttributeResult>>
      serializers = [
    DescribeNetworkInterfaceAttributeResultEc2QuerySerializer()
  ];

  /// The attachment (if any) of the network interface.
  NetworkInterfaceAttachment? get attachment;

  /// The description of the network interface.
  AttributeValue? get description;

  /// The security groups associated with the network interface.
  _i2.BuiltList<GroupIdentifier>? get groups;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// Indicates whether source/destination checking is enabled.
  AttributeBooleanValue? get sourceDestCheck;
  @override
  List<Object?> get props => [
        attachment,
        description,
        groups,
        networkInterfaceId,
        sourceDestCheck,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeNetworkInterfaceAttributeResult')
          ..add(
            'attachment',
            attachment,
          )
          ..add(
            'description',
            description,
          )
          ..add(
            'groups',
            groups,
          )
          ..add(
            'networkInterfaceId',
            networkInterfaceId,
          )
          ..add(
            'sourceDestCheck',
            sourceDestCheck,
          );
    return helper.toString();
  }
}

class DescribeNetworkInterfaceAttributeResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeNetworkInterfaceAttributeResult> {
  const DescribeNetworkInterfaceAttributeResultEc2QuerySerializer()
      : super('DescribeNetworkInterfaceAttributeResult');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInterfaceAttributeResult,
        _$DescribeNetworkInterfaceAttributeResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInterfaceAttributeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInterfaceAttributeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'attachment':
          result.attachment.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInterfaceAttachment),
          ) as NetworkInterfaceAttachment));
        case 'description':
          result.description.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'groupSet':
          result.groups.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(GroupIdentifier)],
            ),
          ) as _i2.BuiltList<GroupIdentifier>));
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sourceDestCheck':
          result.sourceDestCheck.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeNetworkInterfaceAttributeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeNetworkInterfaceAttributeResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeNetworkInterfaceAttributeResult(
      :attachment,
      :description,
      :groups,
      :networkInterfaceId,
      :sourceDestCheck
    ) = object;
    if (attachment != null) {
      result$
        ..add(const _i3.XmlElementName('Attachment'))
        ..add(serializers.serialize(
          attachment,
          specifiedType: const FullType(NetworkInterfaceAttachment),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (groups != null) {
      result$
        ..add(const _i3.XmlElementName('GroupSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groups,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(GroupIdentifier)],
          ),
        ));
    }
    if (networkInterfaceId != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceDestCheck != null) {
      result$
        ..add(const _i3.XmlElementName('SourceDestCheck'))
        ..add(serializers.serialize(
          sourceDestCheck,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    return result$;
  }
}
