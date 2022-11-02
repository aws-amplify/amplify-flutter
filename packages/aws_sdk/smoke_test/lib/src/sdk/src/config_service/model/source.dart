// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.source; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/custom_policy_details.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/owner.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/source_detail.dart'
    as _i4;

part 'source.g.dart';

/// Provides the CustomPolicyDetails, the rule owner (`Amazon Web Services` for managed rules, `CUSTOM_POLICY` for Custom Policy rules, and `CUSTOM_LAMBDA` for Custom Lambda rules), the rule identifier, and the events that cause the evaluation of your Amazon Web Services resources.
abstract class Source
    with _i1.AWSEquatable<Source>
    implements Built<Source, SourceBuilder> {
  /// Provides the CustomPolicyDetails, the rule owner (`Amazon Web Services` for managed rules, `CUSTOM_POLICY` for Custom Policy rules, and `CUSTOM_LAMBDA` for Custom Lambda rules), the rule identifier, and the events that cause the evaluation of your Amazon Web Services resources.
  factory Source({
    _i2.CustomPolicyDetails? customPolicyDetails,
    required _i3.Owner owner,
    List<_i4.SourceDetail>? sourceDetails,
    String? sourceIdentifier,
  }) {
    return _$Source._(
      customPolicyDetails: customPolicyDetails,
      owner: owner,
      sourceDetails:
          sourceDetails == null ? null : _i5.BuiltList(sourceDetails),
      sourceIdentifier: sourceIdentifier,
    );
  }

  /// Provides the CustomPolicyDetails, the rule owner (`Amazon Web Services` for managed rules, `CUSTOM_POLICY` for Custom Policy rules, and `CUSTOM_LAMBDA` for Custom Lambda rules), the rule identifier, and the events that cause the evaluation of your Amazon Web Services resources.
  factory Source.build([void Function(SourceBuilder) updates]) = _$Source;

  const Source._();

  static const List<_i6.SmithySerializer> serializers = [
    SourceAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SourceBuilder b) {}

  /// Provides the runtime system, policy definition, and whether debug logging is enabled. Required when owner is set to `CUSTOM_POLICY`.
  _i2.CustomPolicyDetails? get customPolicyDetails;

  /// Indicates whether Amazon Web Services or the customer owns and manages the Config rule.
  ///
  /// Config Managed Rules are predefined rules owned by Amazon Web Services. For more information, see [Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html) in the _Config developer guide_.
  ///
  /// Config Custom Rules are rules that you can develop either with Guard (`CUSTOM_POLICY`) or Lambda (`CUSTOM_LAMBDA`). For more information, see [Config Custom Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_develop-rules.html) in the _Config developer guide_.
  _i3.Owner get owner;

  /// Provides the source and the message types that cause Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.
  ///
  /// If the owner is set to `CUSTOM_POLICY`, the only acceptable values for the Config rule trigger message type are `ConfigurationItemChangeNotification` and `OversizedConfigurationItemChangeNotification`.
  _i5.BuiltList<_i4.SourceDetail>? get sourceDetails;

  /// For Config Managed rules, a predefined identifier from a list. For example, `IAM\_PASSWORD\_POLICY` is a managed rule. To reference a managed rule, see [List of Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html).
  ///
  /// For Config Custom Lambda rules, the identifier is the Amazon Resource Name (ARN) of the rule's Lambda function, such as `arn:aws:lambda:us-east-2:123456789012:function:custom\_rule\_name`.
  ///
  /// For Config Custom Policy rules, this field will be ignored.
  String? get sourceIdentifier;
  @override
  List<Object?> get props => [
        customPolicyDetails,
        owner,
        sourceDetails,
        sourceIdentifier,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Source');
    helper.add(
      'customPolicyDetails',
      customPolicyDetails,
    );
    helper.add(
      'owner',
      owner,
    );
    helper.add(
      'sourceDetails',
      sourceDetails,
    );
    helper.add(
      'sourceIdentifier',
      sourceIdentifier,
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
      switch (key) {
        case 'CustomPolicyDetails':
          if (value != null) {
            result.customPolicyDetails.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CustomPolicyDetails),
            ) as _i2.CustomPolicyDetails));
          }
          break;
        case 'Owner':
          result.owner = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.Owner),
          ) as _i3.Owner);
          break;
        case 'SourceDetails':
          if (value != null) {
            result.sourceDetails.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.SourceDetail)],
              ),
            ) as _i5.BuiltList<_i4.SourceDetail>));
          }
          break;
        case 'SourceIdentifier':
          if (value != null) {
            result.sourceIdentifier = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as Source);
    final result = <Object?>[
      'Owner',
      serializers.serialize(
        payload.owner,
        specifiedType: const FullType(_i3.Owner),
      ),
    ];
    if (payload.customPolicyDetails != null) {
      result
        ..add('CustomPolicyDetails')
        ..add(serializers.serialize(
          payload.customPolicyDetails!,
          specifiedType: const FullType(_i2.CustomPolicyDetails),
        ));
    }
    if (payload.sourceDetails != null) {
      result
        ..add('SourceDetails')
        ..add(serializers.serialize(
          payload.sourceDetails!,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i4.SourceDetail)],
          ),
        ));
    }
    if (payload.sourceIdentifier != null) {
      result
        ..add('SourceIdentifier')
        ..add(serializers.serialize(
          payload.sourceIdentifier!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
