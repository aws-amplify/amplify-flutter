// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
  @JsonKey(includeFromJson: false, includeToJson: false)
  final bool noInlineDocumentSupport;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ShapeId> get traits;
}
