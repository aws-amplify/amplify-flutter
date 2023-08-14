// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_launch_template_versions_response_error_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/response_error.dart';

part 'delete_launch_template_versions_response_error_item.g.dart';

/// Describes a launch template version that could not be deleted.
abstract class DeleteLaunchTemplateVersionsResponseErrorItem
    with
        _i1.AWSEquatable<DeleteLaunchTemplateVersionsResponseErrorItem>
    implements
        Built<DeleteLaunchTemplateVersionsResponseErrorItem,
            DeleteLaunchTemplateVersionsResponseErrorItemBuilder> {
  /// Describes a launch template version that could not be deleted.
  factory DeleteLaunchTemplateVersionsResponseErrorItem({
    String? launchTemplateId,
    String? launchTemplateName,
    _i2.Int64? versionNumber,
    ResponseError? responseError,
  }) {
    versionNumber ??= _i2.Int64.ZERO;
    return _$DeleteLaunchTemplateVersionsResponseErrorItem._(
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
      versionNumber: versionNumber,
      responseError: responseError,
    );
  }

  /// Describes a launch template version that could not be deleted.
  factory DeleteLaunchTemplateVersionsResponseErrorItem.build(
      [void Function(DeleteLaunchTemplateVersionsResponseErrorItemBuilder)
          updates]) = _$DeleteLaunchTemplateVersionsResponseErrorItem;

  const DeleteLaunchTemplateVersionsResponseErrorItem._();

  static const List<
          _i3.SmithySerializer<DeleteLaunchTemplateVersionsResponseErrorItem>>
      serializers = [
    DeleteLaunchTemplateVersionsResponseErrorItemEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteLaunchTemplateVersionsResponseErrorItemBuilder b) {
    b.versionNumber = _i2.Int64.ZERO;
  }

  /// The ID of the launch template.
  String? get launchTemplateId;

  /// The name of the launch template.
  String? get launchTemplateName;

  /// The version number of the launch template.
  _i2.Int64 get versionNumber;

  /// Information about the error.
  ResponseError? get responseError;
  @override
  List<Object?> get props => [
        launchTemplateId,
        launchTemplateName,
        versionNumber,
        responseError,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteLaunchTemplateVersionsResponseErrorItem')
      ..add(
        'launchTemplateId',
        launchTemplateId,
      )
      ..add(
        'launchTemplateName',
        launchTemplateName,
      )
      ..add(
        'versionNumber',
        versionNumber,
      )
      ..add(
        'responseError',
        responseError,
      );
    return helper.toString();
  }
}

class DeleteLaunchTemplateVersionsResponseErrorItemEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DeleteLaunchTemplateVersionsResponseErrorItem> {
  const DeleteLaunchTemplateVersionsResponseErrorItemEc2QuerySerializer()
      : super('DeleteLaunchTemplateVersionsResponseErrorItem');

  @override
  Iterable<Type> get types => const [
        DeleteLaunchTemplateVersionsResponseErrorItem,
        _$DeleteLaunchTemplateVersionsResponseErrorItem,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteLaunchTemplateVersionsResponseErrorItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteLaunchTemplateVersionsResponseErrorItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'launchTemplateId':
          result.launchTemplateId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'launchTemplateName':
          result.launchTemplateName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'versionNumber':
          result.versionNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'responseError':
          result.responseError.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ResponseError),
          ) as ResponseError));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteLaunchTemplateVersionsResponseErrorItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DeleteLaunchTemplateVersionsResponseErrorItemResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteLaunchTemplateVersionsResponseErrorItem(
      :launchTemplateId,
      :launchTemplateName,
      :versionNumber,
      :responseError
    ) = object;
    if (launchTemplateId != null) {
      result$
        ..add(const _i3.XmlElementName('LaunchTemplateId'))
        ..add(serializers.serialize(
          launchTemplateId,
          specifiedType: const FullType(String),
        ));
    }
    if (launchTemplateName != null) {
      result$
        ..add(const _i3.XmlElementName('LaunchTemplateName'))
        ..add(serializers.serialize(
          launchTemplateName,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('VersionNumber'))
      ..add(serializers.serialize(
        versionNumber,
        specifiedType: const FullType(_i2.Int64),
      ));
    if (responseError != null) {
      result$
        ..add(const _i3.XmlElementName('ResponseError'))
        ..add(serializers.serialize(
          responseError,
          specifiedType: const FullType(ResponseError),
        ));
    }
    return result$;
  }
}
