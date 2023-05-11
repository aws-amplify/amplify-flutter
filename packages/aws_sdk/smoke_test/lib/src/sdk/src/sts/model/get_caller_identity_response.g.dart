// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.get_caller_identity_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCallerIdentityResponse extends GetCallerIdentityResponse {
  @override
  final String? userId;
  @override
  final String? account;
  @override
  final String? arn;

  factory _$GetCallerIdentityResponse(
          [void Function(GetCallerIdentityResponseBuilder)? updates]) =>
      (new GetCallerIdentityResponseBuilder()..update(updates))._build();

  _$GetCallerIdentityResponse._({this.userId, this.account, this.arn})
      : super._();

  @override
  GetCallerIdentityResponse rebuild(
          void Function(GetCallerIdentityResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCallerIdentityResponseBuilder toBuilder() =>
      new GetCallerIdentityResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCallerIdentityResponse &&
        userId == other.userId &&
        account == other.account &&
        arn == other.arn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetCallerIdentityResponseBuilder
    implements
        Builder<GetCallerIdentityResponse, GetCallerIdentityResponseBuilder> {
  _$GetCallerIdentityResponse? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  GetCallerIdentityResponseBuilder() {
    GetCallerIdentityResponse._init(this);
  }

  GetCallerIdentityResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _account = $v.account;
      _arn = $v.arn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCallerIdentityResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCallerIdentityResponse;
  }

  @override
  void update(void Function(GetCallerIdentityResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCallerIdentityResponse build() => _build();

  _$GetCallerIdentityResponse _build() {
    final _$result = _$v ??
        new _$GetCallerIdentityResponse._(
            userId: userId, account: account, arn: arn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
