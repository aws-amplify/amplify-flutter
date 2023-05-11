// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.invalid_state_transition_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidStateTransitionException
    extends InvalidStateTransitionException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidStateTransitionException(
          [void Function(InvalidStateTransitionExceptionBuilder)? updates]) =>
      (new InvalidStateTransitionExceptionBuilder()..update(updates))._build();

  _$InvalidStateTransitionException._({this.message, this.headers}) : super._();

  @override
  InvalidStateTransitionException rebuild(
          void Function(InvalidStateTransitionExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidStateTransitionExceptionBuilder toBuilder() =>
      new InvalidStateTransitionExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidStateTransitionException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidStateTransitionExceptionBuilder
    implements
        Builder<InvalidStateTransitionException,
            InvalidStateTransitionExceptionBuilder> {
  _$InvalidStateTransitionException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidStateTransitionExceptionBuilder() {
    InvalidStateTransitionException._init(this);
  }

  InvalidStateTransitionExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidStateTransitionException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidStateTransitionException;
  }

  @override
  void update(void Function(InvalidStateTransitionExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidStateTransitionException build() => _build();

  _$InvalidStateTransitionException _build() {
    final _$result = _$v ??
        new _$InvalidStateTransitionException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
