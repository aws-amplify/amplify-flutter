// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.validate_template_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/capability.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/template_parameter.dart'
    as _i2;

part 'validate_template_output.g.dart';

/// The output for ValidateTemplate action.
abstract class ValidateTemplateOutput
    with _i1.AWSEquatable<ValidateTemplateOutput>
    implements Built<ValidateTemplateOutput, ValidateTemplateOutputBuilder> {
  /// The output for ValidateTemplate action.
  factory ValidateTemplateOutput({
    List<_i2.TemplateParameter>? parameters,
    String? description,
    List<_i3.Capability>? capabilities,
    String? capabilitiesReason,
    List<String>? declaredTransforms,
  }) {
    return _$ValidateTemplateOutput._(
      parameters: parameters == null ? null : _i4.BuiltList(parameters),
      description: description,
      capabilities: capabilities == null ? null : _i4.BuiltList(capabilities),
      capabilitiesReason: capabilitiesReason,
      declaredTransforms:
          declaredTransforms == null ? null : _i4.BuiltList(declaredTransforms),
    );
  }

  /// The output for ValidateTemplate action.
  factory ValidateTemplateOutput.build(
          [void Function(ValidateTemplateOutputBuilder) updates]) =
      _$ValidateTemplateOutput;

  const ValidateTemplateOutput._();

  /// Constructs a [ValidateTemplateOutput] from a [payload] and [response].
  factory ValidateTemplateOutput.fromResponse(
    ValidateTemplateOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer<ValidateTemplateOutput>> serializers =
      [ValidateTemplateOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ValidateTemplateOutputBuilder b) {}

  /// A list of `TemplateParameter` structures.
  _i4.BuiltList<_i2.TemplateParameter>? get parameters;

  /// The description found within the template.
  String? get description;

  /// The capabilities found within the template. If your template contains IAM resources, you must specify the CAPABILITY\_IAM or CAPABILITY\_NAMED_IAM value for this parameter when you use the CreateStack or UpdateStack actions with your template; otherwise, those actions return an InsufficientCapabilities error.
  ///
  /// For more information, see [Acknowledging IAM Resources in CloudFormation Templates](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities).
  _i4.BuiltList<_i3.Capability>? get capabilities;

  /// The list of resources that generated the values in the `Capabilities` response element.
  String? get capabilitiesReason;

  /// A list of the transforms that are declared in the template.
  _i4.BuiltList<String>? get declaredTransforms;
  @override
  List<Object?> get props => [
        parameters,
        description,
        capabilities,
        capabilitiesReason,
        declaredTransforms,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ValidateTemplateOutput')
      ..add(
        'parameters',
        parameters,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'capabilities',
        capabilities,
      )
      ..add(
        'capabilitiesReason',
        capabilitiesReason,
      )
      ..add(
        'declaredTransforms',
        declaredTransforms,
      );
    return helper.toString();
  }
}

class ValidateTemplateOutputAwsQuerySerializer
    extends _i5.StructuredSmithySerializer<ValidateTemplateOutput> {
  const ValidateTemplateOutputAwsQuerySerializer()
      : super('ValidateTemplateOutput');

  @override
  Iterable<Type> get types => const [
        ValidateTemplateOutput,
        _$ValidateTemplateOutput,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ValidateTemplateOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidateTemplateOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Parameters':
          result.parameters.replace((const _i5.XmlBuiltListSerializer(
                  indexer: _i5.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.TemplateParameter)],
            ),
          ) as _i4.BuiltList<_i2.TemplateParameter>));
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Capabilities':
          result.capabilities.replace((const _i5.XmlBuiltListSerializer(
                  indexer: _i5.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.Capability)],
            ),
          ) as _i4.BuiltList<_i3.Capability>));
        case 'CapabilitiesReason':
          result.capabilitiesReason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeclaredTransforms':
          result.declaredTransforms.replace((const _i5.XmlBuiltListSerializer(
                  indexer: _i5.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ValidateTemplateOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'ValidateTemplateOutputResponse',
        _i5.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ValidateTemplateOutput(
      :parameters,
      :description,
      :capabilities,
      :capabilitiesReason,
      :declaredTransforms
    ) = object;
    if (parameters != null) {
      result$
        ..add(const _i5.XmlElementName('Parameters'))
        ..add(const _i5.XmlBuiltListSerializer(
                indexer: _i5.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          parameters,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.TemplateParameter)],
          ),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i5.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (capabilities != null) {
      result$
        ..add(const _i5.XmlElementName('Capabilities'))
        ..add(const _i5.XmlBuiltListSerializer(
                indexer: _i5.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          capabilities,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Capability)],
          ),
        ));
    }
    if (capabilitiesReason != null) {
      result$
        ..add(const _i5.XmlElementName('CapabilitiesReason'))
        ..add(serializers.serialize(
          capabilitiesReason,
          specifiedType: const FullType(String),
        ));
    }
    if (declaredTransforms != null) {
      result$
        ..add(const _i5.XmlElementName('DeclaredTransforms'))
        ..add(const _i5.XmlBuiltListSerializer(
                indexer: _i5.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          declaredTransforms,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
