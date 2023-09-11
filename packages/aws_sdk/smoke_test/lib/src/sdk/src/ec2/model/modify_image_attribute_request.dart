// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_image_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_permission_modifications.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/operation_type.dart';

part 'modify_image_attribute_request.g.dart';

/// Contains the parameters for ModifyImageAttribute.
abstract class ModifyImageAttributeRequest
    with
        _i1.HttpInput<ModifyImageAttributeRequest>,
        _i2.AWSEquatable<ModifyImageAttributeRequest>
    implements
        Built<ModifyImageAttributeRequest, ModifyImageAttributeRequestBuilder> {
  /// Contains the parameters for ModifyImageAttribute.
  factory ModifyImageAttributeRequest({
    String? attribute,
    AttributeValue? description,
    String? imageId,
    LaunchPermissionModifications? launchPermission,
    OperationType? operationType,
    List<String>? productCodes,
    List<String>? userGroups,
    List<String>? userIds,
    String? value,
    bool? dryRun,
    List<String>? organizationArns,
    List<String>? organizationalUnitArns,
    AttributeValue? imdsSupport,
  }) {
    dryRun ??= false;
    return _$ModifyImageAttributeRequest._(
      attribute: attribute,
      description: description,
      imageId: imageId,
      launchPermission: launchPermission,
      operationType: operationType,
      productCodes: productCodes == null ? null : _i3.BuiltList(productCodes),
      userGroups: userGroups == null ? null : _i3.BuiltList(userGroups),
      userIds: userIds == null ? null : _i3.BuiltList(userIds),
      value: value,
      dryRun: dryRun,
      organizationArns:
          organizationArns == null ? null : _i3.BuiltList(organizationArns),
      organizationalUnitArns: organizationalUnitArns == null
          ? null
          : _i3.BuiltList(organizationalUnitArns),
      imdsSupport: imdsSupport,
    );
  }

  /// Contains the parameters for ModifyImageAttribute.
  factory ModifyImageAttributeRequest.build(
          [void Function(ModifyImageAttributeRequestBuilder) updates]) =
      _$ModifyImageAttributeRequest;

  const ModifyImageAttributeRequest._();

  factory ModifyImageAttributeRequest.fromRequest(
    ModifyImageAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyImageAttributeRequest>>
      serializers = [ModifyImageAttributeRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyImageAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// The name of the attribute to modify.
  ///
  /// Valid values: `description` | `imdsSupport` | `launchPermission`
  String? get attribute;

  /// A new description for the AMI.
  AttributeValue? get description;

  /// The ID of the AMI.
  String? get imageId;

  /// A new launch permission for the AMI.
  LaunchPermissionModifications? get launchPermission;

  /// The operation type. This parameter can be used only when the `Attribute` parameter is `launchPermission`.
  OperationType? get operationType;

  /// Not supported.
  _i3.BuiltList<String>? get productCodes;

  /// The user groups. This parameter can be used only when the `Attribute` parameter is `launchPermission`.
  _i3.BuiltList<String>? get userGroups;

  /// The Amazon Web Services account IDs. This parameter can be used only when the `Attribute` parameter is `launchPermission`.
  _i3.BuiltList<String>? get userIds;

  /// The value of the attribute being modified. This parameter can be used only when the `Attribute` parameter is `description` or `imdsSupport`.
  String? get value;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The Amazon Resource Name (ARN) of an organization. This parameter can be used only when the `Attribute` parameter is `launchPermission`.
  _i3.BuiltList<String>? get organizationArns;

  /// The Amazon Resource Name (ARN) of an organizational unit (OU). This parameter can be used only when the `Attribute` parameter is `launchPermission`.
  _i3.BuiltList<String>? get organizationalUnitArns;

  /// Set to `v2.0` to indicate that IMDSv2 is specified in the AMI. Instances launched from this AMI will have `HttpTokens` automatically set to `required` so that, by default, the instance requires that IMDSv2 is used when requesting instance metadata. In addition, `HttpPutResponseHopLimit` is set to `2`. For more information, see [Configure the AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration) in the _Amazon EC2 User Guide_.
  ///
  /// Do not use this parameter unless your AMI software supports IMDSv2. After you set the value to `v2.0`, you can't undo it. The only way to “reset” your AMI is to create a new AMI from the underlying snapshot.
  AttributeValue? get imdsSupport;
  @override
  ModifyImageAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        attribute,
        description,
        imageId,
        launchPermission,
        operationType,
        productCodes,
        userGroups,
        userIds,
        value,
        dryRun,
        organizationArns,
        organizationalUnitArns,
        imdsSupport,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyImageAttributeRequest')
      ..add(
        'attribute',
        attribute,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'imageId',
        imageId,
      )
      ..add(
        'launchPermission',
        launchPermission,
      )
      ..add(
        'operationType',
        operationType,
      )
      ..add(
        'productCodes',
        productCodes,
      )
      ..add(
        'userGroups',
        userGroups,
      )
      ..add(
        'userIds',
        userIds,
      )
      ..add(
        'value',
        value,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'organizationArns',
        organizationArns,
      )
      ..add(
        'organizationalUnitArns',
        organizationalUnitArns,
      )
      ..add(
        'imdsSupport',
        imdsSupport,
      );
    return helper.toString();
  }
}

class ModifyImageAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyImageAttributeRequest> {
  const ModifyImageAttributeRequestEc2QuerySerializer()
      : super('ModifyImageAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ModifyImageAttributeRequest,
        _$ModifyImageAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyImageAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyImageAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Attribute':
          result.attribute = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'ImageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LaunchPermission':
          result.launchPermission.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchPermissionModifications),
          ) as LaunchPermissionModifications));
        case 'OperationType':
          result.operationType = (serializers.deserialize(
            value,
            specifiedType: const FullType(OperationType),
          ) as OperationType);
        case 'ProductCode':
          result.productCodes.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'ProductCode',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'UserGroup':
          result.userGroups.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'UserGroup',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'UserId':
          result.userIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'UserId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'Value':
          result.value = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'OrganizationArn':
          result.organizationArns.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'OrganizationArn',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'OrganizationalUnitArn':
          result.organizationalUnitArns
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'OrganizationalUnitArn',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'ImdsSupport':
          result.imdsSupport.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyImageAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyImageAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyImageAttributeRequest(
      :attribute,
      :description,
      :imageId,
      :launchPermission,
      :operationType,
      :productCodes,
      :userGroups,
      :userIds,
      :value,
      :dryRun,
      :organizationArns,
      :organizationalUnitArns,
      :imdsSupport
    ) = object;
    if (attribute != null) {
      result$
        ..add(const _i1.XmlElementName('Attribute'))
        ..add(serializers.serialize(
          attribute,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (imageId != null) {
      result$
        ..add(const _i1.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    if (launchPermission != null) {
      result$
        ..add(const _i1.XmlElementName('LaunchPermission'))
        ..add(serializers.serialize(
          launchPermission,
          specifiedType: const FullType(LaunchPermissionModifications),
        ));
    }
    if (operationType != null) {
      result$
        ..add(const _i1.XmlElementName('OperationType'))
        ..add(serializers.serialize(
          operationType,
          specifiedType: const FullType(OperationType),
        ));
    }
    if (productCodes != null) {
      result$
        ..add(const _i1.XmlElementName('ProductCode'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ProductCode',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          productCodes,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (userGroups != null) {
      result$
        ..add(const _i1.XmlElementName('UserGroup'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'UserGroup',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          userGroups,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (userIds != null) {
      result$
        ..add(const _i1.XmlElementName('UserId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'UserId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          userIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (value != null) {
      result$
        ..add(const _i1.XmlElementName('Value'))
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (organizationArns != null) {
      result$
        ..add(const _i1.XmlElementName('OrganizationArn'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'OrganizationArn',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          organizationArns,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (organizationalUnitArns != null) {
      result$
        ..add(const _i1.XmlElementName('OrganizationalUnitArn'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'OrganizationalUnitArn',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          organizationalUnitArns,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (imdsSupport != null) {
      result$
        ..add(const _i1.XmlElementName('ImdsSupport'))
        ..add(serializers.serialize(
          imdsSupport,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    return result$;
  }
}
