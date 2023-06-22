// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.estimate_template_cost_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter.dart'
    as _i3;

part 'estimate_template_cost_input.g.dart';

/// The input for an EstimateTemplateCost action.
abstract class EstimateTemplateCostInput
    with
        _i1.HttpInput<EstimateTemplateCostInput>,
        _i2.AWSEquatable<EstimateTemplateCostInput>
    implements
        Built<EstimateTemplateCostInput, EstimateTemplateCostInputBuilder> {
  /// The input for an EstimateTemplateCost action.
  factory EstimateTemplateCostInput({
    String? templateBody,
    String? templateUrl,
    List<_i3.Parameter>? parameters,
  }) {
    return _$EstimateTemplateCostInput._(
      templateBody: templateBody,
      templateUrl: templateUrl,
      parameters: parameters == null ? null : _i4.BuiltList(parameters),
    );
  }

  /// The input for an EstimateTemplateCost action.
  factory EstimateTemplateCostInput.build(
          [void Function(EstimateTemplateCostInputBuilder) updates]) =
      _$EstimateTemplateCostInput;

  const EstimateTemplateCostInput._();

  factory EstimateTemplateCostInput.fromRequest(
    EstimateTemplateCostInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<EstimateTemplateCostInput>>
      serializers = [EstimateTemplateCostInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EstimateTemplateCostInputBuilder b) {}

  /// Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. (For more information, go to [Template Anatomy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the CloudFormation User Guide.)
  ///
  /// Conditional: You must pass `TemplateBody` or `TemplateURL`. If both are passed, only `TemplateBody` is used.
  String? get templateBody;

  /// Location of file containing the template body. The URL must point to a template that's located in an Amazon S3 bucket or a Systems Manager document. For more information, go to [Template Anatomy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the CloudFormation User Guide.
  ///
  /// Conditional: You must pass `TemplateURL` or `TemplateBody`. If both are passed, only `TemplateBody` is used.
  String? get templateUrl;

  /// A list of `Parameter` structures that specify input parameters.
  _i4.BuiltList<_i3.Parameter>? get parameters;
  @override
  EstimateTemplateCostInput getPayload() => this;
  @override
  List<Object?> get props => [
        templateBody,
        templateUrl,
        parameters,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EstimateTemplateCostInput')
      ..add(
        'templateBody',
        templateBody,
      )
      ..add(
        'templateUrl',
        templateUrl,
      )
      ..add(
        'parameters',
        parameters,
      );
    return helper.toString();
  }
}

class EstimateTemplateCostInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<EstimateTemplateCostInput> {
  const EstimateTemplateCostInputAwsQuerySerializer()
      : super('EstimateTemplateCostInput');

  @override
  Iterable<Type> get types => const [
        EstimateTemplateCostInput,
        _$EstimateTemplateCostInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  EstimateTemplateCostInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EstimateTemplateCostInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TemplateBody':
          result.templateBody = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TemplateURL':
          result.templateUrl = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Parameters':
          result.parameters.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.Parameter)],
            ),
          ) as _i4.BuiltList<_i3.Parameter>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EstimateTemplateCostInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'EstimateTemplateCostInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final EstimateTemplateCostInput(:templateBody, :templateUrl, :parameters) =
        object;
    if (templateBody != null) {
      result$
        ..add(const _i1.XmlElementName('TemplateBody'))
        ..add(serializers.serialize(
          templateBody,
          specifiedType: const FullType(String),
        ));
    }
    if (templateUrl != null) {
      result$
        ..add(const _i1.XmlElementName('TemplateURL'))
        ..add(serializers.serialize(
          templateUrl,
          specifiedType: const FullType(String),
        ));
    }
    if (parameters != null) {
      result$
        ..add(const _i1.XmlElementName('Parameters'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          parameters,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Parameter)],
          ),
        ));
    }
    return result$;
  }
}
