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
import 'package:smithy/ast.dart';

abstract class AWSProtocolTrait implements ProtocolDefinitionTrait {
  const AWSProtocolTrait(
    this.shapeId, {
    List<AlpnProtocol> http = defaultHttpProtocols,
    List<AlpnProtocol>? eventStreamHttp,
    required this.timestampFormat,
    this.noInlineDocumentSupport = false,
  })  : _http = http,
        _eventStreamHttp = eventStreamHttp;

  // A client SHOULD assume that a service supports http/1.1 when no http or
  // eventStreamHttp values are provided.
  static const defaultHttpProtocols = [AlpnProtocol.http1_1];

  @override
  final ShapeId shapeId;

  final List<AlpnProtocol> _http;
  List<AlpnProtocol> get http => _http.whereType<AlpnProtocol>().toList();

  final List<AlpnProtocol>? _eventStreamHttp;
  List<AlpnProtocol> get eventStreamHttp =>
      _eventStreamHttp?.whereType<AlpnProtocol>().toList() ?? http;

  @JsonKey(ignore: true)
  final TimestampFormat timestampFormat;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [
        shapeId,
        http,
        eventStreamHttp,
      ];

  @override
  Map<String, Object?> toJson();

  @override
  AWSProtocolTrait get value => this;

  @override
  @JsonKey(ignore: true)
  final bool noInlineDocumentSupport;

  @override
  @JsonKey(ignore: true)
  List<ShapeId> get traits;
}
