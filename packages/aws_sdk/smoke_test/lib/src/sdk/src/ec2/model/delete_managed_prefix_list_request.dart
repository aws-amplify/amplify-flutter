// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_managed_prefix_list_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_managed_prefix_list_request.g.dart';

abstract class DeleteManagedPrefixListRequest
    with
        _i1.HttpInput<DeleteManagedPrefixListRequest>,
        _i2.AWSEquatable<DeleteManagedPrefixListRequest>
    implements
        Built<DeleteManagedPrefixListRequest,
            DeleteManagedPrefixListRequestBuilder> {
  factory DeleteManagedPrefixListRequest({
    bool? dryRun,
    String? prefixListId,
  }) {
    dryRun ??= false;
    return _$DeleteManagedPrefixListRequest._(
      dryRun: dryRun,
      prefixListId: prefixListId,
    );
  }

  factory DeleteManagedPrefixListRequest.build(
          [void Function(DeleteManagedPrefixListRequestBuilder) updates]) =
      _$DeleteManagedPrefixListRequest;

  const DeleteManagedPrefixListRequest._();

  factory DeleteManagedPrefixListRequest.fromRequest(
    DeleteManagedPrefixListRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteManagedPrefixListRequest>>
      serializers = [DeleteManagedPrefixListRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteManagedPrefixListRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the prefix list.
  String? get prefixListId;
  @override
  DeleteManagedPrefixListRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        prefixListId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteManagedPrefixListRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'prefixListId',
        prefixListId,
      );
    return helper.toString();
  }
}

class DeleteManagedPrefixListRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteManagedPrefixListRequest> {
  const DeleteManagedPrefixListRequestEc2QuerySerializer()
      : super('DeleteManagedPrefixListRequest');

  @override
  Iterable<Type> get types => const [
        DeleteManagedPrefixListRequest,
        _$DeleteManagedPrefixListRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteManagedPrefixListRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteManagedPrefixListRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'PrefixListId':
          result.prefixListId = (serializers.deserialize(
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
    DeleteManagedPrefixListRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteManagedPrefixListRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteManagedPrefixListRequest(:dryRun, :prefixListId) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (prefixListId != null) {
      result$
        ..add(const _i1.XmlElementName('PrefixListId'))
        ..add(serializers.serialize(
          prefixListId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
