import 'dart:js_interop';

import 'package:web/web.dart';

extension type InputElementBase(JSObject _) implements Element {
  external bool get autofocus;
  external set autofocus(bool value);

  external bool? get disabled;
  external set disabled(bool? value);

  external bool? get incremental;
  external set incremental(bool? value);

  external bool? get indeterminate;
  external set indeterminate(bool? value);

  external String? get name;
  external set name(String? value);

  external String? get value;
  external set value(String? value);

  external JSArray<Node>? get labels;

  external String get validationMessage;

  external ValidityState get validity;

  external bool get willValidate;

  external bool checkValidity();

  external void setCustomValidity(String error);
}
