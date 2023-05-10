// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.get_access_key_info_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAccessKeyInfoRequest extends GetAccessKeyInfoRequest {
  @override
  final String accessKeyId;

  factory _$GetAccessKeyInfoRequest(
          [void Function(GetAccessKeyInfoRequestBuilder)? updates]) =>
      (new GetAccessKeyInfoRequestBuilder()..update(updates))._build();

  _$GetAccessKeyInfoRequest._({required this.accessKeyId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessKeyId, r'GetAccessKeyInfoRequest', 'accessKeyId');
  }

  @override
  GetAccessKeyInfoRequest rebuild(
          void Function(GetAccessKeyInfoRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAccessKeyInfoRequestBuilder toBuilder() =>
      new GetAccessKeyInfoRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAccessKeyInfoRequest && accessKeyId == other.accessKeyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessKeyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAccessKeyInfoRequestBuilder
    implements
        Builder<GetAccessKeyInfoRequest, GetAccessKeyInfoRequestBuilder> {
  _$GetAccessKeyInfoRequest? _$v;

  String? _accessKeyId;
  String? get accessKeyId => _$this._accessKeyId;
  set accessKeyId(String? accessKeyId) => _$this._accessKeyId = accessKeyId;

  GetAccessKeyInfoRequestBuilder() {
    GetAccessKeyInfoRequest._init(this);
  }

  GetAccessKeyInfoRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessKeyId = $v.accessKeyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAccessKeyInfoRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAccessKeyInfoRequest;
  }

  @override
  void update(void Function(GetAccessKeyInfoRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAccessKeyInfoRequest build() => _build();

  _$GetAccessKeyInfoRequest _build() {
    final _$result = _$v ??
        new _$GetAccessKeyInfoRequest._(
            accessKeyId: BuiltValueNullFieldError.checkNotNull(
                accessKeyId, r'GetAccessKeyInfoRequest', 'accessKeyId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
