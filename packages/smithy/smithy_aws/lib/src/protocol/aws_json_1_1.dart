// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';
import 'package:smithy_aws/smithy_aws.dart';

class AwsJson1_1Protocol<InputPayload, Input, OutputPayload, Output>
    extends AwsJson1_0Protocol<InputPayload, Input, OutputPayload, Output> {
  AwsJson1_1Protocol({
    super.requestInterceptors,
    super.responseInterceptors,
    super.serializers,
    super.builderFactories,
  });

  @override
  ShapeId get protocolId => AwsJson1_1Trait.id;

  @override
  String get contentType => 'application/x-amz-json-1.1';
}

// ignore_for_file: camel_case_types
