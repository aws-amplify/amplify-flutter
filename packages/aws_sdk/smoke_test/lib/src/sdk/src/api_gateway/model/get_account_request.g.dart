// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_account_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAccountRequest extends GetAccountRequest {
  factory _$GetAccountRequest(
          [void Function(GetAccountRequestBuilder)? updates]) =>
      (new GetAccountRequestBuilder()..update(updates))._build();

  _$GetAccountRequest._() : super._();

  @override
  GetAccountRequest rebuild(void Function(GetAccountRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAccountRequestBuilder toBuilder() =>
      new GetAccountRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAccountRequest;
  }

  @override
  int get hashCode {
    return 774622439;
  }
}

class GetAccountRequestBuilder
    implements Builder<GetAccountRequest, GetAccountRequestBuilder> {
  _$GetAccountRequest? _$v;

  GetAccountRequestBuilder() {
    GetAccountRequest._init(this);
  }

  @override
  void replace(GetAccountRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAccountRequest;
  }

  @override
  void update(void Function(GetAccountRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAccountRequest build() => _build();

  _$GetAccountRequest _build() {
    final _$result = _$v ?? new _$GetAccountRequest._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
