import 'dart:js_interop';

import 'package:web/web.dart';

import './text_input_element_base.dart';

extension type TextInputElement(JSObject _) implements TextInputElementBase {
  external String? get dirName;
  external set dirName(String? value);

  external Element? get list;
}
