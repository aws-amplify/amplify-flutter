// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.global_sign_out_response;

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
