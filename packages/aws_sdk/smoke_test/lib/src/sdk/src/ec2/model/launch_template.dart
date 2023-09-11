// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'launch_template.g.dart';

/// Describes a launch template.
abstract class LaunchTemplate
    with _i1.AWSEquatable<LaunchTemplate>
    implements Built<LaunchTemplate, LaunchTemplateBuilder> {
  /// Describes a launch template.
  factory LaunchTemplate({
    String? launchTemplateId,
    String? launchTemplateName,
    DateTime? createTime,
    String? createdBy,
    _i2.Int64? defaultVersionNumber,
    _i2.Int64? latestVersionNumber,
    List<Tag>? tags,
  }) {
    defaultVersionNumber ??= _i2.Int64.ZERO;
    latestVersionNumber ??= _i2.Int64.ZERO;
    return _$LaunchTemplate._(
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
      createTime: createTime,
      createdBy: createdBy,
      defaultVersionNumber: defaultVersionNumber,
      latestVersionNumber: latestVersionNumber,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  /// Describes a launch template.
  factory LaunchTemplate.build([void Function(LaunchTemplateBuilder) updates]) =
      _$LaunchTemplate;

  const LaunchTemplate._();

  static const List<_i4.SmithySerializer<LaunchTemplate>> serializers = [
    LaunchTemplateEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateBuilder b) {
    b
      ..defaultVersionNumber = _i2.Int64.ZERO
      ..latestVersionNumber = _i2.Int64.ZERO;
  }

  /// The ID of the launch template.
  String? get launchTemplateId;

  /// The name of the launch template.
  String? get launchTemplateName;

  /// The time launch template was created.
  DateTime? get createTime;

  /// The principal that created the launch template.
  String? get createdBy;

  /// The version number of the default version of the launch template.
  _i2.Int64 get defaultVersionNumber;

  /// The version number of the latest version of the launch template.
  _i2.Int64 get latestVersionNumber;

  /// The tags for the launch template.
  _i3.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        launchTemplateId,
        launchTemplateName,
        createTime,
        createdBy,
        defaultVersionNumber,
        latestVersionNumber,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchTemplate')
      ..add(
        'launchTemplateId',
        launchTemplateId,
      )
      ..add(
        'launchTemplateName',
        launchTemplateName,
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
        'defaultVersionNumber',
        defaultVersionNumber,
      )
      ..add(
        'latestVersionNumber',
        latestVersionNumber,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class LaunchTemplateEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<LaunchTemplate> {
  const LaunchTemplateEc2QuerySerializer() : super('LaunchTemplate');

  @override
  Iterable<Type> get types => const [
        LaunchTemplate,
        _$LaunchTemplate,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateBuilder();
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
        case 'defaultVersionNumber':
          result.defaultVersionNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'latestVersionNumber':
          result.latestVersionNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'tagSet':
          result.tags.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i3.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LaunchTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'LaunchTemplateResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplate(
      :launchTemplateId,
      :launchTemplateName,
      :createTime,
      :createdBy,
      :defaultVersionNumber,
      :latestVersionNumber,
      :tags
    ) = object;
    if (launchTemplateId != null) {
      result$
        ..add(const _i4.XmlElementName('LaunchTemplateId'))
        ..add(serializers.serialize(
          launchTemplateId,
          specifiedType: const FullType(String),
        ));
    }
    if (launchTemplateName != null) {
      result$
        ..add(const _i4.XmlElementName('LaunchTemplateName'))
        ..add(serializers.serialize(
          launchTemplateName,
          specifiedType: const FullType(String),
        ));
    }
    if (createTime != null) {
      result$
        ..add(const _i4.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          createTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (createdBy != null) {
      result$
        ..add(const _i4.XmlElementName('CreatedBy'))
        ..add(serializers.serialize(
          createdBy,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i4.XmlElementName('DefaultVersionNumber'))
      ..add(serializers.serialize(
        defaultVersionNumber,
        specifiedType: const FullType(_i2.Int64),
      ));
    result$
      ..add(const _i4.XmlElementName('LatestVersionNumber'))
      ..add(serializers.serialize(
        latestVersionNumber,
        specifiedType: const FullType(_i2.Int64),
      ));
    if (tags != null) {
      result$
        ..add(const _i4.XmlElementName('TagSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
