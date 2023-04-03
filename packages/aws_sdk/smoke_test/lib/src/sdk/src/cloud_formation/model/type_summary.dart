// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.type_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/identity_provider.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registry_type.dart'
    as _i2;

part 'type_summary.g.dart';

/// Contains summary information about the specified CloudFormation extension.
abstract class TypeSummary
    with _i1.AWSEquatable<TypeSummary>
    implements Built<TypeSummary, TypeSummaryBuilder> {
  /// Contains summary information about the specified CloudFormation extension.
  factory TypeSummary({
    _i2.RegistryType? type,
    String? typeName,
    String? defaultVersionId,
    String? typeArn,
    DateTime? lastUpdated,
    String? description,
    String? publisherId,
    String? originalTypeName,
    String? publicVersionNumber,
    String? latestPublicVersion,
    _i3.IdentityProvider? publisherIdentity,
    String? publisherName,
    bool? isActivated,
  }) {
    return _$TypeSummary._(
      type: type,
      typeName: typeName,
      defaultVersionId: defaultVersionId,
      typeArn: typeArn,
      lastUpdated: lastUpdated,
      description: description,
      publisherId: publisherId,
      originalTypeName: originalTypeName,
      publicVersionNumber: publicVersionNumber,
      latestPublicVersion: latestPublicVersion,
      publisherIdentity: publisherIdentity,
      publisherName: publisherName,
      isActivated: isActivated,
    );
  }

  /// Contains summary information about the specified CloudFormation extension.
  factory TypeSummary.build([void Function(TypeSummaryBuilder) updates]) =
      _$TypeSummary;

  const TypeSummary._();

  static const List<_i4.SmithySerializer> serializers = [
    TypeSummaryAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TypeSummaryBuilder b) {}

  /// The kind of extension.
  _i2.RegistryType? get type;

  /// The name of the extension.
  ///
  /// If you specified a `TypeNameAlias` when you [activate this extension](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html) in your account and region, CloudFormation considers that alias as the type name.
  String? get typeName;

  /// The ID of the default version of the extension. The default version is used when the extension version isn't specified.
  ///
  /// This applies only to private extensions you have registered in your account. For public extensions, both those provided by Amazon and published by third parties, CloudFormation returns `null`. For more information, see [RegisterType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html).
  ///
  /// To set the default version of an extension, use `SetTypeDefaultVersion` .
  String? get defaultVersionId;

  /// The Amazon Resource Name (ARN) of the extension.
  String? get typeArn;

  /// When the specified extension version was registered. This applies only to:
  ///
  /// *   Private extensions you have registered in your account. For more information, see [RegisterType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html).
  ///
  /// *   Public extensions you have activated in your account with auto-update specified. For more information, see [ActivateType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html).
  ///
  ///
  /// For all other extension types, CloudFormation returns `null`.
  DateTime? get lastUpdated;

  /// The description of the extension.
  String? get description;

  /// The ID of the extension publisher, if the extension is published by a third party. Extensions published by Amazon don't return a publisher ID.
  String? get publisherId;

  /// For public extensions that have been activated for this account and region, the type name of the public extension.
  ///
  /// If you specified a `TypeNameAlias` when enabling the extension in this account and region, CloudFormation treats that alias as the extension's type name within the account and region, not the type name of the public extension. For more information, see [Specifying aliases to refer to extensions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-alias) in the _CloudFormation User Guide_.
  String? get originalTypeName;

  /// For public extensions that have been activated for this account and region, the version of the public extension to be used for CloudFormation operations in this account and Region.
  ///
  /// How you specified `AutoUpdate` when enabling the extension affects whether CloudFormation automatically updates the extension in this account and region when a new version is released. For more information, see [Setting CloudFormation to automatically use new versions of extensions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-auto) in the _CloudFormation User Guide_.
  String? get publicVersionNumber;

  /// For public extensions that have been activated for this account and region, the latest version of the public extension _that is available_. For any extensions other than activated third-arty extensions, CloudFormation returns `null`.
  ///
  /// How you specified `AutoUpdate` when enabling the extension affects whether CloudFormation automatically updates the extension in this account and region when a new version is released. For more information, see [Setting CloudFormation to automatically use new versions of extensions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-auto) in the _CloudFormation User Guide_.
  String? get latestPublicVersion;

  /// The service used to verify the publisher identity.
  ///
  /// For more information, see [Registering your account to publish CloudFormation extensions](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html) in the _CFN-CLI User Guide for Extension Development_.
  _i3.IdentityProvider? get publisherIdentity;

  /// The publisher name, as defined in the public profile for that publisher in the service used to verify the publisher identity.
  String? get publisherName;

  /// Whether the extension is activated for this account and region.
  ///
  /// This applies only to third-party public extensions. Extensions published by Amazon are activated by default.
  bool? get isActivated;
  @override
  List<Object?> get props => [
        type,
        typeName,
        defaultVersionId,
        typeArn,
        lastUpdated,
        description,
        publisherId,
        originalTypeName,
        publicVersionNumber,
        latestPublicVersion,
        publisherIdentity,
        publisherName,
        isActivated,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TypeSummary');
    helper.add(
      'type',
      type,
    );
    helper.add(
      'typeName',
      typeName,
    );
    helper.add(
      'defaultVersionId',
      defaultVersionId,
    );
    helper.add(
      'typeArn',
      typeArn,
    );
    helper.add(
      'lastUpdated',
      lastUpdated,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'publisherId',
      publisherId,
    );
    helper.add(
      'originalTypeName',
      originalTypeName,
    );
    helper.add(
      'publicVersionNumber',
      publicVersionNumber,
    );
    helper.add(
      'latestPublicVersion',
      latestPublicVersion,
    );
    helper.add(
      'publisherIdentity',
      publisherIdentity,
    );
    helper.add(
      'publisherName',
      publisherName,
    );
    helper.add(
      'isActivated',
      isActivated,
    );
    return helper.toString();
  }
}

class TypeSummaryAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<TypeSummary> {
  const TypeSummaryAwsQuerySerializer() : super('TypeSummary');

  @override
  Iterable<Type> get types => const [
        TypeSummary,
        _$TypeSummary,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  TypeSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TypeSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.RegistryType),
            ) as _i2.RegistryType);
          }
          break;
        case 'TypeName':
          if (value != null) {
            result.typeName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DefaultVersionId':
          if (value != null) {
            result.defaultVersionId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TypeArn':
          if (value != null) {
            result.typeArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastUpdated':
          if (value != null) {
            result.lastUpdated = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PublisherId':
          if (value != null) {
            result.publisherId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'OriginalTypeName':
          if (value != null) {
            result.originalTypeName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PublicVersionNumber':
          if (value != null) {
            result.publicVersionNumber = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LatestPublicVersion':
          if (value != null) {
            result.latestPublicVersion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PublisherIdentity':
          if (value != null) {
            result.publisherIdentity = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.IdentityProvider),
            ) as _i3.IdentityProvider);
          }
          break;
        case 'PublisherName':
          if (value != null) {
            result.publisherName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IsActivated':
          if (value != null) {
            result.isActivated = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as TypeSummary);
    final result = <Object?>[
      const _i4.XmlElementName(
        'TypeSummaryResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.type != null) {
      result
        ..add(const _i4.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i2.RegistryType),
        ));
    }
    if (payload.typeName != null) {
      result
        ..add(const _i4.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          payload.typeName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.defaultVersionId != null) {
      result
        ..add(const _i4.XmlElementName('DefaultVersionId'))
        ..add(serializers.serialize(
          payload.defaultVersionId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.typeArn != null) {
      result
        ..add(const _i4.XmlElementName('TypeArn'))
        ..add(serializers.serialize(
          payload.typeArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastUpdated != null) {
      result
        ..add(const _i4.XmlElementName('LastUpdated'))
        ..add(serializers.serialize(
          payload.lastUpdated!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i4.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.publisherId != null) {
      result
        ..add(const _i4.XmlElementName('PublisherId'))
        ..add(serializers.serialize(
          payload.publisherId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.originalTypeName != null) {
      result
        ..add(const _i4.XmlElementName('OriginalTypeName'))
        ..add(serializers.serialize(
          payload.originalTypeName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.publicVersionNumber != null) {
      result
        ..add(const _i4.XmlElementName('PublicVersionNumber'))
        ..add(serializers.serialize(
          payload.publicVersionNumber!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.latestPublicVersion != null) {
      result
        ..add(const _i4.XmlElementName('LatestPublicVersion'))
        ..add(serializers.serialize(
          payload.latestPublicVersion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.publisherIdentity != null) {
      result
        ..add(const _i4.XmlElementName('PublisherIdentity'))
        ..add(serializers.serialize(
          payload.publisherIdentity!,
          specifiedType: const FullType.nullable(_i3.IdentityProvider),
        ));
    }
    if (payload.publisherName != null) {
      result
        ..add(const _i4.XmlElementName('PublisherName'))
        ..add(serializers.serialize(
          payload.publisherName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.isActivated != null) {
      result
        ..add(const _i4.XmlElementName('IsActivated'))
        ..add(serializers.serialize(
          payload.isActivated!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result;
  }
}
