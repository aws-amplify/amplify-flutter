// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.idp_communication_error_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdpCommunicationErrorException extends IdpCommunicationErrorException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$IdpCommunicationErrorException(
          [void Function(IdpCommunicationErrorExceptionBuilder)? updates]) =>
      (new IdpCommunicationErrorExceptionBuilder()..update(updates))._build();

  _$IdpCommunicationErrorException._({this.message, this.headers}) : super._();

  @override
  IdpCommunicationErrorException rebuild(
          void Function(IdpCommunicationErrorExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdpCommunicationErrorExceptionBuilder toBuilder() =>
      new IdpCommunicationErrorExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdpCommunicationErrorException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IdpCommunicationErrorExceptionBuilder
    implements
        Builder<IdpCommunicationErrorException,
            IdpCommunicationErrorExceptionBuilder> {
  _$IdpCommunicationErrorException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  IdpCommunicationErrorExceptionBuilder() {
    IdpCommunicationErrorException._init(this);
  }

  IdpCommunicationErrorExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdpCommunicationErrorException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdpCommunicationErrorException;
  }

  @override
  void update(void Function(IdpCommunicationErrorExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdpCommunicationErrorException build() => _build();

  _$IdpCommunicationErrorException _build() {
    final _$result = _$v ??
        new _$IdpCommunicationErrorException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
