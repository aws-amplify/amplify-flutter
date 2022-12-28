// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';
import 'package:smithy/smithy.dart' hide Serializer;
import 'package:smithy_aws/smithy_aws.dart';

class AwsJson1_1Protocol<InputPayload, Input, OutputPayload, Output>
    extends AwsJson1_0Protocol<InputPayload, Input, OutputPayload, Output> {
  AwsJson1_1Protocol({
    List<HttpRequestInterceptor> requestInterceptors = const [],
    List<HttpResponseInterceptor> responseInterceptors = const [],
    List<SmithySerializer> serializers = const [],
    Map<FullType, Function> builderFactories = const {},
  }) : super(
          serializers: serializers,
          builderFactories: builderFactories,
          requestInterceptors: requestInterceptors,
          responseInterceptors: responseInterceptors,
        );

  @override
  ShapeId get protocolId => AwsJson1_1Trait.id;

  @override
  String get contentType => 'application/x-amz-json-1.1';
}

// ignore_for_file: camel_case_types
