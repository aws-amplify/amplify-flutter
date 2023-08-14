// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_network_insights_path_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_network_insights_path_request.g.dart';

abstract class DeleteNetworkInsightsPathRequest
    with
        _i1.HttpInput<DeleteNetworkInsightsPathRequest>,
        _i2.AWSEquatable<DeleteNetworkInsightsPathRequest>
    implements
        Built<DeleteNetworkInsightsPathRequest,
            DeleteNetworkInsightsPathRequestBuilder> {
  factory DeleteNetworkInsightsPathRequest({
    bool? dryRun,
    String? networkInsightsPathId,
  }) {
    dryRun ??= false;
    return _$DeleteNetworkInsightsPathRequest._(
      dryRun: dryRun,
      networkInsightsPathId: networkInsightsPathId,
    );
  }

  factory DeleteNetworkInsightsPathRequest.build(
          [void Function(DeleteNetworkInsightsPathRequestBuilder) updates]) =
      _$DeleteNetworkInsightsPathRequest;

  const DeleteNetworkInsightsPathRequest._();

  factory DeleteNetworkInsightsPathRequest.fromRequest(
    DeleteNetworkInsightsPathRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteNetworkInsightsPathRequest>>
      serializers = [DeleteNetworkInsightsPathRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteNetworkInsightsPathRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the path.
  String? get networkInsightsPathId;
  @override
  DeleteNetworkInsightsPathRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        networkInsightsPathId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteNetworkInsightsPathRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'networkInsightsPathId',
            networkInsightsPathId,
          );
    return helper.toString();
  }
}

class DeleteNetworkInsightsPathRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteNetworkInsightsPathRequest> {
  const DeleteNetworkInsightsPathRequestEc2QuerySerializer()
      : super('DeleteNetworkInsightsPathRequest');

  @override
  Iterable<Type> get types => const [
        DeleteNetworkInsightsPathRequest,
        _$DeleteNetworkInsightsPathRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteNetworkInsightsPathRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNetworkInsightsPathRequestBuilder();
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
        case 'NetworkInsightsPathId':
          result.networkInsightsPathId = (serializers.deserialize(
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
    DeleteNetworkInsightsPathRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteNetworkInsightsPathRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteNetworkInsightsPathRequest(:dryRun, :networkInsightsPathId) =
        object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (networkInsightsPathId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInsightsPathId'))
        ..add(serializers.serialize(
          networkInsightsPathId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
