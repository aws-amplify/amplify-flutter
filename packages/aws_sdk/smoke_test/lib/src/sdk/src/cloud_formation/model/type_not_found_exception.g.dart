// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.type_not_found_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TypeNotFoundException extends TypeNotFoundException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$TypeNotFoundException(
          [void Function(TypeNotFoundExceptionBuilder)? updates]) =>
      (new TypeNotFoundExceptionBuilder()..update(updates))._build();

  _$TypeNotFoundException._({this.message, this.headers}) : super._();

  @override
  TypeNotFoundException rebuild(
          void Function(TypeNotFoundExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TypeNotFoundExceptionBuilder toBuilder() =>
      new TypeNotFoundExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TypeNotFoundException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TypeNotFoundExceptionBuilder
    implements Builder<TypeNotFoundException, TypeNotFoundExceptionBuilder> {
  _$TypeNotFoundException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  TypeNotFoundExceptionBuilder() {
    TypeNotFoundException._init(this);
  }

  TypeNotFoundExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TypeNotFoundException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TypeNotFoundException;
  }

  @override
  void update(void Function(TypeNotFoundExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TypeNotFoundException build() => _build();

  _$TypeNotFoundException _build() {
    final _$result = _$v ??
        new _$TypeNotFoundException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
