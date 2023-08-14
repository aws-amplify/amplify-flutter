// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_reachability_analyzer_organization_sharing_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'enable_reachability_analyzer_organization_sharing_result.g.dart';

abstract class EnableReachabilityAnalyzerOrganizationSharingResult
    with
        _i1.AWSEquatable<EnableReachabilityAnalyzerOrganizationSharingResult>
    implements
        Built<EnableReachabilityAnalyzerOrganizationSharingResult,
            EnableReachabilityAnalyzerOrganizationSharingResultBuilder> {
  factory EnableReachabilityAnalyzerOrganizationSharingResult(
      {bool? returnValue}) {
    returnValue ??= false;
    return _$EnableReachabilityAnalyzerOrganizationSharingResult._(
        returnValue: returnValue);
  }

  factory EnableReachabilityAnalyzerOrganizationSharingResult.build(
      [void Function(EnableReachabilityAnalyzerOrganizationSharingResultBuilder)
          updates]) = _$EnableReachabilityAnalyzerOrganizationSharingResult;

  const EnableReachabilityAnalyzerOrganizationSharingResult._();

  /// Constructs a [EnableReachabilityAnalyzerOrganizationSharingResult] from a [payload] and [response].
  factory EnableReachabilityAnalyzerOrganizationSharingResult.fromResponse(
    EnableReachabilityAnalyzerOrganizationSharingResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i2.SmithySerializer<
          EnableReachabilityAnalyzerOrganizationSharingResult>> serializers = [
    EnableReachabilityAnalyzerOrganizationSharingResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      EnableReachabilityAnalyzerOrganizationSharingResultBuilder b) {
    b.returnValue = false;
  }

  /// Returns `true` if the request succeeds; otherwise, returns an error.
  bool get returnValue;
  @override
  List<Object?> get props => [returnValue];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'EnableReachabilityAnalyzerOrganizationSharingResult')
      ..add(
        'returnValue',
        returnValue,
      );
    return helper.toString();
  }
}

class EnableReachabilityAnalyzerOrganizationSharingResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        EnableReachabilityAnalyzerOrganizationSharingResult> {
  const EnableReachabilityAnalyzerOrganizationSharingResultEc2QuerySerializer()
      : super('EnableReachabilityAnalyzerOrganizationSharingResult');

  @override
  Iterable<Type> get types => const [
        EnableReachabilityAnalyzerOrganizationSharingResult,
        _$EnableReachabilityAnalyzerOrganizationSharingResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableReachabilityAnalyzerOrganizationSharingResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableReachabilityAnalyzerOrganizationSharingResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'returnValue':
          result.returnValue = (serializers.deserialize(
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
    EnableReachabilityAnalyzerOrganizationSharingResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EnableReachabilityAnalyzerOrganizationSharingResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableReachabilityAnalyzerOrganizationSharingResult(:returnValue) =
        object;
    result$
      ..add(const _i2.XmlElementName('ReturnValue'))
      ..add(serializers.serialize(
        returnValue,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
