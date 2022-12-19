// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' hide Serializer;

abstract class AWSHttpProtocol<InputPayload, Input, OutputPayload, Output>
    extends HttpProtocol<InputPayload, Input, OutputPayload, Output> {
  AWSHttpProtocol(
    this._coreSerializers, {
    required List<SmithySerializer> serializers,
    required Map<FullType, Function> builderFactories,
    required this.requestInterceptors,
    this.responseInterceptors = const [],
  })  : _userSerializers = serializers,
        _builderFactories = builderFactories;

  final Serializers _coreSerializers;
  final List<SmithySerializer> _userSerializers;
  final Map<FullType, Function> _builderFactories;

  @override
  final List<HttpRequestInterceptor> requestInterceptors;

  @override
  final List<HttpResponseInterceptor> responseInterceptors;

  @override
  late final Serializers serializers = () {
    final builder = _coreSerializers.toBuilder();
    builder.addAll(_userSerializers.where((el) {
      return el.supportedProtocols.contains(protocolId);
    }));
    for (final entry in _builderFactories.entries) {
      builder.addBuilderFactory(entry.key, entry.value);
    }

    // Add a blob serializer for the content type of the input payload.
    builder.add(BlobSerializer(contentType));
    return builder.build();
  }();
}
