// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.confirm_sign_up_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmSignUpResponse extends ConfirmSignUpResponse {
  factory _$ConfirmSignUpResponse(
          [void Function(ConfirmSignUpResponseBuilder)? updates]) =>
      (new ConfirmSignUpResponseBuilder()..update(updates))._build();

  _$ConfirmSignUpResponse._() : super._();

  @override
  ConfirmSignUpResponse rebuild(
          void Function(ConfirmSignUpResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmSignUpResponseBuilder toBuilder() =>
      new ConfirmSignUpResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmSignUpResponse;
  }

  @override
  int get hashCode {
    return 634256045;
  }
}

class ConfirmSignUpResponseBuilder
    implements Builder<ConfirmSignUpResponse, ConfirmSignUpResponseBuilder> {
  _$ConfirmSignUpResponse? _$v;

  ConfirmSignUpResponseBuilder() {
    ConfirmSignUpResponse._init(this);
  }

  @override
  void replace(ConfirmSignUpResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfirmSignUpResponse;
  }

  @override
  void update(void Function(ConfirmSignUpResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfirmSignUpResponse build() => _build();

  _$ConfirmSignUpResponse _build() {
    final _$result = _$v ?? new _$ConfirmSignUpResponse._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
