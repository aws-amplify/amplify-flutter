import 'dart:convert';

import 'package:smithy/smithy.dart';

class JsonSerializer<RequestPayload extends AWSJsonSerializable,
        ResponsePayload>
    implements FullSerializer<RequestPayload, ResponsePayload, List<int>> {
  const JsonSerializer();

  @override
  ResponsePayload deserialize(List<int> data) {
    if (data.isEmpty) {
      return null as ResponsePayload;
    }
    return jsonDecode(utf8.decode(data)) as ResponsePayload;
  }

  @override
  List<int> serialize(RequestPayload input) {
    return jsonEncode(input).codeUnits;
  }
}
