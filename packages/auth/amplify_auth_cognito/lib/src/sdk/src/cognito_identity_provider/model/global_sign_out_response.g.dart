// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.global_sign_out_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlobalSignOutResponse extends GlobalSignOutResponse {
  factory _$GlobalSignOutResponse(
          [void Function(GlobalSignOutResponseBuilder)? updates]) =>
      (new GlobalSignOutResponseBuilder()..update(updates))._build();

  _$GlobalSignOutResponse._() : super._();

  @override
  GlobalSignOutResponse rebuild(
          void Function(GlobalSignOutResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlobalSignOutResponseBuilder toBuilder() =>
      new GlobalSignOutResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlobalSignOutResponse;
  }

  @override
  int get hashCode {
    return 432977767;
  }
}

class GlobalSignOutResponseBuilder
    implements Builder<GlobalSignOutResponse, GlobalSignOutResponseBuilder> {
  _$GlobalSignOutResponse? _$v;

  GlobalSignOutResponseBuilder() {
    GlobalSignOutResponse._init(this);
  }

  @override
  void replace(GlobalSignOutResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlobalSignOutResponse;
  }

  @override
  void update(void Function(GlobalSignOutResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlobalSignOutResponse build() => _build();

  _$GlobalSignOutResponse _build() {
    final _$result = _$v ?? new _$GlobalSignOutResponse._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
