import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

abstract class AWSProtocolTrait implements ProtocolDefinitionTrait {
  const AWSProtocolTrait(
    this.shapeId, {
    List<AlpnProtocol> http = defaultHttpProtocols,
    List<AlpnProtocol>? eventStreamHttp,
    required this.timestampFormat,
    this.noInlineDocumentSupport = false,
  })  : _http = http,
        _eventStreamHttp = eventStreamHttp;

  // A client SHOULD assume that a service supports http/1.1 when no http or
  // eventStreamHttp values are provided.
  static const defaultHttpProtocols = [AlpnProtocol.http1_1];

  @override
  final ShapeId shapeId;

  final List<AlpnProtocol> _http;

  @JsonKey(unknownEnumValue: AlpnProtocol.unknown)
  List<AlpnProtocol> get http =>
      _http.where((el) => el != AlpnProtocol.unknown).toList();

  final List<AlpnProtocol>? _eventStreamHttp;

  @JsonKey(unknownEnumValue: AlpnProtocol.unknown)
  List<AlpnProtocol> get eventStreamHttp =>
      _eventStreamHttp?.where((el) => el != AlpnProtocol.unknown).toList() ??
      http;

  @JsonKey(ignore: true)
  final TimestampFormat timestampFormat;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [
        shapeId,
        http,
        eventStreamHttp,
      ];

  @override
  Map<String, Object?> toJson();

  @override
  AWSProtocolTrait get value => this;

  @override
  @JsonKey(ignore: true)
  final bool noInlineDocumentSupport;

  @override
  @JsonKey(ignore: true)
  List<ShapeId> get traits;
}
