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
