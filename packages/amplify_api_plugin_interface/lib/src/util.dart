import 'dart:convert';

String prettyPrintJson(dynamic json) {
  const defaultIndent = '  ';
  const jsonIndent = JsonEncoder.withIndent(defaultIndent);
  return jsonIndent.convert(json);
}
