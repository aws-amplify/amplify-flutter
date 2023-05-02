// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_access_key_last_used_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAccessKeyLastUsedRequest extends GetAccessKeyLastUsedRequest {
  @override
  final String accessKeyId;

  factory _$GetAccessKeyLastUsedRequest(
          [void Function(GetAccessKeyLastUsedRequestBuilder)? updates]) =>
      (new GetAccessKeyLastUsedRequestBuilder()..update(updates))._build();

  _$GetAccessKeyLastUsedRequest._({required this.accessKeyId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessKeyId, r'GetAccessKeyLastUsedRequest', 'accessKeyId');
  }

  @override
  GetAccessKeyLastUsedRequest rebuild(
          void Function(GetAccessKeyLastUsedRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAccessKeyLastUsedRequestBuilder toBuilder() =>
      new GetAccessKeyLastUsedRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAccessKeyLastUsedRequest &&
        accessKeyId == other.accessKeyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessKeyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAccessKeyLastUsedRequestBuilder
    implements
        Builder<GetAccessKeyLastUsedRequest,
            GetAccessKeyLastUsedRequestBuilder> {
  _$GetAccessKeyLastUsedRequest? _$v;

  String? _accessKeyId;
  String? get accessKeyId => _$this._accessKeyId;
  set accessKeyId(String? accessKeyId) => _$this._accessKeyId = accessKeyId;

  GetAccessKeyLastUsedRequestBuilder() {
    GetAccessKeyLastUsedRequest._init(this);
  }

  GetAccessKeyLastUsedRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessKeyId = $v.accessKeyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAccessKeyLastUsedRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAccessKeyLastUsedRequest;
  }

  @override
  void update(void Function(GetAccessKeyLastUsedRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAccessKeyLastUsedRequest build() => _build();

  _$GetAccessKeyLastUsedRequest _build() {
    final _$result = _$v ??
        new _$GetAccessKeyLastUsedRequest._(
            accessKeyId: BuiltValueNullFieldError.checkNotNull(
                accessKeyId, r'GetAccessKeyLastUsedRequest', 'accessKeyId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
