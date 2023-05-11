// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.type_configuration_not_found_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TypeConfigurationNotFoundException
    extends TypeConfigurationNotFoundException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$TypeConfigurationNotFoundException(
          [void Function(TypeConfigurationNotFoundExceptionBuilder)?
              updates]) =>
      (new TypeConfigurationNotFoundExceptionBuilder()..update(updates))
          ._build();

  _$TypeConfigurationNotFoundException._({this.message, this.headers})
      : super._();

  @override
  TypeConfigurationNotFoundException rebuild(
          void Function(TypeConfigurationNotFoundExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TypeConfigurationNotFoundExceptionBuilder toBuilder() =>
      new TypeConfigurationNotFoundExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TypeConfigurationNotFoundException &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TypeConfigurationNotFoundExceptionBuilder
    implements
        Builder<TypeConfigurationNotFoundException,
            TypeConfigurationNotFoundExceptionBuilder> {
  _$TypeConfigurationNotFoundException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  TypeConfigurationNotFoundExceptionBuilder() {
    TypeConfigurationNotFoundException._init(this);
  }

  TypeConfigurationNotFoundExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TypeConfigurationNotFoundException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TypeConfigurationNotFoundException;
  }

  @override
  void update(
      void Function(TypeConfigurationNotFoundExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TypeConfigurationNotFoundException build() => _build();

  _$TypeConfigurationNotFoundException _build() {
    final _$result = _$v ??
        new _$TypeConfigurationNotFoundException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
