// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secure_storage_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SecureStorageAction _$init = const SecureStorageAction._('init');
const SecureStorageAction _$read = const SecureStorageAction._('read');
const SecureStorageAction _$write = const SecureStorageAction._('write');
const SecureStorageAction _$delete = const SecureStorageAction._('delete');
const SecureStorageAction _$removeAll =
    const SecureStorageAction._('removeAll');

SecureStorageAction _$SecureStorageActionValueOf(String name) {
  switch (name) {
    case 'init':
      return _$init;
    case 'read':
      return _$read;
    case 'write':
      return _$write;
    case 'delete':
      return _$delete;
    case 'removeAll':
      return _$removeAll;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SecureStorageAction> _$SecureStorageActionValues =
    new BuiltSet<SecureStorageAction>(const <SecureStorageAction>[
  _$init,
  _$read,
  _$write,
  _$delete,
  _$removeAll,
]);

Serializer<SecureStorageAction> _$secureStorageActionSerializer =
    new _$SecureStorageActionSerializer();

class _$SecureStorageActionSerializer
    implements PrimitiveSerializer<SecureStorageAction> {
  @override
  final Iterable<Type> types = const <Type>[SecureStorageAction];
  @override
  final String wireName = 'SecureStorageAction';

  @override
  Object serialize(Serializers serializers, SecureStorageAction object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  SecureStorageAction deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SecureStorageAction.valueOf(serialized as String);
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
