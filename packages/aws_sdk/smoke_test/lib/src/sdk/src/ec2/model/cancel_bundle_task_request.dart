// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cancel_bundle_task_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'cancel_bundle_task_request.g.dart';

/// Contains the parameters for CancelBundleTask.
abstract class CancelBundleTaskRequest
    with
        _i1.HttpInput<CancelBundleTaskRequest>,
        _i2.AWSEquatable<CancelBundleTaskRequest>
    implements Built<CancelBundleTaskRequest, CancelBundleTaskRequestBuilder> {
  /// Contains the parameters for CancelBundleTask.
  factory CancelBundleTaskRequest({
    String? bundleId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CancelBundleTaskRequest._(
      bundleId: bundleId,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for CancelBundleTask.
  factory CancelBundleTaskRequest.build(
          [void Function(CancelBundleTaskRequestBuilder) updates]) =
      _$CancelBundleTaskRequest;

  const CancelBundleTaskRequest._();

  factory CancelBundleTaskRequest.fromRequest(
    CancelBundleTaskRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CancelBundleTaskRequest>> serializers =
      [CancelBundleTaskRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelBundleTaskRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the bundle task.
  String? get bundleId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CancelBundleTaskRequest getPayload() => this;
  @override
  List<Object?> get props => [
        bundleId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CancelBundleTaskRequest')
      ..add(
        'bundleId',
        bundleId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class CancelBundleTaskRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CancelBundleTaskRequest> {
  const CancelBundleTaskRequestEc2QuerySerializer()
      : super('CancelBundleTaskRequest');

  @override
  Iterable<Type> get types => const [
        CancelBundleTaskRequest,
        _$CancelBundleTaskRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelBundleTaskRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelBundleTaskRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'BundleId':
          result.bundleId = (serializers.deserialize(
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
    CancelBundleTaskRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CancelBundleTaskRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CancelBundleTaskRequest(:bundleId, :dryRun) = object;
    if (bundleId != null) {
      result$
        ..add(const _i1.XmlElementName('BundleId'))
        ..add(serializers.serialize(
          bundleId,
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
