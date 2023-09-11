// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_launch_template_versions_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_launch_template_versions_request.g.dart';

abstract class DeleteLaunchTemplateVersionsRequest
    with
        _i1.HttpInput<DeleteLaunchTemplateVersionsRequest>,
        _i2.AWSEquatable<DeleteLaunchTemplateVersionsRequest>
    implements
        Built<DeleteLaunchTemplateVersionsRequest,
            DeleteLaunchTemplateVersionsRequestBuilder> {
  factory DeleteLaunchTemplateVersionsRequest({
    bool? dryRun,
    String? launchTemplateId,
    String? launchTemplateName,
    List<String>? versions,
  }) {
    dryRun ??= false;
    return _$DeleteLaunchTemplateVersionsRequest._(
      dryRun: dryRun,
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
      versions: versions == null ? null : _i3.BuiltList(versions),
    );
  }

  factory DeleteLaunchTemplateVersionsRequest.build(
          [void Function(DeleteLaunchTemplateVersionsRequestBuilder) updates]) =
      _$DeleteLaunchTemplateVersionsRequest;

  const DeleteLaunchTemplateVersionsRequest._();

  factory DeleteLaunchTemplateVersionsRequest.fromRequest(
    DeleteLaunchTemplateVersionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteLaunchTemplateVersionsRequest>>
      serializers = [DeleteLaunchTemplateVersionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteLaunchTemplateVersionsRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the launch template.
  ///
  /// You must specify either the `LaunchTemplateId` or the `LaunchTemplateName`, but not both.
  String? get launchTemplateId;

  /// The name of the launch template.
  ///
  /// You must specify either the `LaunchTemplateName` or the `LaunchTemplateId`, but not both.
  String? get launchTemplateName;

  /// The version numbers of one or more launch template versions to delete. You can specify up to 200 launch template version numbers.
  _i3.BuiltList<String>? get versions;
  @override
  DeleteLaunchTemplateVersionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        launchTemplateId,
        launchTemplateName,
        versions,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteLaunchTemplateVersionsRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'launchTemplateId',
            launchTemplateId,
          )
          ..add(
            'launchTemplateName',
            launchTemplateName,
          )
          ..add(
            'versions',
            versions,
          );
    return helper.toString();
  }
}

class DeleteLaunchTemplateVersionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteLaunchTemplateVersionsRequest> {
  const DeleteLaunchTemplateVersionsRequestEc2QuerySerializer()
      : super('DeleteLaunchTemplateVersionsRequest');

  @override
  Iterable<Type> get types => const [
        DeleteLaunchTemplateVersionsRequest,
        _$DeleteLaunchTemplateVersionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteLaunchTemplateVersionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteLaunchTemplateVersionsRequestBuilder();
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
        case 'LaunchTemplateId':
          result.launchTemplateId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LaunchTemplateName':
          result.launchTemplateName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LaunchTemplateVersion':
          result.versions.replace((const _i1.XmlBuiltListSerializer(
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
    DeleteLaunchTemplateVersionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteLaunchTemplateVersionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteLaunchTemplateVersionsRequest(
      :dryRun,
      :launchTemplateId,
      :launchTemplateName,
      :versions
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (launchTemplateId != null) {
      result$
        ..add(const _i1.XmlElementName('LaunchTemplateId'))
        ..add(serializers.serialize(
          launchTemplateId,
          specifiedType: const FullType(String),
        ));
    }
    if (launchTemplateName != null) {
      result$
        ..add(const _i1.XmlElementName('LaunchTemplateName'))
        ..add(serializers.serialize(
          launchTemplateName,
          specifiedType: const FullType(String),
        ));
    }
    if (versions != null) {
      result$
        ..add(const _i1.XmlElementName('LaunchTemplateVersion'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          versions,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
