import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/smithy.dart';

const int64Serializer = Int64Serializer();

class Int64Serializer extends JsonConverter<Int64?, String?>
    implements Serializer<Int64?, String?>, Deserializer<Int64?, String?> {
  const Int64Serializer();

  @override
  Int64? fromJson(String? json) {
    return deserialize(json);
  }

  @override
  String? toJson(Int64? object) {
    return serialize(object);
  }

  @override
  String? serialize(Int64? input) {
    if (input == null) {
      return null;
    }
    return input.toString();
  }

  @override
  Int64? deserialize(String? data) {
    if (data == null) {
      return null;
    }
    return Int64.parseInt(data);
  }
}
