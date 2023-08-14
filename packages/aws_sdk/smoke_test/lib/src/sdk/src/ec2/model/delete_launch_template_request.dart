// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_launch_template_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_launch_template_request.g.dart';

abstract class DeleteLaunchTemplateRequest
    with
        _i1.HttpInput<DeleteLaunchTemplateRequest>,
        _i2.AWSEquatable<DeleteLaunchTemplateRequest>
    implements
        Built<DeleteLaunchTemplateRequest, DeleteLaunchTemplateRequestBuilder> {
  factory DeleteLaunchTemplateRequest({
    bool? dryRun,
    String? launchTemplateId,
    String? launchTemplateName,
  }) {
    dryRun ??= false;
    return _$DeleteLaunchTemplateRequest._(
      dryRun: dryRun,
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
    );
  }

  factory DeleteLaunchTemplateRequest.build(
          [void Function(DeleteLaunchTemplateRequestBuilder) updates]) =
      _$DeleteLaunchTemplateRequest;

  const DeleteLaunchTemplateRequest._();

  factory DeleteLaunchTemplateRequest.fromRequest(
    DeleteLaunchTemplateRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteLaunchTemplateRequest>>
      serializers = [DeleteLaunchTemplateRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteLaunchTemplateRequestBuilder b) {
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
  @override
  DeleteLaunchTemplateRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        launchTemplateId,
        launchTemplateName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteLaunchTemplateRequest')
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
      );
    return helper.toString();
  }
}

class DeleteLaunchTemplateRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteLaunchTemplateRequest> {
  const DeleteLaunchTemplateRequestEc2QuerySerializer()
      : super('DeleteLaunchTemplateRequest');

  @override
  Iterable<Type> get types => const [
        DeleteLaunchTemplateRequest,
        _$DeleteLaunchTemplateRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteLaunchTemplateRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteLaunchTemplateRequestBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteLaunchTemplateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteLaunchTemplateRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteLaunchTemplateRequest(
      :dryRun,
      :launchTemplateId,
      :launchTemplateName
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
    return result$;
  }
}
