// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.mfa_method_not_found_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MfaMethodNotFoundException extends MfaMethodNotFoundException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$MfaMethodNotFoundException(
          [void Function(MfaMethodNotFoundExceptionBuilder)? updates]) =>
      (new MfaMethodNotFoundExceptionBuilder()..update(updates))._build();

  _$MfaMethodNotFoundException._({this.message, this.headers}) : super._();

  @override
  MfaMethodNotFoundException rebuild(
          void Function(MfaMethodNotFoundExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MfaMethodNotFoundExceptionBuilder toBuilder() =>
      new MfaMethodNotFoundExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MfaMethodNotFoundException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MfaMethodNotFoundExceptionBuilder
    implements
        Builder<MfaMethodNotFoundException, MfaMethodNotFoundExceptionBuilder> {
  _$MfaMethodNotFoundException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  MfaMethodNotFoundExceptionBuilder() {
    MfaMethodNotFoundException._init(this);
  }

  MfaMethodNotFoundExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MfaMethodNotFoundException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MfaMethodNotFoundException;
  }

  @override
  void update(void Function(MfaMethodNotFoundExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MfaMethodNotFoundException build() => _build();

  _$MfaMethodNotFoundException _build() {
    final _$result = _$v ??
        new _$MfaMethodNotFoundException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
