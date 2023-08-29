// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_route_table_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_route_table_request.g.dart';

abstract class DeleteRouteTableRequest
    with
        _i1.HttpInput<DeleteRouteTableRequest>,
        _i2.AWSEquatable<DeleteRouteTableRequest>
    implements Built<DeleteRouteTableRequest, DeleteRouteTableRequestBuilder> {
  factory DeleteRouteTableRequest({
    bool? dryRun,
    String? routeTableId,
  }) {
    dryRun ??= false;
    return _$DeleteRouteTableRequest._(
      dryRun: dryRun,
      routeTableId: routeTableId,
    );
  }

  factory DeleteRouteTableRequest.build(
          [void Function(DeleteRouteTableRequestBuilder) updates]) =
      _$DeleteRouteTableRequest;

  const DeleteRouteTableRequest._();

  factory DeleteRouteTableRequest.fromRequest(
    DeleteRouteTableRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteRouteTableRequest>> serializers =
      [DeleteRouteTableRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteRouteTableRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the route table.
  String? get routeTableId;
  @override
  DeleteRouteTableRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        routeTableId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteRouteTableRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'routeTableId',
        routeTableId,
      );
    return helper.toString();
  }
}

class DeleteRouteTableRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteRouteTableRequest> {
  const DeleteRouteTableRequestEc2QuerySerializer()
      : super('DeleteRouteTableRequest');

  @override
  Iterable<Type> get types => const [
        DeleteRouteTableRequest,
        _$DeleteRouteTableRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteRouteTableRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteRouteTableRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'routeTableId':
          result.routeTableId = (serializers.deserialize(
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
    DeleteRouteTableRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteRouteTableRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteRouteTableRequest(:dryRun, :routeTableId) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (routeTableId != null) {
      result$
        ..add(const _i1.XmlElementName('RouteTableId'))
        ..add(serializers.serialize(
          routeTableId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
