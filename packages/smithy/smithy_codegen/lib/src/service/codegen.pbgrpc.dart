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

///
//  Generated code. Do not modify.
//  source: codegen.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

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
