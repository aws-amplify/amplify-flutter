// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_internet_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_internet_gateway_request.g.dart';

abstract class DeleteInternetGatewayRequest
    with
        _i1.HttpInput<DeleteInternetGatewayRequest>,
        _i2.AWSEquatable<DeleteInternetGatewayRequest>
    implements
        Built<DeleteInternetGatewayRequest,
            DeleteInternetGatewayRequestBuilder> {
  factory DeleteInternetGatewayRequest({
    bool? dryRun,
    String? internetGatewayId,
  }) {
    dryRun ??= false;
    return _$DeleteInternetGatewayRequest._(
      dryRun: dryRun,
      internetGatewayId: internetGatewayId,
    );
  }

  factory DeleteInternetGatewayRequest.build(
          [void Function(DeleteInternetGatewayRequestBuilder) updates]) =
      _$DeleteInternetGatewayRequest;

  const DeleteInternetGatewayRequest._();

  factory DeleteInternetGatewayRequest.fromRequest(
    DeleteInternetGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteInternetGatewayRequest>>
      serializers = [DeleteInternetGatewayRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteInternetGatewayRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the internet gateway.
  String? get internetGatewayId;
  @override
  DeleteInternetGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        internetGatewayId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteInternetGatewayRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'internetGatewayId',
        internetGatewayId,
      );
    return helper.toString();
  }
}

class DeleteInternetGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteInternetGatewayRequest> {
  const DeleteInternetGatewayRequestEc2QuerySerializer()
      : super('DeleteInternetGatewayRequest');

  @override
  Iterable<Type> get types => const [
        DeleteInternetGatewayRequest,
        _$DeleteInternetGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteInternetGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteInternetGatewayRequestBuilder();
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
        case 'internetGatewayId':
          result.internetGatewayId = (serializers.deserialize(
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
    DeleteInternetGatewayRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteInternetGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteInternetGatewayRequest(:dryRun, :internetGatewayId) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (internetGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('InternetGatewayId'))
        ..add(serializers.serialize(
          internetGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
