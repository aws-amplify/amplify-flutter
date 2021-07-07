import 'dart:convert';

/// Encodes [json] with indentation for easier debugging.
String prettyPrintJson(dynamic json) {
  const defaultIndent = '  ';
  const jsonIndent = JsonEncoder.withIndent(defaultIndent);
  return jsonIndent.convert(json);
}
