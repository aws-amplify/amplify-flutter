// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_launch_template_versions_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_launch_template_versions_response_error_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_launch_template_versions_response_success_item.dart';

part 'delete_launch_template_versions_result.g.dart';

abstract class DeleteLaunchTemplateVersionsResult
    with
        _i1.AWSEquatable<DeleteLaunchTemplateVersionsResult>
    implements
        Built<DeleteLaunchTemplateVersionsResult,
            DeleteLaunchTemplateVersionsResultBuilder> {
  factory DeleteLaunchTemplateVersionsResult({
    List<DeleteLaunchTemplateVersionsResponseSuccessItem>?
        successfullyDeletedLaunchTemplateVersions,
    List<DeleteLaunchTemplateVersionsResponseErrorItem>?
        unsuccessfullyDeletedLaunchTemplateVersions,
  }) {
    return _$DeleteLaunchTemplateVersionsResult._(
      successfullyDeletedLaunchTemplateVersions:
          successfullyDeletedLaunchTemplateVersions == null
              ? null
              : _i2.BuiltList(successfullyDeletedLaunchTemplateVersions),
      unsuccessfullyDeletedLaunchTemplateVersions:
          unsuccessfullyDeletedLaunchTemplateVersions == null
              ? null
              : _i2.BuiltList(unsuccessfullyDeletedLaunchTemplateVersions),
    );
  }

  factory DeleteLaunchTemplateVersionsResult.build(
          [void Function(DeleteLaunchTemplateVersionsResultBuilder) updates]) =
      _$DeleteLaunchTemplateVersionsResult;

  const DeleteLaunchTemplateVersionsResult._();

  /// Constructs a [DeleteLaunchTemplateVersionsResult] from a [payload] and [response].
  factory DeleteLaunchTemplateVersionsResult.fromResponse(
    DeleteLaunchTemplateVersionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DeleteLaunchTemplateVersionsResult>>
      serializers = [DeleteLaunchTemplateVersionsResultEc2QuerySerializer()];

  /// Information about the launch template versions that were successfully deleted.
  _i2.BuiltList<DeleteLaunchTemplateVersionsResponseSuccessItem>?
      get successfullyDeletedLaunchTemplateVersions;

  /// Information about the launch template versions that could not be deleted.
  _i2.BuiltList<DeleteLaunchTemplateVersionsResponseErrorItem>?
      get unsuccessfullyDeletedLaunchTemplateVersions;
  @override
  List<Object?> get props => [
        successfullyDeletedLaunchTemplateVersions,
        unsuccessfullyDeletedLaunchTemplateVersions,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteLaunchTemplateVersionsResult')
          ..add(
            'successfullyDeletedLaunchTemplateVersions',
            successfullyDeletedLaunchTemplateVersions,
          )
          ..add(
            'unsuccessfullyDeletedLaunchTemplateVersions',
            unsuccessfullyDeletedLaunchTemplateVersions,
          );
    return helper.toString();
  }
}

class DeleteLaunchTemplateVersionsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteLaunchTemplateVersionsResult> {
  const DeleteLaunchTemplateVersionsResultEc2QuerySerializer()
      : super('DeleteLaunchTemplateVersionsResult');

  @override
  Iterable<Type> get types => const [
        DeleteLaunchTemplateVersionsResult,
        _$DeleteLaunchTemplateVersionsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteLaunchTemplateVersionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteLaunchTemplateVersionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'successfullyDeletedLaunchTemplateVersionSet':
          result.successfullyDeletedLaunchTemplateVersions
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(DeleteLaunchTemplateVersionsResponseSuccessItem)],
            ),
          ) as _i2.BuiltList<DeleteLaunchTemplateVersionsResponseSuccessItem>));
        case 'unsuccessfullyDeletedLaunchTemplateVersionSet':
          result.unsuccessfullyDeletedLaunchTemplateVersions
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(DeleteLaunchTemplateVersionsResponseErrorItem)],
            ),
          ) as _i2.BuiltList<DeleteLaunchTemplateVersionsResponseErrorItem>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteLaunchTemplateVersionsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DeleteLaunchTemplateVersionsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteLaunchTemplateVersionsResult(
      :successfullyDeletedLaunchTemplateVersions,
      :unsuccessfullyDeletedLaunchTemplateVersions
    ) = object;
    if (successfullyDeletedLaunchTemplateVersions != null) {
      result$
        ..add(const _i3.XmlElementName(
            'SuccessfullyDeletedLaunchTemplateVersionSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          successfullyDeletedLaunchTemplateVersions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(DeleteLaunchTemplateVersionsResponseSuccessItem)],
          ),
        ));
    }
    if (unsuccessfullyDeletedLaunchTemplateVersions != null) {
      result$
        ..add(const _i3.XmlElementName(
            'UnsuccessfullyDeletedLaunchTemplateVersionSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          unsuccessfullyDeletedLaunchTemplateVersions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(DeleteLaunchTemplateVersionsResponseErrorItem)],
          ),
        ));
    }
    return result$;
  }
}
