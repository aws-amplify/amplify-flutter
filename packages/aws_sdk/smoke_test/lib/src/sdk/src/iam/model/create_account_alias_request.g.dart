// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_account_alias_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateAccountAliasRequest extends CreateAccountAliasRequest {
  @override
  final String accountAlias;

  factory _$CreateAccountAliasRequest(
          [void Function(CreateAccountAliasRequestBuilder)? updates]) =>
      (new CreateAccountAliasRequestBuilder()..update(updates))._build();

  _$CreateAccountAliasRequest._({required this.accountAlias}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountAlias, r'CreateAccountAliasRequest', 'accountAlias');
  }

  @override
  CreateAccountAliasRequest rebuild(
          void Function(CreateAccountAliasRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateAccountAliasRequestBuilder toBuilder() =>
      new CreateAccountAliasRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAccountAliasRequest &&
        accountAlias == other.accountAlias;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountAlias.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateAccountAliasRequestBuilder
    implements
        Builder<CreateAccountAliasRequest, CreateAccountAliasRequestBuilder> {
  _$CreateAccountAliasRequest? _$v;

  String? _accountAlias;
  String? get accountAlias => _$this._accountAlias;
  set accountAlias(String? accountAlias) => _$this._accountAlias = accountAlias;

  CreateAccountAliasRequestBuilder() {
    CreateAccountAliasRequest._init(this);
  }

  CreateAccountAliasRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountAlias = $v.accountAlias;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAccountAliasRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateAccountAliasRequest;
  }

  @override
  void update(void Function(CreateAccountAliasRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAccountAliasRequest build() => _build();

  _$CreateAccountAliasRequest _build() {
    final _$result = _$v ??
        new _$CreateAccountAliasRequest._(
            accountAlias: BuiltValueNullFieldError.checkNotNull(
                accountAlias, r'CreateAccountAliasRequest', 'accountAlias'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
