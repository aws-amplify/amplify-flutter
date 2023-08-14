// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_dhcp_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_dhcp_options_request.g.dart';

abstract class DeleteDhcpOptionsRequest
    with
        _i1.HttpInput<DeleteDhcpOptionsRequest>,
        _i2.AWSEquatable<DeleteDhcpOptionsRequest>
    implements
        Built<DeleteDhcpOptionsRequest, DeleteDhcpOptionsRequestBuilder> {
  factory DeleteDhcpOptionsRequest({
    String? dhcpOptionsId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteDhcpOptionsRequest._(
      dhcpOptionsId: dhcpOptionsId,
      dryRun: dryRun,
    );
  }

  factory DeleteDhcpOptionsRequest.build(
          [void Function(DeleteDhcpOptionsRequestBuilder) updates]) =
      _$DeleteDhcpOptionsRequest;

  const DeleteDhcpOptionsRequest._();

  factory DeleteDhcpOptionsRequest.fromRequest(
    DeleteDhcpOptionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteDhcpOptionsRequest>>
      serializers = [DeleteDhcpOptionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteDhcpOptionsRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the DHCP options set.
  String? get dhcpOptionsId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteDhcpOptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dhcpOptionsId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteDhcpOptionsRequest')
      ..add(
        'dhcpOptionsId',
        dhcpOptionsId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DeleteDhcpOptionsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteDhcpOptionsRequest> {
  const DeleteDhcpOptionsRequestEc2QuerySerializer()
      : super('DeleteDhcpOptionsRequest');

  @override
  Iterable<Type> get types => const [
        DeleteDhcpOptionsRequest,
        _$DeleteDhcpOptionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteDhcpOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteDhcpOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DhcpOptionsId':
          result.dhcpOptionsId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
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
    DeleteDhcpOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteDhcpOptionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteDhcpOptionsRequest(:dhcpOptionsId, :dryRun) = object;
    if (dhcpOptionsId != null) {
      result$
        ..add(const _i1.XmlElementName('DhcpOptionsId'))
        ..add(serializers.serialize(
          dhcpOptionsId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
