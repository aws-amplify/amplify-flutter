// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_secure_storage_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WebPersistenceOption _$inMemory =
    const WebPersistenceOption._('inMemory');
const WebPersistenceOption _$indexedDB =
    const WebPersistenceOption._('indexedDB');

WebPersistenceOption _$WebPersistenceOptionValueOf(String name) {
  switch (name) {
    case 'inMemory':
      return _$inMemory;
    case 'indexedDB':
      return _$indexedDB;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<WebPersistenceOption> _$WebPersistenceOptionValues =
    new BuiltSet<WebPersistenceOption>(const <WebPersistenceOption>[
  _$inMemory,
  _$indexedDB,
]);

Serializer<WebSecureStorageOptions> _$webSecureStorageOptionsSerializer =
    new _$WebSecureStorageOptionsSerializer();
Serializer<WebPersistenceOption> _$webPersistenceOptionSerializer =
    new _$WebPersistenceOptionSerializer();

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
    final result = <Object?>[
      'persistenceOption',
      serializers.serialize(object.persistenceOption,
          specifiedType: const FullType(WebPersistenceOption)),
    ];
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
        case 'persistenceOption':
          result.persistenceOption = serializers.deserialize(value,
                  specifiedType: const FullType(WebPersistenceOption))!
              as WebPersistenceOption;
          break;
      }
    }

    return result.build();
  }
}

class _$WebPersistenceOptionSerializer
    implements PrimitiveSerializer<WebPersistenceOption> {
  @override
  final Iterable<Type> types = const <Type>[WebPersistenceOption];
  @override
  final String wireName = 'WebPersistenceOption';

  @override
  Object serialize(Serializers serializers, WebPersistenceOption object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  WebPersistenceOption deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WebPersistenceOption.valueOf(serialized as String);
}

class _$WebSecureStorageOptions extends WebSecureStorageOptions {
  @override
  final String? databaseName;
  @override
  final WebPersistenceOption persistenceOption;

  factory _$WebSecureStorageOptions(
          [void Function(WebSecureStorageOptionsBuilder)? updates]) =>
      (new WebSecureStorageOptionsBuilder()..update(updates))._build();

  _$WebSecureStorageOptions._(
      {this.databaseName, required this.persistenceOption})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        persistenceOption, r'WebSecureStorageOptions', 'persistenceOption');
  }

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
        databaseName == other.databaseName &&
        persistenceOption == other.persistenceOption;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, databaseName.hashCode), persistenceOption.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WebSecureStorageOptions')
          ..add('databaseName', databaseName)
          ..add('persistenceOption', persistenceOption))
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

  WebPersistenceOption? _persistenceOption;
  WebPersistenceOption? get persistenceOption => _$this._persistenceOption;
  set persistenceOption(WebPersistenceOption? persistenceOption) =>
      _$this._persistenceOption = persistenceOption;

  WebSecureStorageOptionsBuilder();

  WebSecureStorageOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _databaseName = $v.databaseName;
      _persistenceOption = $v.persistenceOption;
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
    final _$result = _$v ??
        new _$WebSecureStorageOptions._(
            databaseName: databaseName,
            persistenceOption: BuiltValueNullFieldError.checkNotNull(
                persistenceOption,
                r'WebSecureStorageOptions',
                'persistenceOption'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
