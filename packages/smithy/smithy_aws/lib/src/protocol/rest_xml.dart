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

import 'dart:convert';
import 'dart:typed_data';

import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:smithy/ast.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/src/protocol/aws_http_protocol.dart';
import 'package:xml/xml.dart';

class RestXmlProtocol<InputPayload, Input, OutputPayload, Output>
    extends AWSHttpProtocol<InputPayload, Input, OutputPayload, Output> {
  RestXmlProtocol({
    this.mediaType,
    List<HttpRequestInterceptor> requestInterceptors = const [],
    List<HttpResponseInterceptor> responseInterceptors = const [],
    List<SmithySerializer> serializers = const [],
    Map<FullType, Function> builderFactories = const {},
    this.noErrorWrapping = false,
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
          BigIntSerializer.asString,
          XmlNumSerializer(),
          Int64Serializer.asString,
          TimestampSerializer.dateTime,
          UnitSerializer(),
          XmlBoolSerializer(),
          XmlBuiltListSerializer(),
          XmlBuiltMapSerializer(),
          XmlBuiltSetSerializer(),
          XmlStringSerializer(),
          StreamSerializer<List<int>>(),
        ]))
      .build();

  @override
  ShapeId get protocolId => RestXmlTrait.id;

  /// The `Content-Type` to use for [InputPayload].
  final String? mediaType;

  /// Disables the wrapping of error properties in an ErrorResponse XML element.
  final bool noErrorWrapping;

  @override
  String get contentType =>
      mediaType ??
      const {
        String: 'text/plain',
        Uint8List: 'application/octet-stream',
      }[InputPayload] ??
      'application/xml';

  @override
  late final FullSerializer<List<int>> wireSerializer =
      XmlSerializer(serializers);

  @override
  Future<String?> resolveErrorType(AWSBaseHttpResponse response) async {
    try {
      final body = await utf8.decodeStream(response.split());
      final el = XmlDocument.parse(body).rootElement;
      return el.childElements
              .firstWhereOrNull((el) => el.name.local == 'Error')
              ?.childElements
              .firstWhere((el) => el.name.local == 'Code')
              .innerText ??
          el.childElements
              .firstWhere((el) => el.name.local == 'Code')
              .innerText;
    } on Exception {
      return null;
    }
  }
}
