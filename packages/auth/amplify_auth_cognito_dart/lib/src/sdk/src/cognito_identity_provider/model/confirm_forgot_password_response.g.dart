// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.confirm_forgot_password_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmForgotPasswordResponse extends ConfirmForgotPasswordResponse {
  factory _$ConfirmForgotPasswordResponse(
          [void Function(ConfirmForgotPasswordResponseBuilder)? updates]) =>
      (new ConfirmForgotPasswordResponseBuilder()..update(updates))._build();

  _$ConfirmForgotPasswordResponse._() : super._();

  @override
  ConfirmForgotPasswordResponse rebuild(
          void Function(ConfirmForgotPasswordResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmForgotPasswordResponseBuilder toBuilder() =>
      new ConfirmForgotPasswordResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmForgotPasswordResponse;
  }

  @override
  int get hashCode {
    return 900389362;
  }
}

class ConfirmForgotPasswordResponseBuilder
    implements
        Builder<ConfirmForgotPasswordResponse,
            ConfirmForgotPasswordResponseBuilder> {
  _$ConfirmForgotPasswordResponse? _$v;

  ConfirmForgotPasswordResponseBuilder() {
    ConfirmForgotPasswordResponse._init(this);
  }

  @override
  void replace(ConfirmForgotPasswordResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfirmForgotPasswordResponse;
  }

  @override
  void update(void Function(ConfirmForgotPasswordResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfirmForgotPasswordResponse build() => _build();

  _$ConfirmForgotPasswordResponse _build() {
    final _$result = _$v ?? new _$ConfirmForgotPasswordResponse._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
