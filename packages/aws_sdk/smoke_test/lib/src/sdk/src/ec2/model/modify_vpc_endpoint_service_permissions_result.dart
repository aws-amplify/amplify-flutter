// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpc_endpoint_service_permissions_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/added_principal.dart';

part 'modify_vpc_endpoint_service_permissions_result.g.dart';

abstract class ModifyVpcEndpointServicePermissionsResult
    with
        _i1.AWSEquatable<ModifyVpcEndpointServicePermissionsResult>
    implements
        Built<ModifyVpcEndpointServicePermissionsResult,
            ModifyVpcEndpointServicePermissionsResultBuilder> {
  factory ModifyVpcEndpointServicePermissionsResult({
    List<AddedPrincipal>? addedPrincipals,
    bool? returnValue,
  }) {
    returnValue ??= false;
    return _$ModifyVpcEndpointServicePermissionsResult._(
      addedPrincipals:
          addedPrincipals == null ? null : _i2.BuiltList(addedPrincipals),
      returnValue: returnValue,
    );
  }

  factory ModifyVpcEndpointServicePermissionsResult.build(
      [void Function(ModifyVpcEndpointServicePermissionsResultBuilder)
          updates]) = _$ModifyVpcEndpointServicePermissionsResult;

  const ModifyVpcEndpointServicePermissionsResult._();

  /// Constructs a [ModifyVpcEndpointServicePermissionsResult] from a [payload] and [response].
  factory ModifyVpcEndpointServicePermissionsResult.fromResponse(
    ModifyVpcEndpointServicePermissionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<ModifyVpcEndpointServicePermissionsResult>>
      serializers = [
    ModifyVpcEndpointServicePermissionsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpcEndpointServicePermissionsResultBuilder b) {
    b.returnValue = false;
  }

  /// Information about the added principals.
  _i2.BuiltList<AddedPrincipal>? get addedPrincipals;

  /// Returns `true` if the request succeeds; otherwise, it returns an error.
  bool get returnValue;
  @override
  List<Object?> get props => [
        addedPrincipals,
        returnValue,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyVpcEndpointServicePermissionsResult')
          ..add(
            'addedPrincipals',
            addedPrincipals,
          )
          ..add(
            'returnValue',
            returnValue,
          );
    return helper.toString();
  }
}

class ModifyVpcEndpointServicePermissionsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<ModifyVpcEndpointServicePermissionsResult> {
  const ModifyVpcEndpointServicePermissionsResultEc2QuerySerializer()
      : super('ModifyVpcEndpointServicePermissionsResult');

  @override
  Iterable<Type> get types => const [
        ModifyVpcEndpointServicePermissionsResult,
        _$ModifyVpcEndpointServicePermissionsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcEndpointServicePermissionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcEndpointServicePermissionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'addedPrincipalSet':
          result.addedPrincipals.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AddedPrincipal)],
            ),
          ) as _i2.BuiltList<AddedPrincipal>));
        case 'return':
          result.returnValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyVpcEndpointServicePermissionsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ModifyVpcEndpointServicePermissionsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpcEndpointServicePermissionsResult(
      :addedPrincipals,
      :returnValue
    ) = object;
    if (addedPrincipals != null) {
      result$
        ..add(const _i3.XmlElementName('AddedPrincipalSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          addedPrincipals,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(AddedPrincipal)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Return'))
      ..add(serializers.serialize(
        returnValue,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
