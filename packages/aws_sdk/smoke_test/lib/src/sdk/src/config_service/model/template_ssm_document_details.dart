// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.template_ssm_document_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'template_ssm_document_details.g.dart';

/// This API allows you to create a conformance pack template with an Amazon Web Services Systems Manager document (SSM document). To deploy a conformance pack using an SSM document, first create an SSM document with conformance pack content, and then provide the `DocumentName` in the [PutConformancePack API](https://docs.aws.amazon.com/config/latest/APIReference/API_PutConformancePack.html). You can also provide the `DocumentVersion`.
///
/// The `TemplateSSMDocumentDetails` object contains the name of the SSM document and the version of the SSM document.
abstract class TemplateSsmDocumentDetails
    with _i1.AWSEquatable<TemplateSsmDocumentDetails>
    implements
        Built<TemplateSsmDocumentDetails, TemplateSsmDocumentDetailsBuilder> {
  /// This API allows you to create a conformance pack template with an Amazon Web Services Systems Manager document (SSM document). To deploy a conformance pack using an SSM document, first create an SSM document with conformance pack content, and then provide the `DocumentName` in the [PutConformancePack API](https://docs.aws.amazon.com/config/latest/APIReference/API_PutConformancePack.html). You can also provide the `DocumentVersion`.
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

  /// This API allows you to create a conformance pack template with an Amazon Web Services Systems Manager document (SSM document). To deploy a conformance pack using an SSM document, first create an SSM document with conformance pack content, and then provide the `DocumentName` in the [PutConformancePack API](https://docs.aws.amazon.com/config/latest/APIReference/API_PutConformancePack.html). You can also provide the `DocumentVersion`.
  ///
  /// The `TemplateSSMDocumentDetails` object contains the name of the SSM document and the version of the SSM document.
  factory TemplateSsmDocumentDetails.build(
          [void Function(TemplateSsmDocumentDetailsBuilder) updates]) =
      _$TemplateSsmDocumentDetails;

  const TemplateSsmDocumentDetails._();

  static const List<_i2.SmithySerializer<TemplateSsmDocumentDetails>>
      serializers = [TemplateSsmDocumentDetailsAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TemplateSsmDocumentDetailsBuilder b) {}

  /// The name or Amazon Resource Name (ARN) of the SSM document to use to create a conformance pack. If you use the document name, Config checks only your account and Amazon Web Services Region for the SSM document. If you want to use an SSM document from another Region or account, you must provide the ARN.
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
    final helper = newBuiltValueToStringHelper('TemplateSsmDocumentDetails')
      ..add(
        'documentName',
        documentName,
      )
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DocumentName':
          result.documentName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DocumentVersion':
          result.documentVersion = (serializers.deserialize(
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
    TemplateSsmDocumentDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TemplateSsmDocumentDetails(:documentName, :documentVersion) = object;
    result$.addAll([
      'DocumentName',
      serializers.serialize(
        documentName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (documentVersion != null) {
      result$
        ..add('DocumentVersion')
        ..add(serializers.serialize(
          documentVersion,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
