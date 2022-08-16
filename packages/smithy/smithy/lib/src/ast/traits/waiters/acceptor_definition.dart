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

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';

import 'matcher.dart';

part 'acceptor_definition.g.dart';

enum AcceptorState { success, failure, retry }

@JsonSerializable()
class AcceptorDefinition
    with AWSSerializable, AWSEquatable<AcceptorDefinition> {
  const AcceptorDefinition({
    required this.state,
    required this.matcher,
  });

  factory AcceptorDefinition.fromJson(Object? json) =>
      _$AcceptorDefinitionFromJson((json as Map).cast<String, Object?>());

  final AcceptorState state;
  final Matcher matcher;

  @override
  List<Object?> get props => [state, matcher];

  @override
  Map<String, Object?> toJson() => _$AcceptorDefinitionToJson(this);
}
