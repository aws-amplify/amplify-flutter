// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.confirm_sign_up_response;

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
