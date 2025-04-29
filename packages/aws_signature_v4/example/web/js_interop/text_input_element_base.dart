import 'dart:js_interop';

import './input_element_base.dart';

extension type TextInputElementBase(JSObject _) implements InputElementBase {
  external String get autocomplete;
  external set autocomplete(String value);

  external int? get maxLength;
  external set maxLength(int? value);

  external String get pattern;
  external set pattern(String value);

  external String get placeholder;
  external set placeholder(String value);

  external bool? get readOnly;
  external set readOnly(bool? value);

  external bool get required;
  external set required(bool value);

  external int? get size;
  external set size(int? value);

  external void select();

  external String? get selectionDirection;
  external set selectionDirection(String? value);

  external int? get selectionEnd;
  external set selectionEnd(int? value);

  external int? get selectionStart;
  external set selectionStart(int? value);

  external void setSelectionRange(int start, int end, [String? direction]);
}
