// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.idp_rejected_claim_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdpRejectedClaimException extends IdpRejectedClaimException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$IdpRejectedClaimException(
          [void Function(IdpRejectedClaimExceptionBuilder)? updates]) =>
      (new IdpRejectedClaimExceptionBuilder()..update(updates))._build();

  _$IdpRejectedClaimException._({this.message, this.headers}) : super._();

  @override
  IdpRejectedClaimException rebuild(
          void Function(IdpRejectedClaimExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdpRejectedClaimExceptionBuilder toBuilder() =>
      new IdpRejectedClaimExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdpRejectedClaimException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IdpRejectedClaimExceptionBuilder
    implements
        Builder<IdpRejectedClaimException, IdpRejectedClaimExceptionBuilder> {
  _$IdpRejectedClaimException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  IdpRejectedClaimExceptionBuilder() {
    IdpRejectedClaimException._init(this);
  }

  IdpRejectedClaimExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdpRejectedClaimException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdpRejectedClaimException;
  }

  @override
  void update(void Function(IdpRejectedClaimExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdpRejectedClaimException build() => _build();

  _$IdpRejectedClaimException _build() {
    final _$result = _$v ??
        new _$IdpRejectedClaimException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
