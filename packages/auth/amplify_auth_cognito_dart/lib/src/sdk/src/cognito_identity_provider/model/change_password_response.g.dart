// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.change_password_response;

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
