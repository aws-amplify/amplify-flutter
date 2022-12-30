// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

///
import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;

import 'codegen.pb.dart' as $0;

export 'codegen.pb.dart';

class CodegenServiceClient extends $grpc.Client {
  static final _$codegen =
      $grpc.ClientMethod<$0.CodegenRequest, $0.CodegenResponse>(
          '/CodegenService/Codegen',
          ($0.CodegenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CodegenResponse.fromBuffer(value));

  CodegenServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CodegenResponse> codegen($0.CodegenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$codegen, request, options: options);
  }
}

abstract class CodegenServiceBase extends $grpc.Service {
  $core.String get $name => 'CodegenService';

  CodegenServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CodegenRequest, $0.CodegenResponse>(
        'Codegen',
        codegen_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CodegenRequest.fromBuffer(value),
        ($0.CodegenResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CodegenResponse> codegen_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CodegenRequest> request) async {
    return codegen(call, await request);
  }

  $async.Future<$0.CodegenResponse> codegen(
      $grpc.ServiceCall call, $0.CodegenRequest request);
}
