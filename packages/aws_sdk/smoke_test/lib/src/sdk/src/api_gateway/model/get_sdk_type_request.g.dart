// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_sdk_type_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSdkTypeRequest extends GetSdkTypeRequest {
  @override
  final String id;

  factory _$GetSdkTypeRequest(
          [void Function(GetSdkTypeRequestBuilder)? updates]) =>
      (new GetSdkTypeRequestBuilder()..update(updates))._build();

  _$GetSdkTypeRequest._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GetSdkTypeRequest', 'id');
  }

  @override
  GetSdkTypeRequest rebuild(void Function(GetSdkTypeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSdkTypeRequestBuilder toBuilder() =>
      new GetSdkTypeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSdkTypeRequest && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetSdkTypeRequestBuilder
    implements Builder<GetSdkTypeRequest, GetSdkTypeRequestBuilder> {
  _$GetSdkTypeRequest? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GetSdkTypeRequestBuilder() {
    GetSdkTypeRequest._init(this);
  }

  GetSdkTypeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSdkTypeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSdkTypeRequest;
  }

  @override
  void update(void Function(GetSdkTypeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSdkTypeRequest build() => _build();

  _$GetSdkTypeRequest _build() {
    final _$result = _$v ??
        new _$GetSdkTypeRequest._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GetSdkTypeRequest', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GetSdkTypeRequestPayload extends GetSdkTypeRequestPayload {
  factory _$GetSdkTypeRequestPayload(
          [void Function(GetSdkTypeRequestPayloadBuilder)? updates]) =>
      (new GetSdkTypeRequestPayloadBuilder()..update(updates))._build();

  _$GetSdkTypeRequestPayload._() : super._();

  @override
  GetSdkTypeRequestPayload rebuild(
          void Function(GetSdkTypeRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSdkTypeRequestPayloadBuilder toBuilder() =>
      new GetSdkTypeRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSdkTypeRequestPayload;
  }

  @override
  int get hashCode {
    return 540175074;
  }
}

class GetSdkTypeRequestPayloadBuilder
    implements
        Builder<GetSdkTypeRequestPayload, GetSdkTypeRequestPayloadBuilder> {
  _$GetSdkTypeRequestPayload? _$v;

  GetSdkTypeRequestPayloadBuilder() {
    GetSdkTypeRequestPayload._init(this);
  }

  @override
  void replace(GetSdkTypeRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSdkTypeRequestPayload;
  }

  @override
  void update(void Function(GetSdkTypeRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSdkTypeRequestPayload build() => _build();

  _$GetSdkTypeRequestPayload _build() {
    final _$result = _$v ?? new _$GetSdkTypeRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
