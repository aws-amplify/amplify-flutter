// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.verify_user_attribute_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyUserAttributeResponse extends VerifyUserAttributeResponse {
  factory _$VerifyUserAttributeResponse(
          [void Function(VerifyUserAttributeResponseBuilder)? updates]) =>
      (new VerifyUserAttributeResponseBuilder()..update(updates))._build();

  _$VerifyUserAttributeResponse._() : super._();

  @override
  VerifyUserAttributeResponse rebuild(
          void Function(VerifyUserAttributeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyUserAttributeResponseBuilder toBuilder() =>
      new VerifyUserAttributeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyUserAttributeResponse;
  }

  @override
  int get hashCode {
    return 986018785;
  }
}

class VerifyUserAttributeResponseBuilder
    implements
        Builder<VerifyUserAttributeResponse,
            VerifyUserAttributeResponseBuilder> {
  _$VerifyUserAttributeResponse? _$v;

  VerifyUserAttributeResponseBuilder() {
    VerifyUserAttributeResponse._init(this);
  }

  @override
  void replace(VerifyUserAttributeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifyUserAttributeResponse;
  }

  @override
  void update(void Function(VerifyUserAttributeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyUserAttributeResponse build() => _build();

  _$VerifyUserAttributeResponse _build() {
    final _$result = _$v ?? new _$VerifyUserAttributeResponse._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
