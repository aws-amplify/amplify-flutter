// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_account_alias_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteAccountAliasRequest extends DeleteAccountAliasRequest {
  @override
  final String accountAlias;

  factory _$DeleteAccountAliasRequest(
          [void Function(DeleteAccountAliasRequestBuilder)? updates]) =>
      (new DeleteAccountAliasRequestBuilder()..update(updates))._build();

  _$DeleteAccountAliasRequest._({required this.accountAlias}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountAlias, r'DeleteAccountAliasRequest', 'accountAlias');
  }

  @override
  DeleteAccountAliasRequest rebuild(
          void Function(DeleteAccountAliasRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteAccountAliasRequestBuilder toBuilder() =>
      new DeleteAccountAliasRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteAccountAliasRequest &&
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

class DeleteAccountAliasRequestBuilder
    implements
        Builder<DeleteAccountAliasRequest, DeleteAccountAliasRequestBuilder> {
  _$DeleteAccountAliasRequest? _$v;

  String? _accountAlias;
  String? get accountAlias => _$this._accountAlias;
  set accountAlias(String? accountAlias) => _$this._accountAlias = accountAlias;

  DeleteAccountAliasRequestBuilder() {
    DeleteAccountAliasRequest._init(this);
  }

  DeleteAccountAliasRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountAlias = $v.accountAlias;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteAccountAliasRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteAccountAliasRequest;
  }

  @override
  void update(void Function(DeleteAccountAliasRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteAccountAliasRequest build() => _build();

  _$DeleteAccountAliasRequest _build() {
    final _$result = _$v ??
        new _$DeleteAccountAliasRequest._(
            accountAlias: BuiltValueNullFieldError.checkNotNull(
                accountAlias, r'DeleteAccountAliasRequest', 'accountAlias'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
