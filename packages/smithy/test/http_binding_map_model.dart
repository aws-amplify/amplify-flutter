// @dart=2.13

library com.test.http_binding_map_model;

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/src/http/operation.dart';
import 'package:smithy/src/http/protocol.dart';
import 'package:smithy/src/protocol/json.dart';

part 'http_binding_map_model.g.dart';

typedef IntList = List<int>;
typedef MapOfLists = Map<String, IntList>;

@JsonSerializable(
  createToJson: true,
  createFactory: false,
)
class MapInputRequest implements Payload<Map<String, Object?>> {
  const MapInputRequest({
    required this.mapOfLists,
  });

  final MapOfLists mapOfLists;

  Map<String, dynamic> toJson() => _$MapInputRequestToJson(this);

  @override
  Map<String, Object?> getPayload() => toJson();
}

class MapInputOperation
    extends HttpOperation<Map<String, Object?>, void, MapInputRequest, void> {
  MapInputOperation()
      : super(
          baseUri: Uri.parse(''),
          method: 'POST',
          path: '/input/map',
        );

  @override
  void Function(void) get responseConstructor => (_) {};

  @override
  JsonProtocol<Map<String, Object?>, void> get protocol => const JsonProtocol();
}
