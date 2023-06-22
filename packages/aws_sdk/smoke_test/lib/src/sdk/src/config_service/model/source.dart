// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.source; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/custom_policy_details.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/owner.dart' as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/source_detail.dart'
    as _i3;

part 'source.g.dart';

/// Provides the CustomPolicyDetails, the rule owner (`Amazon Web Services` for managed rules, `CUSTOM_POLICY` for Custom Policy rules, and `CUSTOM_LAMBDA` for Custom Lambda rules), the rule identifier, and the events that cause the evaluation of your Amazon Web Services resources.
abstract class Source
    with _i1.AWSEquatable<Source>
    implements Built<Source, SourceBuilder> {
  /// Provides the CustomPolicyDetails, the rule owner (`Amazon Web Services` for managed rules, `CUSTOM_POLICY` for Custom Policy rules, and `CUSTOM_LAMBDA` for Custom Lambda rules), the rule identifier, and the events that cause the evaluation of your Amazon Web Services resources.
  factory Source({
    required _i2.Owner owner,
    String? sourceIdentifier,
    List<_i3.SourceDetail>? sourceDetails,
    _i4.CustomPolicyDetails? customPolicyDetails,
  }) {
    return _$Source._(
      owner: owner,
      sourceIdentifier: sourceIdentifier,
      sourceDetails:
          sourceDetails == null ? null : _i5.BuiltList(sourceDetails),
      customPolicyDetails: customPolicyDetails,
    );
  }

  /// Provides the CustomPolicyDetails, the rule owner (`Amazon Web Services` for managed rules, `CUSTOM_POLICY` for Custom Policy rules, and `CUSTOM_LAMBDA` for Custom Lambda rules), the rule identifier, and the events that cause the evaluation of your Amazon Web Services resources.
  factory Source.build([void Function(SourceBuilder) updates]) = _$Source;

  const Source._();

  static const List<_i6.SmithySerializer<Source>> serializers = [
    SourceAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SourceBuilder b) {}

  /// Indicates whether Amazon Web Services or the customer owns and manages the Config rule.
  ///
  /// Config Managed Rules are predefined rules owned by Amazon Web Services. For more information, see [Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html) in the _Config developer guide_.
  ///
  /// Config Custom Rules are rules that you can develop either with Guard (`CUSTOM_POLICY`) or Lambda (`CUSTOM_LAMBDA`). For more information, see [Config Custom Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_develop-rules.html) in the _Config developer guide_.
  _i2.Owner get owner;

  /// For Config Managed rules, a predefined identifier from a list. For example, `IAM\_PASSWORD\_POLICY` is a managed rule. To reference a managed rule, see [List of Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html).
  ///
  /// For Config Custom Lambda rules, the identifier is the Amazon Resource Name (ARN) of the rule's Lambda function, such as `arn:aws:lambda:us-east-2:123456789012:function:custom\_rule\_name`.
  ///
  /// For Config Custom Policy rules, this field will be ignored.
  String? get sourceIdentifier;

  /// Provides the source and the message types that cause Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.
  ///
  /// If the owner is set to `CUSTOM_POLICY`, the only acceptable values for the Config rule trigger message type are `ConfigurationItemChangeNotification` and `OversizedConfigurationItemChangeNotification`.
  _i5.BuiltList<_i3.SourceDetail>? get sourceDetails;

  /// Provides the runtime system, policy definition, and whether debug logging is enabled. Required when owner is set to `CUSTOM_POLICY`.
  _i4.CustomPolicyDetails? get customPolicyDetails;
  @override
  List<Object?> get props => [
        owner,
        sourceIdentifier,
        sourceDetails,
        customPolicyDetails,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Source')
      ..add(
        'owner',
        owner,
      )
      ..add(
        'sourceIdentifier',
        sourceIdentifier,
      )
      ..add(
        'sourceDetails',
        sourceDetails,
      )
      ..add(
        'customPolicyDetails',
        customPolicyDetails,
      );
    return helper.toString();
  }
}

class SourceAwsJson11Serializer extends _i6.StructuredSmithySerializer<Source> {
  const SourceAwsJson11Serializer() : super('Source');

  @override
  Iterable<Type> get types => const [
        Source,
        _$Source,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  Source deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Owner':
          result.owner = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Owner),
          ) as _i2.Owner);
        case 'SourceIdentifier':
          result.sourceIdentifier = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourceDetails':
          result.sourceDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i3.SourceDetail)],
            ),
          ) as _i5.BuiltList<_i3.SourceDetail>));
        case 'CustomPolicyDetails':
          result.customPolicyDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.CustomPolicyDetails),
          ) as _i4.CustomPolicyDetails));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Source object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Source(
      :owner,
      :sourceIdentifier,
      :sourceDetails,
      :customPolicyDetails
    ) = object;
    result$.addAll([
      'Owner',
      serializers.serialize(
        owner,
        specifiedType: const FullType(_i2.Owner),
      ),
    ]);
    if (sourceIdentifier != null) {
      result$
        ..add('SourceIdentifier')
        ..add(serializers.serialize(
          sourceIdentifier,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceDetails != null) {
      result$
        ..add('SourceDetails')
        ..add(serializers.serialize(
          sourceDetails,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i3.SourceDetail)],
          ),
        ));
    }
    if (customPolicyDetails != null) {
      result$
        ..add('CustomPolicyDetails')
        ..add(serializers.serialize(
          customPolicyDetails,
          specifiedType: const FullType(_i4.CustomPolicyDetails),
        ));
    }
    return result$;
  }
}
