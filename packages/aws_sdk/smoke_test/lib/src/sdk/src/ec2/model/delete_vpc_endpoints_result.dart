// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_vpc_endpoints_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_item.dart';

part 'delete_vpc_endpoints_result.g.dart';

abstract class DeleteVpcEndpointsResult
    with _i1.AWSEquatable<DeleteVpcEndpointsResult>
    implements
        Built<DeleteVpcEndpointsResult, DeleteVpcEndpointsResultBuilder> {
  factory DeleteVpcEndpointsResult({List<UnsuccessfulItem>? unsuccessful}) {
    return _$DeleteVpcEndpointsResult._(
        unsuccessful:
            unsuccessful == null ? null : _i2.BuiltList(unsuccessful));
  }

  factory DeleteVpcEndpointsResult.build(
          [void Function(DeleteVpcEndpointsResultBuilder) updates]) =
      _$DeleteVpcEndpointsResult;

  const DeleteVpcEndpointsResult._();

  /// Constructs a [DeleteVpcEndpointsResult] from a [payload] and [response].
  factory DeleteVpcEndpointsResult.fromResponse(
    DeleteVpcEndpointsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DeleteVpcEndpointsResult>>
      serializers = [DeleteVpcEndpointsResultEc2QuerySerializer()];

  /// Information about the VPC endpoints that were not successfully deleted.
  _i2.BuiltList<UnsuccessfulItem>? get unsuccessful;
  @override
  List<Object?> get props => [unsuccessful];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteVpcEndpointsResult')
      ..add(
        'unsuccessful',
        unsuccessful,
      );
    return helper.toString();
  }
}

class DeleteVpcEndpointsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteVpcEndpointsResult> {
  const DeleteVpcEndpointsResultEc2QuerySerializer()
      : super('DeleteVpcEndpointsResult');

  @override
  Iterable<Type> get types => const [
        DeleteVpcEndpointsResult,
        _$DeleteVpcEndpointsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteVpcEndpointsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVpcEndpointsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'unsuccessful':
          result.unsuccessful.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(UnsuccessfulItem)],
            ),
          ) as _i2.BuiltList<UnsuccessfulItem>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteVpcEndpointsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DeleteVpcEndpointsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteVpcEndpointsResult(:unsuccessful) = object;
    if (unsuccessful != null) {
      result$
        ..add(const _i3.XmlElementName('Unsuccessful'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          unsuccessful,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(UnsuccessfulItem)],
          ),
        ));
    }
    return result$;
  }
}
