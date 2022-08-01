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

library aws_http.js.promise;

import 'dart:async';

import 'package:js/js.dart';
import 'package:js/js_util.dart' as js_util;

/// A [Promise] executor callback.
typedef Executor<T> = void Function(
  void Function(T) resolve,
  void Function(Object) reject,
);

/// {@template aws_common.js.promise}
/// Represents the eventual completion (or failure) of an asynchronous operation
/// and its resulting value.
/// {@endtemplate}
@JS()
@staticInterop
class Promise<T> {
  /// Creates a JS Promise.
  factory Promise(Executor<T> executor) => Promise._(allowInterop(executor));

  external factory Promise._(Executor<T> executor);

  /// Creates a Promise from a Dart [future].
  ///
  /// If [captureError] is `true`, all errors will be caught by the promise
  /// and not reported as unhandled errors in the current [Zone]. This can
  /// decrease the visibility of errors in Dart code depending on the level of
  /// integration with JS APIs and their error-handling specifics.
  factory Promise.fromFuture(
    Future<T> future, {
    bool captureError = false,
  }) {
    return Promise((resolve, reject) async {
      try {
        resolve(await future);
      } on Object catch (e) {
        reject(e);
        if (!captureError) {
          rethrow;
        }
      }
    });
  }
}

/// {@macro aws_common.js.promise}
extension PropsPromise<T> on Promise<T> {
  /// Resolves `this` as a Dart [Future].
  Future<T> get future => js_util.promiseToFuture(this);
}
