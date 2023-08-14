// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_fleets_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleet_error_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleet_success_item.dart';

part 'delete_fleets_result.g.dart';

abstract class DeleteFleetsResult
    with _i1.AWSEquatable<DeleteFleetsResult>
    implements Built<DeleteFleetsResult, DeleteFleetsResultBuilder> {
  factory DeleteFleetsResult({
    List<DeleteFleetSuccessItem>? successfulFleetDeletions,
    List<DeleteFleetErrorItem>? unsuccessfulFleetDeletions,
  }) {
    return _$DeleteFleetsResult._(
      successfulFleetDeletions: successfulFleetDeletions == null
          ? null
          : _i2.BuiltList(successfulFleetDeletions),
      unsuccessfulFleetDeletions: unsuccessfulFleetDeletions == null
          ? null
          : _i2.BuiltList(unsuccessfulFleetDeletions),
    );
  }

  factory DeleteFleetsResult.build(
          [void Function(DeleteFleetsResultBuilder) updates]) =
      _$DeleteFleetsResult;

  const DeleteFleetsResult._();

  /// Constructs a [DeleteFleetsResult] from a [payload] and [response].
  factory DeleteFleetsResult.fromResponse(
    DeleteFleetsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DeleteFleetsResult>> serializers = [
    DeleteFleetsResultEc2QuerySerializer()
  ];

  /// Information about the EC2 Fleets that are successfully deleted.
  _i2.BuiltList<DeleteFleetSuccessItem>? get successfulFleetDeletions;

  /// Information about the EC2 Fleets that are not successfully deleted.
  _i2.BuiltList<DeleteFleetErrorItem>? get unsuccessfulFleetDeletions;
  @override
  List<Object?> get props => [
        successfulFleetDeletions,
        unsuccessfulFleetDeletions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteFleetsResult')
      ..add(
        'successfulFleetDeletions',
        successfulFleetDeletions,
      )
      ..add(
        'unsuccessfulFleetDeletions',
        unsuccessfulFleetDeletions,
      );
    return helper.toString();
  }
}

class DeleteFleetsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteFleetsResult> {
  const DeleteFleetsResultEc2QuerySerializer() : super('DeleteFleetsResult');

  @override
  Iterable<Type> get types => const [
        DeleteFleetsResult,
        _$DeleteFleetsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteFleetsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteFleetsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'successfulFleetDeletionSet':
          result.successfulFleetDeletions
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(DeleteFleetSuccessItem)],
            ),
          ) as _i2.BuiltList<DeleteFleetSuccessItem>));
        case 'unsuccessfulFleetDeletionSet':
          result.unsuccessfulFleetDeletions
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(DeleteFleetErrorItem)],
            ),
          ) as _i2.BuiltList<DeleteFleetErrorItem>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteFleetsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DeleteFleetsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteFleetsResult(
      :successfulFleetDeletions,
      :unsuccessfulFleetDeletions
    ) = object;
    if (successfulFleetDeletions != null) {
      result$
        ..add(const _i3.XmlElementName('SuccessfulFleetDeletionSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          successfulFleetDeletions,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(DeleteFleetSuccessItem)],
          ),
        ));
    }
    if (unsuccessfulFleetDeletions != null) {
      result$
        ..add(const _i3.XmlElementName('UnsuccessfulFleetDeletionSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          unsuccessfulFleetDeletions,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(DeleteFleetErrorItem)],
          ),
        ));
    }
    return result$;
  }
}
