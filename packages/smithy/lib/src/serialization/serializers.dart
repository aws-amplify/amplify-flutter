import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

class SmithySerializers implements Serializers {
  final BuiltMap<Type, Serializer> _typeToSerializer;

  // Implementation note: wire name is what gets sent in the JSON, type name is
  // the runtime type name. Type name is complicated for two reasons:
  //
  // 1. Built Value classes have two types, the abstract class and the
  // generated implementation.
  //
  // 2. When compiled to javascript the runtime type names are obfuscated.
  final BuiltMap<String, Serializer> _wireNameToSerializer;
  final BuiltMap<String, Serializer> _typeNameToSerializer;

  @override
  final BuiltMap<FullType, Function> builderFactories;

  @override
  final BuiltList<SerializerPlugin> serializerPlugins;

  SmithySerializers._(
    this._typeToSerializer,
    this._wireNameToSerializer,
    this._typeNameToSerializer,
    this.builderFactories,
    this.serializerPlugins,
  );

  @override
  Iterable<Serializer> get serializers => _wireNameToSerializer.values;

  @override
  Object? deserialize(Object? serialized,
      {FullType specifiedType = FullType.unspecified}) {
    throw UnimplementedError();
  }

  @override
  T? deserializeWith<T>(Serializer<T> serializer, Object? serialized) {
    return deserialize(serialized,
        specifiedType: FullType(serializer.types.first)) as T?;
  }

  @override
  void expectBuilder(FullType fullType) {}

  @override
  T? fromJson<T>(Serializer<T> serializer, String serialized) {
    throw UnimplementedError();
  }

  @override
  bool hasBuilder(FullType fullType) {
    throw UnimplementedError();
  }

  @override
  Object newBuilder(FullType fullType) {
    throw UnimplementedError();
  }

  @override
  Object? serialize(Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw UnimplementedError();
  }

  @override
  Object? serializeWith<T>(Serializer<T> serializer, T? object) {
    throw UnimplementedError();
  }

  @override
  Serializer? serializerForType(Type type) {
    throw UnimplementedError();
  }

  @override
  Serializer? serializerForWireName(String wireName) {
    throw UnimplementedError();
  }

  @override
  SerializersBuilder toBuilder() {
    throw UnimplementedError();
  }

  @override
  String toJson<T>(Serializer<T> serializer, T? object) {
    throw UnimplementedError();
  }
}
