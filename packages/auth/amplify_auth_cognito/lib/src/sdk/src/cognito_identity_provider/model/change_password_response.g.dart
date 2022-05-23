// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.change_password_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangePasswordResponse extends ChangePasswordResponse {
  factory _$ChangePasswordResponse(
          [void Function(ChangePasswordResponseBuilder)? updates]) =>
      (new ChangePasswordResponseBuilder()..update(updates))._build();

  _$ChangePasswordResponse._() : super._();

  @override
  ChangePasswordResponse rebuild(
          void Function(ChangePasswordResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangePasswordResponseBuilder toBuilder() =>
      new ChangePasswordResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangePasswordResponse;
  }

  @override
  int get hashCode {
    return 17369736;
  }
}

class ChangePasswordResponseBuilder
    implements Builder<ChangePasswordResponse, ChangePasswordResponseBuilder> {
  _$ChangePasswordResponse? _$v;

  ChangePasswordResponseBuilder() {
    ChangePasswordResponse._init(this);
  }

  @override
  void replace(ChangePasswordResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangePasswordResponse;
  }

  @override
  void update(void Function(ChangePasswordResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangePasswordResponse build() => _build();

  _$ChangePasswordResponse _build() {
    final _$result = _$v ?? new _$ChangePasswordResponse._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
