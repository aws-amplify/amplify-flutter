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

/// {@template aws_common.operation.aws_progress_operation}
/// A mixin to [AWSOperation] which adds progress monitoring.
/// {@endtemplate}
mixin AWSProgressOperation<T> on AWSOperation<T> {
  /// {@template aws_common.operation.request_progress}
  /// The operation's progress sending the request, in bytes.
  ///
  /// If [cancel] is called before the request has been fully sent, the stream
  /// will be closed and its `onDone` callback will fire.
  /// {@endtemplate}
  Stream<int> get requestProgress;

  /// {@template aws_common.operation.response_progress}
  /// The operation's progress receiving a response, in bytes.
  ///
  /// If [cancel] is called before the response has been fully received, the
  /// stream will be closed and its `onDone` callback will fire.
  /// {@endtemplate}
  Stream<int> get responseProgress;
}
