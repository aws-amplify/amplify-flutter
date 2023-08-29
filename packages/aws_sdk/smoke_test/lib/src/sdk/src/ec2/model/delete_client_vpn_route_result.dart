// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_client_vpn_route_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_route_status.dart';

part 'delete_client_vpn_route_result.g.dart';

abstract class DeleteClientVpnRouteResult
    with _i1.AWSEquatable<DeleteClientVpnRouteResult>
    implements
        Built<DeleteClientVpnRouteResult, DeleteClientVpnRouteResultBuilder> {
  factory DeleteClientVpnRouteResult({ClientVpnRouteStatus? status}) {
    return _$DeleteClientVpnRouteResult._(status: status);
  }

  factory DeleteClientVpnRouteResult.build(
          [void Function(DeleteClientVpnRouteResultBuilder) updates]) =
      _$DeleteClientVpnRouteResult;

  const DeleteClientVpnRouteResult._();

  /// Constructs a [DeleteClientVpnRouteResult] from a [payload] and [response].
  factory DeleteClientVpnRouteResult.fromResponse(
    DeleteClientVpnRouteResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteClientVpnRouteResult>>
      serializers = [DeleteClientVpnRouteResultEc2QuerySerializer()];

  /// The current state of the route.
  ClientVpnRouteStatus? get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteClientVpnRouteResult')
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class DeleteClientVpnRouteResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteClientVpnRouteResult> {
  const DeleteClientVpnRouteResultEc2QuerySerializer()
      : super('DeleteClientVpnRouteResult');

  @override
  Iterable<Type> get types => const [
        DeleteClientVpnRouteResult,
        _$DeleteClientVpnRouteResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteClientVpnRouteResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteClientVpnRouteResultBuilder();
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
    DeleteClientVpnRouteResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteClientVpnRouteResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteClientVpnRouteResult(:status) = object;
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
