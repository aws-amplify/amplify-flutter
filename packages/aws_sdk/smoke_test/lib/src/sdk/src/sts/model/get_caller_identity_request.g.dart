// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.get_caller_identity_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCallerIdentityRequest extends GetCallerIdentityRequest {
  factory _$GetCallerIdentityRequest(
          [void Function(GetCallerIdentityRequestBuilder)? updates]) =>
      (new GetCallerIdentityRequestBuilder()..update(updates))._build();

  _$GetCallerIdentityRequest._() : super._();

  @override
  GetCallerIdentityRequest rebuild(
          void Function(GetCallerIdentityRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCallerIdentityRequestBuilder toBuilder() =>
      new GetCallerIdentityRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCallerIdentityRequest;
  }

  @override
  int get hashCode {
    return 390801905;
  }
}

class GetCallerIdentityRequestBuilder
    implements
        Builder<GetCallerIdentityRequest, GetCallerIdentityRequestBuilder> {
  _$GetCallerIdentityRequest? _$v;

  GetCallerIdentityRequestBuilder() {
    GetCallerIdentityRequest._init(this);
  }

  @override
  void replace(GetCallerIdentityRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCallerIdentityRequest;
  }

  @override
  void update(void Function(GetCallerIdentityRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCallerIdentityRequest build() => _build();

  _$GetCallerIdentityRequest _build() {
    final _$result = _$v ?? new _$GetCallerIdentityRequest._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
