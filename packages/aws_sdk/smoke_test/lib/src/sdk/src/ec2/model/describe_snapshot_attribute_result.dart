// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_snapshot_attribute_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/create_volume_permission.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart';

part 'describe_snapshot_attribute_result.g.dart';

abstract class DescribeSnapshotAttributeResult
    with
        _i1.AWSEquatable<DescribeSnapshotAttributeResult>
    implements
        Built<DescribeSnapshotAttributeResult,
            DescribeSnapshotAttributeResultBuilder> {
  factory DescribeSnapshotAttributeResult({
    List<CreateVolumePermission>? createVolumePermissions,
    List<ProductCode>? productCodes,
    String? snapshotId,
  }) {
    return _$DescribeSnapshotAttributeResult._(
      createVolumePermissions: createVolumePermissions == null
          ? null
          : _i2.BuiltList(createVolumePermissions),
      productCodes: productCodes == null ? null : _i2.BuiltList(productCodes),
      snapshotId: snapshotId,
    );
  }

  factory DescribeSnapshotAttributeResult.build(
          [void Function(DescribeSnapshotAttributeResultBuilder) updates]) =
      _$DescribeSnapshotAttributeResult;

  const DescribeSnapshotAttributeResult._();

  /// Constructs a [DescribeSnapshotAttributeResult] from a [payload] and [response].
  factory DescribeSnapshotAttributeResult.fromResponse(
    DescribeSnapshotAttributeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeSnapshotAttributeResult>>
      serializers = [DescribeSnapshotAttributeResultEc2QuerySerializer()];

  /// The users and groups that have the permissions for creating volumes from the snapshot.
  _i2.BuiltList<CreateVolumePermission>? get createVolumePermissions;

  /// The product codes.
  _i2.BuiltList<ProductCode>? get productCodes;

  /// The ID of the EBS snapshot.
  String? get snapshotId;
  @override
  List<Object?> get props => [
        createVolumePermissions,
        productCodes,
        snapshotId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSnapshotAttributeResult')
          ..add(
            'createVolumePermissions',
            createVolumePermissions,
          )
          ..add(
            'productCodes',
            productCodes,
          )
          ..add(
            'snapshotId',
            snapshotId,
          );
    return helper.toString();
  }
}

class DescribeSnapshotAttributeResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeSnapshotAttributeResult> {
  const DescribeSnapshotAttributeResultEc2QuerySerializer()
      : super('DescribeSnapshotAttributeResult');

  @override
  Iterable<Type> get types => const [
        DescribeSnapshotAttributeResult,
        _$DescribeSnapshotAttributeResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSnapshotAttributeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSnapshotAttributeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'createVolumePermission':
          result.createVolumePermissions
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(CreateVolumePermission)],
            ),
          ) as _i2.BuiltList<CreateVolumePermission>));
        case 'productCodes':
          result.productCodes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ProductCode)],
            ),
          ) as _i2.BuiltList<ProductCode>));
        case 'snapshotId':
          result.snapshotId = (serializers.deserialize(
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
    DescribeSnapshotAttributeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeSnapshotAttributeResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSnapshotAttributeResult(
      :createVolumePermissions,
      :productCodes,
      :snapshotId
    ) = object;
    if (createVolumePermissions != null) {
      result$
        ..add(const _i3.XmlElementName('CreateVolumePermission'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          createVolumePermissions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(CreateVolumePermission)],
          ),
        ));
    }
    if (productCodes != null) {
      result$
        ..add(const _i3.XmlElementName('ProductCodes'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          productCodes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ProductCode)],
          ),
        ));
    }
    if (snapshotId != null) {
      result$
        ..add(const _i3.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
