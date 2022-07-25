// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy_codegen/src/aws/partition_node.dart';

part 'endpoints.g.dart';

@JsonLiteral('endpoints.json', asConst: true)
Map get _awsEndpoints => _$_awsEndpointsJsonLiteral;

final Map<String, PartitionNode> awsPartitions = Map.fromEntries(
  (_awsEndpoints['partitions'] as List).map((el) {
    final config = PartitionNode.fromJson((el as Map).cast());
    return MapEntry(config.partition, config);
  }),
);
