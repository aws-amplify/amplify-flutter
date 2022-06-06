// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secure_storage_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SecureStorageAction _$init = const SecureStorageAction._('init');
const SecureStorageAction _$read = const SecureStorageAction._('read');
const SecureStorageAction _$write = const SecureStorageAction._('write');
const SecureStorageAction _$delete = const SecureStorageAction._('delete');

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
