// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.confirm_forgot_password_response;

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
