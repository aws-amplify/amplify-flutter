// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linux_secure_storage_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LinuxSecureStorageOptions> _$linuxSecureStorageOptionsSerializer =
    new _$LinuxSecureStorageOptionsSerializer();

class _$LinuxSecureStorageOptionsSerializer
    implements StructuredSerializer<LinuxSecureStorageOptions> {
  @override
  final Iterable<Type> types = const [
    LinuxSecureStorageOptions,
    _$LinuxSecureStorageOptions
  ];
  @override
  final String wireName = 'LinuxSecureStorageOptions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LinuxSecureStorageOptions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.schemaName;
    if (value != null) {
      result
        ..add('schemaName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LinuxSecureStorageOptions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LinuxSecureStorageOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'schemaName':
          result.schemaName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$LinuxSecureStorageOptions extends LinuxSecureStorageOptions {
  @override
  final String? schemaName;

  factory _$LinuxSecureStorageOptions(
          [void Function(LinuxSecureStorageOptionsBuilder)? updates]) =>
      (new LinuxSecureStorageOptionsBuilder()..update(updates))._build();

  _$LinuxSecureStorageOptions._({this.schemaName}) : super._();

  @override
  LinuxSecureStorageOptions rebuild(
          void Function(LinuxSecureStorageOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LinuxSecureStorageOptionsBuilder toBuilder() =>
      new LinuxSecureStorageOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LinuxSecureStorageOptions && schemaName == other.schemaName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, schemaName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LinuxSecureStorageOptions')
          ..add('schemaName', schemaName))
        .toString();
  }
}

class LinuxSecureStorageOptionsBuilder
    implements
        Builder<LinuxSecureStorageOptions, LinuxSecureStorageOptionsBuilder> {
  _$LinuxSecureStorageOptions? _$v;

  String? _schemaName;
  String? get schemaName => _$this._schemaName;
  set schemaName(String? schemaName) => _$this._schemaName = schemaName;

  LinuxSecureStorageOptionsBuilder();

  LinuxSecureStorageOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _schemaName = $v.schemaName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LinuxSecureStorageOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LinuxSecureStorageOptions;
  }

  @override
  void update(void Function(LinuxSecureStorageOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LinuxSecureStorageOptions build() => _build();

  _$LinuxSecureStorageOptions _build() {
    final _$result =
        _$v ?? new _$LinuxSecureStorageOptions._(schemaName: schemaName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
