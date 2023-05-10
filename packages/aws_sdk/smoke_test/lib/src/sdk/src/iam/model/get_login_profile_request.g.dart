// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_login_profile_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLoginProfileRequest extends GetLoginProfileRequest {
  @override
  final String userName;

  factory _$GetLoginProfileRequest(
          [void Function(GetLoginProfileRequestBuilder)? updates]) =>
      (new GetLoginProfileRequestBuilder()..update(updates))._build();

  _$GetLoginProfileRequest._({required this.userName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'GetLoginProfileRequest', 'userName');
  }

  @override
  GetLoginProfileRequest rebuild(
          void Function(GetLoginProfileRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLoginProfileRequestBuilder toBuilder() =>
      new GetLoginProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLoginProfileRequest && userName == other.userName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetLoginProfileRequestBuilder
    implements Builder<GetLoginProfileRequest, GetLoginProfileRequestBuilder> {
  _$GetLoginProfileRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  GetLoginProfileRequestBuilder() {
    GetLoginProfileRequest._init(this);
  }

  GetLoginProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLoginProfileRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetLoginProfileRequest;
  }

  @override
  void update(void Function(GetLoginProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetLoginProfileRequest build() => _build();

  _$GetLoginProfileRequest _build() {
    final _$result = _$v ??
        new _$GetLoginProfileRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'GetLoginProfileRequest', 'userName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
