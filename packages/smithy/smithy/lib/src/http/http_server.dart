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
import 'package:built_value/serializer.dart';
import 'package:shelf/shelf.dart';
import 'package:smithy/smithy.dart';

/// {@template smithy.http_server}
/// Interface for Smithy HTTP servers conforming to a [Service] interface.
/// {@endtemplate}
abstract class HttpServer<Service extends HttpServerBase>
    implements FullSerializer<Stream<List<int>>> {
  /// {@macro smithy.http_server}
  const HttpServer();

  Service get service;

  @override
  Stream<List<int>> serialize(Object? input, {FullType? specifiedType}) =>
      service.serialize(input, specifiedType: specifiedType);

  @override
  Object? deserialize(Stream<List<int>> input, {FullType? specifiedType}) =>
      service.deserialize(input, specifiedType: specifiedType);
}

abstract class HttpServerBase implements FullSerializer<Stream<List<int>>> {
  HttpProtocol get protocol;

  @override
  Stream<List<int>> serialize(Object? input, {FullType? specifiedType}) =>
      protocol.serialize(input, specifiedType: specifiedType);

  @override
  Object? deserialize(Stream<List<int>> input, {FullType? specifiedType}) =>
      protocol.deserialize(input, specifiedType: specifiedType);

  Future<Response> handleUncaughtError(Object error, StackTrace st);
}

class Context {
  Context(this.request, [HttpResponseBuilder? response])
      : response = response ?? HttpResponseBuilder();

  final AWSStreamedHttpRequest request;
  final HttpResponseBuilder response;
}

extension ShelfAwsRequest on Request {
  AWSStreamedHttpRequest get awsRequest => AWSStreamedHttpRequest.raw(
        method: AWSHttpMethod.fromString(method),
        host: requestedUri.host,
        path: requestedUri.path,
        headers: headers,
        queryParameters: requestedUri.queryParametersAll,
        body: read(),
      );
}

class RpcRouter {
  const RpcRouter(this.rpcHeader, this.handlers);

  final String rpcHeader;
  final Map<String, Handler> handlers;

  Future<Response> call(Request request) async {
    final rpcCall = request.headers[rpcHeader];
    final rpcHandler = handlers[rpcCall];
    if (rpcHandler == null) {
      throw Exception('Route not found');
    }
    return rpcHandler(request);
  }
}
