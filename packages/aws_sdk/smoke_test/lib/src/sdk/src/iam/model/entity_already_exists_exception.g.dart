// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.entity_already_exists_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityAlreadyExistsException extends EntityAlreadyExistsException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$EntityAlreadyExistsException(
          [void Function(EntityAlreadyExistsExceptionBuilder)? updates]) =>
      (new EntityAlreadyExistsExceptionBuilder()..update(updates))._build();

  _$EntityAlreadyExistsException._({this.message, this.headers}) : super._();

  @override
  EntityAlreadyExistsException rebuild(
          void Function(EntityAlreadyExistsExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityAlreadyExistsExceptionBuilder toBuilder() =>
      new EntityAlreadyExistsExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityAlreadyExistsException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EntityAlreadyExistsExceptionBuilder
    implements
        Builder<EntityAlreadyExistsException,
            EntityAlreadyExistsExceptionBuilder> {
  _$EntityAlreadyExistsException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  EntityAlreadyExistsExceptionBuilder() {
    EntityAlreadyExistsException._init(this);
  }

  EntityAlreadyExistsExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityAlreadyExistsException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EntityAlreadyExistsException;
  }

  @override
  void update(void Function(EntityAlreadyExistsExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityAlreadyExistsException build() => _build();

  _$EntityAlreadyExistsException _build() {
    final _$result = _$v ??
        new _$EntityAlreadyExistsException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
