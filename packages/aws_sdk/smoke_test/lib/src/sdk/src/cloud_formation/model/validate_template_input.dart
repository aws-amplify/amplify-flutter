// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.validate_template_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'validate_template_input.g.dart';

/// The input for ValidateTemplate action.
abstract class ValidateTemplateInput
    with
        _i1.HttpInput<ValidateTemplateInput>,
        _i2.AWSEquatable<ValidateTemplateInput>
    implements Built<ValidateTemplateInput, ValidateTemplateInputBuilder> {
  /// The input for ValidateTemplate action.
  factory ValidateTemplateInput({
    String? templateBody,
    String? templateUrl,
  }) {
    return _$ValidateTemplateInput._(
      templateBody: templateBody,
      templateUrl: templateUrl,
    );
  }

  /// The input for ValidateTemplate action.
  factory ValidateTemplateInput.build(
          [void Function(ValidateTemplateInputBuilder) updates]) =
      _$ValidateTemplateInput;

  const ValidateTemplateInput._();

  factory ValidateTemplateInput.fromRequest(
    ValidateTemplateInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ValidateTemplateInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ValidateTemplateInputBuilder b) {}

  /// Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, go to [Template Anatomy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the CloudFormation User Guide.
  ///
  /// Conditional: You must pass `TemplateURL` or `TemplateBody`. If both are passed, only `TemplateBody` is used.
  String? get templateBody;

  /// Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket or a Systems Manager document. For more information, go to [Template Anatomy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the CloudFormation User Guide.
  ///
  /// Conditional: You must pass `TemplateURL` or `TemplateBody`. If both are passed, only `TemplateBody` is used.
  String? get templateUrl;
  @override
  ValidateTemplateInput getPayload() => this;
  @override
  List<Object?> get props => [
        templateBody,
        templateUrl,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ValidateTemplateInput');
    helper.add(
      'templateBody',
      templateBody,
    );
    helper.add(
      'templateUrl',
      templateUrl,
    );
    return helper.toString();
  }
}

class ValidateTemplateInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ValidateTemplateInput> {
  const ValidateTemplateInputAwsQuerySerializer()
      : super('ValidateTemplateInput');

  @override
  Iterable<Type> get types => const [
        ValidateTemplateInput,
        _$ValidateTemplateInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ValidateTemplateInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidateTemplateInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TemplateBody':
          if (value != null) {
            result.templateBody = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TemplateURL':
          if (value != null) {
            result.templateUrl = (serializers.deserialize(
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
    final payload = (object as ValidateTemplateInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ValidateTemplateInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.templateBody != null) {
      result
        ..add(const _i1.XmlElementName('TemplateBody'))
        ..add(serializers.serialize(
          payload.templateBody!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.templateUrl != null) {
      result
        ..add(const _i1.XmlElementName('TemplateURL'))
        ..add(serializers.serialize(
          payload.templateUrl!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
