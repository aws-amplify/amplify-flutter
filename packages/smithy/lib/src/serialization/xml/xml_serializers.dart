import 'package:built_collection/src/map.dart';
import 'package:built_value/serializer.dart';

class XmlSerializers implements Serializers {
  @override
  BuiltMap<FullType, Function> get builderFactories =>
      throw UnimplementedError();

  @override
  Object? deserialize(Object? serialized,
      {FullType specifiedType = FullType.unspecified}) {
    // TODO: implement deserialize
    throw UnimplementedError();
  }

  @override
  T? deserializeWith<T>(Serializer<T> serializer, Object? serialized) {
    // TODO: implement deserializeWith
    throw UnimplementedError();
  }

  @override
  void expectBuilder(FullType fullType) {
    // TODO: implement expectBuilder
  }

  @override
  T? fromJson<T>(Serializer<T> serializer, String serialized) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  bool hasBuilder(FullType fullType) {
    // TODO: implement hasBuilder
    throw UnimplementedError();
  }

  @override
  Object newBuilder(FullType fullType) {
    // TODO: implement newBuilder
    throw UnimplementedError();
  }

  @override
  Object? serialize(Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    // TODO: implement serialize
    throw UnimplementedError();
  }

  @override
  Object? serializeWith<T>(Serializer<T> serializer, T? object) {
    // TODO: implement serializeWith
    throw UnimplementedError();
  }

  @override
  Serializer? serializerForType(Type type) {
    // TODO: implement serializerForType
    throw UnimplementedError();
  }

  @override
  Serializer? serializerForWireName(String wireName) {
    // TODO: implement serializerForWireName
    throw UnimplementedError();
  }

  @override
  // TODO: implement serializerPlugins
  Iterable<SerializerPlugin> get serializerPlugins =>
      throw UnimplementedError();

  @override
  // TODO: implement serializers
  Iterable<Serializer> get serializers => throw UnimplementedError();

  @override
  SerializersBuilder toBuilder() {
    // TODO: implement toBuilder
    throw UnimplementedError();
  }

  @override
  String toJson<T>(Serializer<T> serializer, T? object) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
