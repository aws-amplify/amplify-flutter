// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.entity_temporarily_unmodifiable_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityTemporarilyUnmodifiableException
    extends EntityTemporarilyUnmodifiableException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$EntityTemporarilyUnmodifiableException(
          [void Function(EntityTemporarilyUnmodifiableExceptionBuilder)?
              updates]) =>
      (new EntityTemporarilyUnmodifiableExceptionBuilder()..update(updates))
          ._build();

  _$EntityTemporarilyUnmodifiableException._({this.message, this.headers})
      : super._();

  @override
  EntityTemporarilyUnmodifiableException rebuild(
          void Function(EntityTemporarilyUnmodifiableExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityTemporarilyUnmodifiableExceptionBuilder toBuilder() =>
      new EntityTemporarilyUnmodifiableExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityTemporarilyUnmodifiableException &&
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

class EntityTemporarilyUnmodifiableExceptionBuilder
    implements
        Builder<EntityTemporarilyUnmodifiableException,
            EntityTemporarilyUnmodifiableExceptionBuilder> {
  _$EntityTemporarilyUnmodifiableException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  EntityTemporarilyUnmodifiableExceptionBuilder() {
    EntityTemporarilyUnmodifiableException._init(this);
  }

  EntityTemporarilyUnmodifiableExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityTemporarilyUnmodifiableException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EntityTemporarilyUnmodifiableException;
  }

  @override
  void update(
      void Function(EntityTemporarilyUnmodifiableExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityTemporarilyUnmodifiableException build() => _build();

  _$EntityTemporarilyUnmodifiableException _build() {
    final _$result = _$v ??
        new _$EntityTemporarilyUnmodifiableException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
