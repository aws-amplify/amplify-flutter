// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_access_key_last_used_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAccessKeyLastUsedResponse extends GetAccessKeyLastUsedResponse {
  @override
  final String? userName;
  @override
  final _i2.AccessKeyLastUsed? accessKeyLastUsed;

  factory _$GetAccessKeyLastUsedResponse(
          [void Function(GetAccessKeyLastUsedResponseBuilder)? updates]) =>
      (new GetAccessKeyLastUsedResponseBuilder()..update(updates))._build();

  _$GetAccessKeyLastUsedResponse._({this.userName, this.accessKeyLastUsed})
      : super._();

  @override
  GetAccessKeyLastUsedResponse rebuild(
          void Function(GetAccessKeyLastUsedResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAccessKeyLastUsedResponseBuilder toBuilder() =>
      new GetAccessKeyLastUsedResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAccessKeyLastUsedResponse &&
        userName == other.userName &&
        accessKeyLastUsed == other.accessKeyLastUsed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, accessKeyLastUsed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAccessKeyLastUsedResponseBuilder
    implements
        Builder<GetAccessKeyLastUsedResponse,
            GetAccessKeyLastUsedResponseBuilder> {
  _$GetAccessKeyLastUsedResponse? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  _i2.AccessKeyLastUsedBuilder? _accessKeyLastUsed;
  _i2.AccessKeyLastUsedBuilder get accessKeyLastUsed =>
      _$this._accessKeyLastUsed ??= new _i2.AccessKeyLastUsedBuilder();
  set accessKeyLastUsed(_i2.AccessKeyLastUsedBuilder? accessKeyLastUsed) =>
      _$this._accessKeyLastUsed = accessKeyLastUsed;

  GetAccessKeyLastUsedResponseBuilder() {
    GetAccessKeyLastUsedResponse._init(this);
  }

  GetAccessKeyLastUsedResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _accessKeyLastUsed = $v.accessKeyLastUsed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAccessKeyLastUsedResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAccessKeyLastUsedResponse;
  }

  @override
  void update(void Function(GetAccessKeyLastUsedResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAccessKeyLastUsedResponse build() => _build();

  _$GetAccessKeyLastUsedResponse _build() {
    _$GetAccessKeyLastUsedResponse _$result;
    try {
      _$result = _$v ??
          new _$GetAccessKeyLastUsedResponse._(
              userName: userName,
              accessKeyLastUsed: _accessKeyLastUsed?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accessKeyLastUsed';
        _accessKeyLastUsed?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAccessKeyLastUsedResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
