import 'dart:js_interop';

import 'package:web/web.dart';

import './input_element_base.dart';

extension type FileUploadInputElement(JSObject _) implements InputElementBase {
  external String? get accept;
  external set accept(String? value);

  external bool? get multiple;
  external set multiple(bool? value);

  external bool get required;
  external set required(bool value);

  external JSArray<File>? files;
}
