// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.software_token_mfa_not_found_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SoftwareTokenMfaNotFoundException
    extends SoftwareTokenMfaNotFoundException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$SoftwareTokenMfaNotFoundException(
          [void Function(SoftwareTokenMfaNotFoundExceptionBuilder)? updates]) =>
      (new SoftwareTokenMfaNotFoundExceptionBuilder()..update(updates))
          ._build();

  _$SoftwareTokenMfaNotFoundException._({this.message, this.headers})
      : super._();

  @override
  SoftwareTokenMfaNotFoundException rebuild(
          void Function(SoftwareTokenMfaNotFoundExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SoftwareTokenMfaNotFoundExceptionBuilder toBuilder() =>
      new SoftwareTokenMfaNotFoundExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SoftwareTokenMfaNotFoundException &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }
}

class SoftwareTokenMfaNotFoundExceptionBuilder
    implements
        Builder<SoftwareTokenMfaNotFoundException,
            SoftwareTokenMfaNotFoundExceptionBuilder> {
  _$SoftwareTokenMfaNotFoundException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  SoftwareTokenMfaNotFoundExceptionBuilder() {
    SoftwareTokenMfaNotFoundException._init(this);
  }

  SoftwareTokenMfaNotFoundExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SoftwareTokenMfaNotFoundException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SoftwareTokenMfaNotFoundException;
  }

  @override
  void update(
      void Function(SoftwareTokenMfaNotFoundExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SoftwareTokenMfaNotFoundException build() => _build();

  _$SoftwareTokenMfaNotFoundException _build() {
    final _$result = _$v ??
        new _$SoftwareTokenMfaNotFoundException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
