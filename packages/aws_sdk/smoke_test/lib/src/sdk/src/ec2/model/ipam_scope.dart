// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_scope; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'ipam_scope.g.dart';

/// In IPAM, a scope is the highest-level container within IPAM. An IPAM contains two default scopes. Each scope represents the IP space for a single network. The private scope is intended for all private IP address space. The public scope is intended for all public IP address space. Scopes enable you to reuse IP addresses across multiple unconnected networks without causing IP address overlap or conflict.
///
/// For more information, see [How IPAM works](https://docs.aws.amazon.com/vpc/latest/ipam/how-it-works-ipam.html) in the _Amazon VPC IPAM User Guide_.
abstract class IpamScope
    with _i1.AWSEquatable<IpamScope>
    implements Built<IpamScope, IpamScopeBuilder> {
  /// In IPAM, a scope is the highest-level container within IPAM. An IPAM contains two default scopes. Each scope represents the IP space for a single network. The private scope is intended for all private IP address space. The public scope is intended for all public IP address space. Scopes enable you to reuse IP addresses across multiple unconnected networks without causing IP address overlap or conflict.
  ///
  /// For more information, see [How IPAM works](https://docs.aws.amazon.com/vpc/latest/ipam/how-it-works-ipam.html) in the _Amazon VPC IPAM User Guide_.
  factory IpamScope({
    String? ownerId,
    String? ipamScopeId,
    String? ipamScopeArn,
    String? ipamArn,
    String? ipamRegion,
    IpamScopeType? ipamScopeType,
    bool? isDefault,
    String? description,
    int? poolCount,
    IpamScopeState? state,
    List<Tag>? tags,
  }) {
    isDefault ??= false;
    poolCount ??= 0;
    return _$IpamScope._(
      ownerId: ownerId,
      ipamScopeId: ipamScopeId,
      ipamScopeArn: ipamScopeArn,
      ipamArn: ipamArn,
      ipamRegion: ipamRegion,
      ipamScopeType: ipamScopeType,
      isDefault: isDefault,
      description: description,
      poolCount: poolCount,
      state: state,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// In IPAM, a scope is the highest-level container within IPAM. An IPAM contains two default scopes. Each scope represents the IP space for a single network. The private scope is intended for all private IP address space. The public scope is intended for all public IP address space. Scopes enable you to reuse IP addresses across multiple unconnected networks without causing IP address overlap or conflict.
  ///
  /// For more information, see [How IPAM works](https://docs.aws.amazon.com/vpc/latest/ipam/how-it-works-ipam.html) in the _Amazon VPC IPAM User Guide_.
  factory IpamScope.build([void Function(IpamScopeBuilder) updates]) =
      _$IpamScope;

  const IpamScope._();

  static const List<_i3.SmithySerializer<IpamScope>> serializers = [
    IpamScopeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IpamScopeBuilder b) {
    b
      ..isDefault = false
      ..poolCount = 0;
  }

  /// The Amazon Web Services account ID of the owner of the scope.
  String? get ownerId;

  /// The ID of the scope.
  String? get ipamScopeId;

  /// The Amazon Resource Name (ARN) of the scope.
  String? get ipamScopeArn;

  /// The ARN of the IPAM.
  String? get ipamArn;

  /// The Amazon Web Services Region of the IPAM scope.
  String? get ipamRegion;

  /// The type of the scope.
  IpamScopeType? get ipamScopeType;

  /// Defines if the scope is the default scope or not.
  bool get isDefault;

  /// The description of the scope.
  String? get description;

  /// The number of pools in the scope.
  int get poolCount;

  /// The state of the IPAM scope.
  IpamScopeState? get state;

  /// The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        ownerId,
        ipamScopeId,
        ipamScopeArn,
        ipamArn,
        ipamRegion,
        ipamScopeType,
        isDefault,
        description,
        poolCount,
        state,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamScope')
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'ipamScopeId',
        ipamScopeId,
      )
      ..add(
        'ipamScopeArn',
        ipamScopeArn,
      )
      ..add(
        'ipamArn',
        ipamArn,
      )
      ..add(
        'ipamRegion',
        ipamRegion,
      )
      ..add(
        'ipamScopeType',
        ipamScopeType,
      )
      ..add(
        'isDefault',
        isDefault,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'poolCount',
        poolCount,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class IpamScopeEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<IpamScope> {
  const IpamScopeEc2QuerySerializer() : super('IpamScope');

  @override
  Iterable<Type> get types => const [
        IpamScope,
        _$IpamScope,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamScope deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamScopeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamScopeId':
          result.ipamScopeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamScopeArn':
          result.ipamScopeArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamArn':
          result.ipamArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamRegion':
          result.ipamRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamScopeType':
          result.ipamScopeType = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamScopeType),
          ) as IpamScopeType);
        case 'isDefault':
          result.isDefault = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'poolCount':
          result.poolCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamScopeState),
          ) as IpamScopeState);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    IpamScope object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'IpamScopeResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IpamScope(
      :ownerId,
      :ipamScopeId,
      :ipamScopeArn,
      :ipamArn,
      :ipamRegion,
      :ipamScopeType,
      :isDefault,
      :description,
      :poolCount,
      :state,
      :tags
    ) = object;
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamScopeId != null) {
      result$
        ..add(const _i3.XmlElementName('IpamScopeId'))
        ..add(serializers.serialize(
          ipamScopeId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamScopeArn != null) {
      result$
        ..add(const _i3.XmlElementName('IpamScopeArn'))
        ..add(serializers.serialize(
          ipamScopeArn,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamArn != null) {
      result$
        ..add(const _i3.XmlElementName('IpamArn'))
        ..add(serializers.serialize(
          ipamArn,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamRegion != null) {
      result$
        ..add(const _i3.XmlElementName('IpamRegion'))
        ..add(serializers.serialize(
          ipamRegion,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamScopeType != null) {
      result$
        ..add(const _i3.XmlElementName('IpamScopeType'))
        ..add(serializers.serialize(
          ipamScopeType,
          specifiedType: const FullType.nullable(IpamScopeType),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('IsDefault'))
      ..add(serializers.serialize(
        isDefault,
        specifiedType: const FullType(bool),
      ));
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('PoolCount'))
      ..add(serializers.serialize(
        poolCount,
        specifiedType: const FullType(int),
      ));
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(IpamScopeState),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
