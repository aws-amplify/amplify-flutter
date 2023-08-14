// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_network_acl_entry_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_network_acl_entry_request.g.dart';

abstract class DeleteNetworkAclEntryRequest
    with
        _i1.HttpInput<DeleteNetworkAclEntryRequest>,
        _i2.AWSEquatable<DeleteNetworkAclEntryRequest>
    implements
        Built<DeleteNetworkAclEntryRequest,
            DeleteNetworkAclEntryRequestBuilder> {
  factory DeleteNetworkAclEntryRequest({
    bool? dryRun,
    bool? egress,
    String? networkAclId,
    int? ruleNumber,
  }) {
    dryRun ??= false;
    egress ??= false;
    ruleNumber ??= 0;
    return _$DeleteNetworkAclEntryRequest._(
      dryRun: dryRun,
      egress: egress,
      networkAclId: networkAclId,
      ruleNumber: ruleNumber,
    );
  }

  factory DeleteNetworkAclEntryRequest.build(
          [void Function(DeleteNetworkAclEntryRequestBuilder) updates]) =
      _$DeleteNetworkAclEntryRequest;

  const DeleteNetworkAclEntryRequest._();

  factory DeleteNetworkAclEntryRequest.fromRequest(
    DeleteNetworkAclEntryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteNetworkAclEntryRequest>>
      serializers = [DeleteNetworkAclEntryRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteNetworkAclEntryRequestBuilder b) {
    b
      ..dryRun = false
      ..egress = false
      ..ruleNumber = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Indicates whether the rule is an egress rule.
  bool get egress;

  /// The ID of the network ACL.
  String? get networkAclId;

  /// The rule number of the entry to delete.
  int get ruleNumber;
  @override
  DeleteNetworkAclEntryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        egress,
        networkAclId,
        ruleNumber,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteNetworkAclEntryRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'egress',
        egress,
      )
      ..add(
        'networkAclId',
        networkAclId,
      )
      ..add(
        'ruleNumber',
        ruleNumber,
      );
    return helper.toString();
  }
}

class DeleteNetworkAclEntryRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteNetworkAclEntryRequest> {
  const DeleteNetworkAclEntryRequestEc2QuerySerializer()
      : super('DeleteNetworkAclEntryRequest');

  @override
  Iterable<Type> get types => const [
        DeleteNetworkAclEntryRequest,
        _$DeleteNetworkAclEntryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteNetworkAclEntryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNetworkAclEntryRequestBuilder();
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
        case 'egress':
          result.egress = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'networkAclId':
          result.networkAclId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ruleNumber':
          result.ruleNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteNetworkAclEntryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteNetworkAclEntryRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteNetworkAclEntryRequest(
      :dryRun,
      :egress,
      :networkAclId,
      :ruleNumber
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('Egress'))
      ..add(serializers.serialize(
        egress,
        specifiedType: const FullType(bool),
      ));
    if (networkAclId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkAclId'))
        ..add(serializers.serialize(
          networkAclId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('RuleNumber'))
      ..add(serializers.serialize(
        ruleNumber,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
