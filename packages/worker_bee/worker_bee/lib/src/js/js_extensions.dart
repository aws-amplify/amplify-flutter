import 'dart:js_interop';

import 'package:meta/meta.dart';

@internal
extension JSBoxOrCastObject on Object {
  JSAny get toJSBoxOrCast {
    // ignore: invalid_runtime_check_with_js_interop_types
    if (this is JSAny) return this as JSAny;

    return toJSBox;
  }
}

@internal
extension JSBoxOrCastList on List<Object> {
  JSArray<JSAny> get toJSBoxOrCast {
    final mapped = map((item) {
      if (item is List) {
        return item.toJSBoxOrCast;
      }
      return item.toJSBoxOrCast;
    });

    return mapped.toList().toJS;
  }
}
