// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.template_ssm_document_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'template_ssm_document_details.g.dart';

/// This API allows you to create a conformance pack template with an Amazon Web Services Systems Manager document (SSM document). To deploy a conformance pack using an SSM document, you first create an SSM document with conformance pack content, and then provide the `DocumentName` (and optionally `DocumentVersion`) in the [PutConformancePack API](https://docs.aws.amazon.com/config/latest/APIReference/API_PutConformancePack.html).
///
/// The `TemplateSSMDocumentDetails` object contains the name of the SSM document and the version of the SSM document.
abstract class TemplateSsmDocumentDetails
    with _i1.AWSEquatable<TemplateSsmDocumentDetails>
    implements
        Built<TemplateSsmDocumentDetails, TemplateSsmDocumentDetailsBuilder> {
  /// This API allows you to create a conformance pack template with an Amazon Web Services Systems Manager document (SSM document). To deploy a conformance pack using an SSM document, you first create an SSM document with conformance pack content, and then provide the `DocumentName` (and optionally `DocumentVersion`) in the [PutConformancePack API](https://docs.aws.amazon.com/config/latest/APIReference/API_PutConformancePack.html).
  ///
  /// The `TemplateSSMDocumentDetails` object contains the name of the SSM document and the version of the SSM document.
  factory TemplateSsmDocumentDetails({
    required String documentName,
    String? documentVersion,
  }) {
    return _$TemplateSsmDocumentDetails._(
      documentName: documentName,
      documentVersion: documentVersion,
    );
  }

  /// This API allows you to create a conformance pack template with an Amazon Web Services Systems Manager document (SSM document). To deploy a conformance pack using an SSM document, you first create an SSM document with conformance pack content, and then provide the `DocumentName` (and optionally `DocumentVersion`) in the [PutConformancePack API](https://docs.aws.amazon.com/config/latest/APIReference/API_PutConformancePack.html).
  ///
  /// The `TemplateSSMDocumentDetails` object contains the name of the SSM document and the version of the SSM document.
  factory TemplateSsmDocumentDetails.build(
          [void Function(TemplateSsmDocumentDetailsBuilder) updates]) =
      _$TemplateSsmDocumentDetails;

  const TemplateSsmDocumentDetails._();

  static const List<_i2.SmithySerializer> serializers = [
    TemplateSsmDocumentDetailsAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TemplateSsmDocumentDetailsBuilder b) {}

  /// The name or Amazon Resource Name (ARN) of the SSM document to use to create a conformance pack. If you use the Document Name, Config checks only your account and region for the SSM document. If you want to use an SSM document from another region or account, you must provide the ARN.
  String get documentName;

  /// The version of the SSM document to use to create a conformance pack. By default, Config uses the latest version.
  ///
  /// This field is optional.
  String? get documentVersion;
  @override
  List<Object?> get props => [
        documentName,
        documentVersion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TemplateSsmDocumentDetails');
    helper.add(
      'documentName',
      documentName,
    );
    helper.add(
      'documentVersion',
      documentVersion,
    );
    return helper.toString();
  }
}

class TemplateSsmDocumentDetailsAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<TemplateSsmDocumentDetails> {
  const TemplateSsmDocumentDetailsAwsJson11Serializer()
      : super('TemplateSsmDocumentDetails');

  @override
  Iterable<Type> get types => const [
        TemplateSsmDocumentDetails,
        _$TemplateSsmDocumentDetails,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  TemplateSsmDocumentDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TemplateSsmDocumentDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'DocumentName':
          result.documentName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'DocumentVersion':
          if (value != null) {
            result.documentVersion = (serializers.deserialize(
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
    final payload = (object as TemplateSsmDocumentDetails);
    final result = <Object?>[
      'DocumentName',
      serializers.serialize(
        payload.documentName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.documentVersion != null) {
      result
        ..add('DocumentVersion')
        ..add(serializers.serialize(
          payload.documentVersion!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
