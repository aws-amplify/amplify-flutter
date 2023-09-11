// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_vpn_connection_device_types_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection_device_type.dart';

part 'get_vpn_connection_device_types_result.g.dart';

abstract class GetVpnConnectionDeviceTypesResult
    with
        _i1.AWSEquatable<GetVpnConnectionDeviceTypesResult>
    implements
        Built<GetVpnConnectionDeviceTypesResult,
            GetVpnConnectionDeviceTypesResultBuilder> {
  factory GetVpnConnectionDeviceTypesResult({
    List<VpnConnectionDeviceType>? vpnConnectionDeviceTypes,
    String? nextToken,
  }) {
    return _$GetVpnConnectionDeviceTypesResult._(
      vpnConnectionDeviceTypes: vpnConnectionDeviceTypes == null
          ? null
          : _i2.BuiltList(vpnConnectionDeviceTypes),
      nextToken: nextToken,
    );
  }

  factory GetVpnConnectionDeviceTypesResult.build(
          [void Function(GetVpnConnectionDeviceTypesResultBuilder) updates]) =
      _$GetVpnConnectionDeviceTypesResult;

  const GetVpnConnectionDeviceTypesResult._();

  /// Constructs a [GetVpnConnectionDeviceTypesResult] from a [payload] and [response].
  factory GetVpnConnectionDeviceTypesResult.fromResponse(
    GetVpnConnectionDeviceTypesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetVpnConnectionDeviceTypesResult>>
      serializers = [GetVpnConnectionDeviceTypesResultEc2QuerySerializer()];

  /// List of customer gateway devices that have a sample configuration file available for use.
  _i2.BuiltList<VpnConnectionDeviceType>? get vpnConnectionDeviceTypes;

  /// The `NextToken` value to include in a future `GetVpnConnectionDeviceTypes` request. When the results of a `GetVpnConnectionDeviceTypes` request exceed `MaxResults`, this value can be used to retrieve the next page of results. This value is null when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        vpnConnectionDeviceTypes,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetVpnConnectionDeviceTypesResult')
          ..add(
            'vpnConnectionDeviceTypes',
            vpnConnectionDeviceTypes,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class GetVpnConnectionDeviceTypesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<GetVpnConnectionDeviceTypesResult> {
  const GetVpnConnectionDeviceTypesResultEc2QuerySerializer()
      : super('GetVpnConnectionDeviceTypesResult');

  @override
  Iterable<Type> get types => const [
        GetVpnConnectionDeviceTypesResult,
        _$GetVpnConnectionDeviceTypesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetVpnConnectionDeviceTypesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetVpnConnectionDeviceTypesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'vpnConnectionDeviceTypeSet':
          result.vpnConnectionDeviceTypes
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VpnConnectionDeviceType)],
            ),
          ) as _i2.BuiltList<VpnConnectionDeviceType>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    GetVpnConnectionDeviceTypesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetVpnConnectionDeviceTypesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetVpnConnectionDeviceTypesResult(
      :vpnConnectionDeviceTypes,
      :nextToken
    ) = object;
    if (vpnConnectionDeviceTypes != null) {
      result$
        ..add(const _i3.XmlElementName('VpnConnectionDeviceTypeSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          vpnConnectionDeviceTypes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(VpnConnectionDeviceType)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
