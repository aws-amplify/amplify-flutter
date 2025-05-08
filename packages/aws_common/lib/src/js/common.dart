// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_classes_with_only_static_members, prefer_void_to_null

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:aws_common/src/util/recase.dart';
import 'package:web/web.dart';

/// The JS `undefined`.
@JS()
external Null get undefined;

/// An [Enum] representing a nullable JS value.
mixin JSEnum on Enum {
  /// The JS representation of `this`.
  ///
  /// Default values are represented as `undefined`, as opposed to `null` which
  /// can be interpreted incorrectly by DOM APIs. Non-default values are
  /// representated as the parameter-cased [name].
  String? get jsValue {
    switch (name) {
      case r'default$':
        return undefined;
      default:
        return name.paramCase;
    }
  }
}

/// Refers to either [window] or the worker's global scope, depending on the
/// program's execution context.
@JS()
external GlobalScope get self;

/// Whether the current script is running in a web worker.
final bool zIsWebWorker = self.getProperty<Window?>('window'.toJS) == null;

/// A function which handles DOM events.
typedef EventHandler<T extends Event> = void Function(T event);

/// {@template worker_bee.js.interop.global_scope}
/// The global execution context, referred to by [self].
///
/// Either a [Window] object or a `WorkerGlobalScope` object.
/// {@endtemplate}
extension type GlobalScope._(JSObject _) implements EventTarget, JSObject {
  /// A [Location] object with information about the current location of the
  /// document.
  external Location get location;

  /// When called on a `WorkerGlobalScope`, this sends a message to the main
  /// thread that spawned it.
  ///
  /// When called on a [Window], this sends a message to the parent window
  /// object.
  void postMessage(JSAny? o, [JSArray<JSAny>? transfer]) =>
      callMethod('postMessage'.toJS, o, transfer);
}

/// Browser-based JSON utilities.
@JS()
@staticInterop
abstract class JSON {
  /// Stringifies a JSON-like object.
  external static String stringify(JSAny? object);
}
