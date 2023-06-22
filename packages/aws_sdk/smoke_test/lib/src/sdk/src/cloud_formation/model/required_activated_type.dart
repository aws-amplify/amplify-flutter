// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.required_activated_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'required_activated_type.g.dart';

/// For extensions that are modules, a public third-party extension that must be activated in your account in order for the module itself to be activated.
///
/// For more information, see [Activating public modules for use in your account](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/modules.html#module-enabling) in the _CloudFormation User Guide_.
abstract class RequiredActivatedType
    with _i1.AWSEquatable<RequiredActivatedType>
    implements Built<RequiredActivatedType, RequiredActivatedTypeBuilder> {
  /// For extensions that are modules, a public third-party extension that must be activated in your account in order for the module itself to be activated.
  ///
  /// For more information, see [Activating public modules for use in your account](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/modules.html#module-enabling) in the _CloudFormation User Guide_.
  factory RequiredActivatedType({
    String? typeNameAlias,
    String? originalTypeName,
    String? publisherId,
    List<int>? supportedMajorVersions,
  }) {
    return _$RequiredActivatedType._(
      typeNameAlias: typeNameAlias,
      originalTypeName: originalTypeName,
      publisherId: publisherId,
      supportedMajorVersions: supportedMajorVersions == null
          ? null
          : _i2.BuiltList(supportedMajorVersions),
    );
  }

  /// For extensions that are modules, a public third-party extension that must be activated in your account in order for the module itself to be activated.
  ///
  /// For more information, see [Activating public modules for use in your account](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/modules.html#module-enabling) in the _CloudFormation User Guide_.
  factory RequiredActivatedType.build(
          [void Function(RequiredActivatedTypeBuilder) updates]) =
      _$RequiredActivatedType;

  const RequiredActivatedType._();

  static const List<_i3.SmithySerializer<RequiredActivatedType>> serializers = [
    RequiredActivatedTypeAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequiredActivatedTypeBuilder b) {}

  /// An alias assigned to the public extension, in this account and Region. If you specify an alias for the extension, CloudFormation treats the alias as the extension type name within this account and Region. You must use the alias to refer to the extension in your templates, API calls, and CloudFormation console.
  String? get typeNameAlias;

  /// The type name of the public extension.
  ///
  /// If you specified a `TypeNameAlias` when enabling the extension in this account and Region, CloudFormation treats that alias as the extension's type name within the account and Region, not the type name of the public extension. For more information, see [Specifying aliases to refer to extensions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-alias) in the _CloudFormation User Guide_.
  String? get originalTypeName;

  /// The publisher ID of the extension publisher.
  String? get publisherId;

  /// A list of the major versions of the extension type that the macro supports.
  _i2.BuiltList<int>? get supportedMajorVersions;
  @override
  List<Object?> get props => [
        typeNameAlias,
        originalTypeName,
        publisherId,
        supportedMajorVersions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RequiredActivatedType')
      ..add(
        'typeNameAlias',
        typeNameAlias,
      )
      ..add(
        'originalTypeName',
        originalTypeName,
      )
      ..add(
        'publisherId',
        publisherId,
      )
      ..add(
        'supportedMajorVersions',
        supportedMajorVersions,
      );
    return helper.toString();
  }
}

class RequiredActivatedTypeAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<RequiredActivatedType> {
  const RequiredActivatedTypeAwsQuerySerializer()
      : super('RequiredActivatedType');

  @override
  Iterable<Type> get types => const [
        RequiredActivatedType,
        _$RequiredActivatedType,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RequiredActivatedType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequiredActivatedTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TypeNameAlias':
          result.typeNameAlias = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OriginalTypeName':
          result.originalTypeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PublisherId':
          result.publisherId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SupportedMajorVersions':
          result.supportedMajorVersions.replace(
              (const _i3.XmlBuiltListSerializer(
                      indexer: _i3.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(int)],
            ),
          ) as _i2.BuiltList<int>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RequiredActivatedType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'RequiredActivatedTypeResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final RequiredActivatedType(
      :typeNameAlias,
      :originalTypeName,
      :publisherId,
      :supportedMajorVersions
    ) = object;
    if (typeNameAlias != null) {
      result$
        ..add(const _i3.XmlElementName('TypeNameAlias'))
        ..add(serializers.serialize(
          typeNameAlias,
          specifiedType: const FullType(String),
        ));
    }
    if (originalTypeName != null) {
      result$
        ..add(const _i3.XmlElementName('OriginalTypeName'))
        ..add(serializers.serialize(
          originalTypeName,
          specifiedType: const FullType(String),
        ));
    }
    if (publisherId != null) {
      result$
        ..add(const _i3.XmlElementName('PublisherId'))
        ..add(serializers.serialize(
          publisherId,
          specifiedType: const FullType(String),
        ));
    }
    if (supportedMajorVersions != null) {
      result$
        ..add(const _i3.XmlElementName('SupportedMajorVersions'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          supportedMajorVersions,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(int)],
          ),
        ));
    }
    return result$;
  }
}
