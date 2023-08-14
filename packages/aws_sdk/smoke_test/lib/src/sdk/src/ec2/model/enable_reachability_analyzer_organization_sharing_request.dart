// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_reachability_analyzer_organization_sharing_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'enable_reachability_analyzer_organization_sharing_request.g.dart';

abstract class EnableReachabilityAnalyzerOrganizationSharingRequest
    with
        _i1.HttpInput<EnableReachabilityAnalyzerOrganizationSharingRequest>,
        _i2.AWSEquatable<EnableReachabilityAnalyzerOrganizationSharingRequest>
    implements
        Built<EnableReachabilityAnalyzerOrganizationSharingRequest,
            EnableReachabilityAnalyzerOrganizationSharingRequestBuilder> {
  factory EnableReachabilityAnalyzerOrganizationSharingRequest({bool? dryRun}) {
    dryRun ??= false;
    return _$EnableReachabilityAnalyzerOrganizationSharingRequest._(
        dryRun: dryRun);
  }

  factory EnableReachabilityAnalyzerOrganizationSharingRequest.build(
      [void Function(
              EnableReachabilityAnalyzerOrganizationSharingRequestBuilder)
          updates]) = _$EnableReachabilityAnalyzerOrganizationSharingRequest;

  const EnableReachabilityAnalyzerOrganizationSharingRequest._();

  factory EnableReachabilityAnalyzerOrganizationSharingRequest.fromRequest(
    EnableReachabilityAnalyzerOrganizationSharingRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
      _i1.SmithySerializer<
          EnableReachabilityAnalyzerOrganizationSharingRequest>> serializers = [
    EnableReachabilityAnalyzerOrganizationSharingRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      EnableReachabilityAnalyzerOrganizationSharingRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  EnableReachabilityAnalyzerOrganizationSharingRequest getPayload() => this;
  @override
  List<Object?> get props => [dryRun];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'EnableReachabilityAnalyzerOrganizationSharingRequest')
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class EnableReachabilityAnalyzerOrganizationSharingRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        EnableReachabilityAnalyzerOrganizationSharingRequest> {
  const EnableReachabilityAnalyzerOrganizationSharingRequestEc2QuerySerializer()
      : super('EnableReachabilityAnalyzerOrganizationSharingRequest');

  @override
  Iterable<Type> get types => const [
        EnableReachabilityAnalyzerOrganizationSharingRequest,
        _$EnableReachabilityAnalyzerOrganizationSharingRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableReachabilityAnalyzerOrganizationSharingRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        EnableReachabilityAnalyzerOrganizationSharingRequestBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EnableReachabilityAnalyzerOrganizationSharingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'EnableReachabilityAnalyzerOrganizationSharingRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableReachabilityAnalyzerOrganizationSharingRequest(:dryRun) =
        object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
