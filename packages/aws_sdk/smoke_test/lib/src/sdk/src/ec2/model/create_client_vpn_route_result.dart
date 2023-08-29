// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_client_vpn_route_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_route_status.dart';

part 'create_client_vpn_route_result.g.dart';

abstract class CreateClientVpnRouteResult
    with _i1.AWSEquatable<CreateClientVpnRouteResult>
    implements
        Built<CreateClientVpnRouteResult, CreateClientVpnRouteResultBuilder> {
  factory CreateClientVpnRouteResult({ClientVpnRouteStatus? status}) {
    return _$CreateClientVpnRouteResult._(status: status);
  }

  factory CreateClientVpnRouteResult.build(
          [void Function(CreateClientVpnRouteResultBuilder) updates]) =
      _$CreateClientVpnRouteResult;

  const CreateClientVpnRouteResult._();

  /// Constructs a [CreateClientVpnRouteResult] from a [payload] and [response].
  factory CreateClientVpnRouteResult.fromResponse(
    CreateClientVpnRouteResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateClientVpnRouteResult>>
      serializers = [CreateClientVpnRouteResultEc2QuerySerializer()];

  /// The current state of the route.
  ClientVpnRouteStatus? get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateClientVpnRouteResult')
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class CreateClientVpnRouteResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateClientVpnRouteResult> {
  const CreateClientVpnRouteResultEc2QuerySerializer()
      : super('CreateClientVpnRouteResult');

  @override
  Iterable<Type> get types => const [
        CreateClientVpnRouteResult,
        _$CreateClientVpnRouteResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateClientVpnRouteResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateClientVpnRouteResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'status':
          result.status.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ClientVpnRouteStatus),
          ) as ClientVpnRouteStatus));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateClientVpnRouteResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateClientVpnRouteResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateClientVpnRouteResult(:status) = object;
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(ClientVpnRouteStatus),
        ));
    }
    return result$;
  }
}
