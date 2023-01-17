// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.documentation_part_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DocumentationPartType extends _i1.SmithyEnum<DocumentationPartType> {
  const DocumentationPartType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const DocumentationPartType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const api = DocumentationPartType._(
    0,
    'API',
    'API',
  );

  static const authorizer = DocumentationPartType._(
    1,
    'AUTHORIZER',
    'AUTHORIZER',
  );

  static const method = DocumentationPartType._(
    2,
    'METHOD',
    'METHOD',
  );

  static const model = DocumentationPartType._(
    3,
    'MODEL',
    'MODEL',
  );

  static const pathParameter = DocumentationPartType._(
    4,
    'PATH_PARAMETER',
    'PATH_PARAMETER',
  );

  static const queryParameter = DocumentationPartType._(
    5,
    'QUERY_PARAMETER',
    'QUERY_PARAMETER',
  );

  static const requestBody = DocumentationPartType._(
    6,
    'REQUEST_BODY',
    'REQUEST_BODY',
  );

  static const requestHeader = DocumentationPartType._(
    7,
    'REQUEST_HEADER',
    'REQUEST_HEADER',
  );

  static const resource = DocumentationPartType._(
    8,
    'RESOURCE',
    'RESOURCE',
  );

  static const response = DocumentationPartType._(
    9,
    'RESPONSE',
    'RESPONSE',
  );

  static const responseBody = DocumentationPartType._(
    10,
    'RESPONSE_BODY',
    'RESPONSE_BODY',
  );

  static const responseHeader = DocumentationPartType._(
    11,
    'RESPONSE_HEADER',
    'RESPONSE_HEADER',
  );

  /// All values of [DocumentationPartType].
  static const values = <DocumentationPartType>[
    DocumentationPartType.api,
    DocumentationPartType.authorizer,
    DocumentationPartType.method,
    DocumentationPartType.model,
    DocumentationPartType.pathParameter,
    DocumentationPartType.queryParameter,
    DocumentationPartType.requestBody,
    DocumentationPartType.requestHeader,
    DocumentationPartType.resource,
    DocumentationPartType.response,
    DocumentationPartType.responseBody,
    DocumentationPartType.responseHeader,
  ];

  static const List<_i1.SmithySerializer<DocumentationPartType>> serializers = [
    _i1.SmithyEnumSerializer(
      'DocumentationPartType',
      values: values,
      sdkUnknown: DocumentationPartType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension DocumentationPartTypeHelpers on List<DocumentationPartType> {
  /// Returns the value of [DocumentationPartType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DocumentationPartType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DocumentationPartType] whose value matches [value].
  DocumentationPartType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
