// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_aws/src/protocol/aws_query_protocol.dart';
import 'package:xml/xml.dart';

class Ec2QueryProtocol<InputPayload, Input, OutputPayload, Output>
    extends AwsQueryProtocol<InputPayload, Input, OutputPayload, Output> {
  Ec2QueryProtocol({
    required super.action,
    required super.version,
    super.requestInterceptors = const [],
    super.responseInterceptors = const [],
    super.serializers = const [],
    super.builderFactories = const {},
  });

  @override
  ShapeId get protocolId => Ec2QueryTrait.id;

  @override
  Future<String?> resolveErrorType(AWSBaseHttpResponse response) async {
    try {
      final body = await utf8.decodeStream(response.split());
      final el = XmlDocument.parse(body).rootElement;
      return el.childElements
          .firstWhere((el) => el.name.local == 'Errors')
          .childElements
          .firstWhere((el) => el.name.local == 'Error')
          .childElements
          .firstWhere((el) => el.name.local == 'Code')
          .innerText;
    } on Exception {
      return null;
    }
  }
}
