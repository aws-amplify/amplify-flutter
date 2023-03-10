// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.code_delivery_failure_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CodeDeliveryFailureException extends CodeDeliveryFailureException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$CodeDeliveryFailureException(
          [void Function(CodeDeliveryFailureExceptionBuilder)? updates]) =>
      (new CodeDeliveryFailureExceptionBuilder()..update(updates))._build();

  _$CodeDeliveryFailureException._({this.message, this.headers}) : super._();

  @override
  CodeDeliveryFailureException rebuild(
          void Function(CodeDeliveryFailureExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeDeliveryFailureExceptionBuilder toBuilder() =>
      new CodeDeliveryFailureExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeDeliveryFailureException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CodeDeliveryFailureExceptionBuilder
    implements
        Builder<CodeDeliveryFailureException,
            CodeDeliveryFailureExceptionBuilder> {
  _$CodeDeliveryFailureException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  CodeDeliveryFailureExceptionBuilder() {
    CodeDeliveryFailureException._init(this);
  }

  CodeDeliveryFailureExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeDeliveryFailureException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CodeDeliveryFailureException;
  }

  @override
  void update(void Function(CodeDeliveryFailureExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CodeDeliveryFailureException build() => _build();

  _$CodeDeliveryFailureException _build() {
    final _$result = _$v ??
        new _$CodeDeliveryFailureException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
