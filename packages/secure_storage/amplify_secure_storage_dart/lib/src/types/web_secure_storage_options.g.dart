// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_secure_storage_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WebSecureStorageOptions> _$webSecureStorageOptionsSerializer =
    new _$WebSecureStorageOptionsSerializer();

class _$WebSecureStorageOptionsSerializer
    implements StructuredSerializer<WebSecureStorageOptions> {
  @override
  final Iterable<Type> types = const [
    WebSecureStorageOptions,
    _$WebSecureStorageOptions
  ];
  @override
  final String wireName = 'WebSecureStorageOptions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WebSecureStorageOptions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.databaseName;
    if (value != null) {
      result
        ..add('databaseName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  WebSecureStorageOptions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WebSecureStorageOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'databaseName':
          result.databaseName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$WebSecureStorageOptions extends WebSecureStorageOptions {
  @override
  final String? databaseName;

  factory _$WebSecureStorageOptions(
          [void Function(WebSecureStorageOptionsBuilder)? updates]) =>
      (new WebSecureStorageOptionsBuilder()..update(updates))._build();

  _$WebSecureStorageOptions._({this.databaseName}) : super._();

  @override
  WebSecureStorageOptions rebuild(
          void Function(WebSecureStorageOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebSecureStorageOptionsBuilder toBuilder() =>
      new WebSecureStorageOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebSecureStorageOptions &&
        databaseName == other.databaseName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, databaseName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WebSecureStorageOptions')
          ..add('databaseName', databaseName))
        .toString();
  }
}

class WebSecureStorageOptionsBuilder
    implements
        Builder<WebSecureStorageOptions, WebSecureStorageOptionsBuilder> {
  _$WebSecureStorageOptions? _$v;

  String? _databaseName;
  String? get databaseName => _$this._databaseName;
  set databaseName(String? databaseName) => _$this._databaseName = databaseName;

  WebSecureStorageOptionsBuilder();

  WebSecureStorageOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _databaseName = $v.databaseName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebSecureStorageOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WebSecureStorageOptions;
  }

  @override
  void update(void Function(WebSecureStorageOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebSecureStorageOptions build() => _build();

  _$WebSecureStorageOptions _build() {
    final _$result =
        _$v ?? new _$WebSecureStorageOptions._(databaseName: databaseName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
