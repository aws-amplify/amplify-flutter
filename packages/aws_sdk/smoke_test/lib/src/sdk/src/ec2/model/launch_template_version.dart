// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_version; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/response_launch_template_data.dart';

part 'launch_template_version.g.dart';

/// Describes a launch template version.
abstract class LaunchTemplateVersion
    with _i1.AWSEquatable<LaunchTemplateVersion>
    implements Built<LaunchTemplateVersion, LaunchTemplateVersionBuilder> {
  /// Describes a launch template version.
  factory LaunchTemplateVersion({
    String? launchTemplateId,
    String? launchTemplateName,
    _i2.Int64? versionNumber,
    String? versionDescription,
    DateTime? createTime,
    String? createdBy,
    bool? defaultVersion,
    ResponseLaunchTemplateData? launchTemplateData,
  }) {
    versionNumber ??= _i2.Int64.ZERO;
    defaultVersion ??= false;
    return _$LaunchTemplateVersion._(
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
      versionNumber: versionNumber,
      versionDescription: versionDescription,
      createTime: createTime,
      createdBy: createdBy,
      defaultVersion: defaultVersion,
      launchTemplateData: launchTemplateData,
    );
  }

  /// Describes a launch template version.
  factory LaunchTemplateVersion.build(
          [void Function(LaunchTemplateVersionBuilder) updates]) =
      _$LaunchTemplateVersion;

  const LaunchTemplateVersion._();

  static const List<_i3.SmithySerializer<LaunchTemplateVersion>> serializers = [
    LaunchTemplateVersionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateVersionBuilder b) {
    b
      ..versionNumber = _i2.Int64.ZERO
      ..defaultVersion = false;
  }

  /// The ID of the launch template.
  String? get launchTemplateId;

  /// The name of the launch template.
  String? get launchTemplateName;

  /// The version number.
  _i2.Int64 get versionNumber;

  /// The description for the version.
  String? get versionDescription;

  /// The time the version was created.
  DateTime? get createTime;

  /// The principal that created the version.
  String? get createdBy;

  /// Indicates whether the version is the default version.
  bool get defaultVersion;

  /// Information about the launch template.
  ResponseLaunchTemplateData? get launchTemplateData;
  @override
  List<Object?> get props => [
        launchTemplateId,
        launchTemplateName,
        versionNumber,
        versionDescription,
        createTime,
        createdBy,
        defaultVersion,
        launchTemplateData,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchTemplateVersion')
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
        'versionDescription',
        versionDescription,
      )
      ..add(
        'createTime',
        createTime,
      )
      ..add(
        'createdBy',
        createdBy,
      )
      ..add(
        'defaultVersion',
        defaultVersion,
      )
      ..add(
        'launchTemplateData',
        launchTemplateData,
      );
    return helper.toString();
  }
}

class LaunchTemplateVersionEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<LaunchTemplateVersion> {
  const LaunchTemplateVersionEc2QuerySerializer()
      : super('LaunchTemplateVersion');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateVersion,
        _$LaunchTemplateVersion,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateVersion deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateVersionBuilder();
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
        case 'versionDescription':
          result.versionDescription = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'createTime':
          result.createTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'createdBy':
          result.createdBy = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'defaultVersion':
          result.defaultVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'launchTemplateData':
          result.launchTemplateData.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ResponseLaunchTemplateData),
          ) as ResponseLaunchTemplateData));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LaunchTemplateVersion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LaunchTemplateVersionResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateVersion(
      :launchTemplateId,
      :launchTemplateName,
      :versionNumber,
      :versionDescription,
      :createTime,
      :createdBy,
      :defaultVersion,
      :launchTemplateData
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
    if (versionDescription != null) {
      result$
        ..add(const _i3.XmlElementName('VersionDescription'))
        ..add(serializers.serialize(
          versionDescription,
          specifiedType: const FullType(String),
        ));
    }
    if (createTime != null) {
      result$
        ..add(const _i3.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          createTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (createdBy != null) {
      result$
        ..add(const _i3.XmlElementName('CreatedBy'))
        ..add(serializers.serialize(
          createdBy,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('DefaultVersion'))
      ..add(serializers.serialize(
        defaultVersion,
        specifiedType: const FullType(bool),
      ));
    if (launchTemplateData != null) {
      result$
        ..add(const _i3.XmlElementName('LaunchTemplateData'))
        ..add(serializers.serialize(
          launchTemplateData,
          specifiedType: const FullType(ResponseLaunchTemplateData),
        ));
    }
    return result$;
  }
}
