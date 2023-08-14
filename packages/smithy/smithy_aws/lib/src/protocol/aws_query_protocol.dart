// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:smithy/ast.dart';
import 'package:smithy/smithy.dart' hide Serializer;
import 'package:smithy_aws/src/protocol/aws_http_protocol.dart';
import 'package:smithy_aws/src/protocol/aws_query_serializer.dart';
import 'package:xml/xml.dart';

class AwsQueryError with AWSEquatable<AwsQueryError> {
  const AwsQueryError({
    required this.httpResponseCode,
    required this.code,
    required this.shape,
  });

  final int httpResponseCode;
  final String code;
  final String shape;

  @override
  List<Object?> get props => [httpResponseCode, code, shape];
}

class AwsQueryProtocol<InputPayload, Input, OutputPayload, Output>
    extends AWSHttpProtocol<InputPayload, Input, OutputPayload, Output> {
  AwsQueryProtocol({
    required this.action,
    required this.version,
    this.awsQueryErrors = const [],
    List<HttpRequestInterceptor> requestInterceptors = const [],
    List<HttpResponseInterceptor> responseInterceptors = const [],
    List<SmithySerializer<dynamic>> serializers = const [],
    Map<FullType, Function> builderFactories = const {},
  }) : super(
          _coreSerializers,
          serializers: serializers,
          builderFactories: builderFactories,
          requestInterceptors: requestInterceptors,
          responseInterceptors: responseInterceptors,
        );

  static final _coreSerializers = (Serializers().toBuilder()
        ..addPlugin(const SmithyXmlPlugin())
        ..addAll(const [
          QueryBoolSerializer(),
          QueryIntSerializer(),
          QueryDoubleSerializer(),
          BigIntSerializer.asString,
          Int64Serializer.asString,
          TimestampSerializer.dateTime,
          XmlBuiltListSerializer(
            indexer: XmlIndexer.awsQueryList,
          ),
          XmlBuiltMapSerializer(
            indexer: XmlIndexer.awsQueryMap,
          ),
          XmlBuiltMultimapSerializer(
            indexer: XmlIndexer.awsQueryMap,
          ),
          XmlBuiltSetSerializer(
            indexer: XmlIndexer.awsQueryList,
          ),
          XmlStringSerializer(),
          UnitSerializer(),
        ]))
      .build();

  final String action;
  final String version;
  final List<AwsQueryError> awsQueryErrors;

  @override
  ShapeId get protocolId => AwsQueryTrait.id;

  @override
  String get contentType => 'application/x-www-form-urlencoded';

  @override
  late final AwsQuerySerializer wireSerializer = AwsQuerySerializer(
    serializers,
    action: action,
    version: version,
  );

  @override
  Future<String?> resolveErrorType(AWSBaseHttpResponse response) async {
    try {
      final body = await utf8.decodeStream(response.split());
      final el = XmlDocument.parse(body).rootElement;
      final code = el.childElements
          .firstWhereOrNull((el) => el.name.local == 'Error')
          ?.childElements
          .firstWhere((el) => el.name.local == 'Code')
          .innerText;
      final error = awsQueryErrors.firstWhereOrNull(
        (e) => e.httpResponseCode == response.statusCode,
      );
      return error?.shape ?? code;
    } on Exception {
      return null;
    }
  }
}
