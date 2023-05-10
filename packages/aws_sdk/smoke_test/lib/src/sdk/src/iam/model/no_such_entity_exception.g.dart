// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.no_such_entity_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoSuchEntityException extends NoSuchEntityException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$NoSuchEntityException(
          [void Function(NoSuchEntityExceptionBuilder)? updates]) =>
      (new NoSuchEntityExceptionBuilder()..update(updates))._build();

  _$NoSuchEntityException._({this.message, this.headers}) : super._();

  @override
  NoSuchEntityException rebuild(
          void Function(NoSuchEntityExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoSuchEntityExceptionBuilder toBuilder() =>
      new NoSuchEntityExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoSuchEntityException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NoSuchEntityExceptionBuilder
    implements Builder<NoSuchEntityException, NoSuchEntityExceptionBuilder> {
  _$NoSuchEntityException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NoSuchEntityExceptionBuilder() {
    NoSuchEntityException._init(this);
  }

  NoSuchEntityExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoSuchEntityException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoSuchEntityException;
  }

  @override
  void update(void Function(NoSuchEntityExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoSuchEntityException build() => _build();

  _$NoSuchEntityException _build() {
    final _$result = _$v ??
        new _$NoSuchEntityException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
