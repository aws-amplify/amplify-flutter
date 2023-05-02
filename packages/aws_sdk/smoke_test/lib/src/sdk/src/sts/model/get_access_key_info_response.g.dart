// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.get_access_key_info_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAccessKeyInfoResponse extends GetAccessKeyInfoResponse {
  @override
  final String? account;

  factory _$GetAccessKeyInfoResponse(
          [void Function(GetAccessKeyInfoResponseBuilder)? updates]) =>
      (new GetAccessKeyInfoResponseBuilder()..update(updates))._build();

  _$GetAccessKeyInfoResponse._({this.account}) : super._();

  @override
  GetAccessKeyInfoResponse rebuild(
          void Function(GetAccessKeyInfoResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAccessKeyInfoResponseBuilder toBuilder() =>
      new GetAccessKeyInfoResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAccessKeyInfoResponse && account == other.account;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAccessKeyInfoResponseBuilder
    implements
        Builder<GetAccessKeyInfoResponse, GetAccessKeyInfoResponseBuilder> {
  _$GetAccessKeyInfoResponse? _$v;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  GetAccessKeyInfoResponseBuilder() {
    GetAccessKeyInfoResponse._init(this);
  }

  GetAccessKeyInfoResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAccessKeyInfoResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAccessKeyInfoResponse;
  }

  @override
  void update(void Function(GetAccessKeyInfoResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAccessKeyInfoResponse build() => _build();

  _$GetAccessKeyInfoResponse _build() {
    final _$result = _$v ?? new _$GetAccessKeyInfoResponse._(account: account);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
