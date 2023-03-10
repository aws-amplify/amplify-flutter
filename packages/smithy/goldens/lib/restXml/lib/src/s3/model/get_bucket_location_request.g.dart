// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.s3.model.get_bucket_location_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketLocationRequest extends GetBucketLocationRequest {
  @override
  final String bucket;

  factory _$GetBucketLocationRequest(
          [void Function(GetBucketLocationRequestBuilder)? updates]) =>
      (new GetBucketLocationRequestBuilder()..update(updates))._build();

  _$GetBucketLocationRequest._({required this.bucket}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketLocationRequest', 'bucket');
  }

  @override
  GetBucketLocationRequest rebuild(
          void Function(GetBucketLocationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketLocationRequestBuilder toBuilder() =>
      new GetBucketLocationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketLocationRequest && bucket == other.bucket;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketLocationRequestBuilder
    implements
        Builder<GetBucketLocationRequest, GetBucketLocationRequestBuilder> {
  _$GetBucketLocationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  GetBucketLocationRequestBuilder() {
    GetBucketLocationRequest._init(this);
  }

  GetBucketLocationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketLocationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketLocationRequest;
  }

  @override
  void update(void Function(GetBucketLocationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketLocationRequest build() => _build();

  _$GetBucketLocationRequest _build() {
    final _$result = _$v ??
        new _$GetBucketLocationRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketLocationRequest', 'bucket'));
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketLocationRequestPayload
    extends GetBucketLocationRequestPayload {
  factory _$GetBucketLocationRequestPayload(
          [void Function(GetBucketLocationRequestPayloadBuilder)? updates]) =>
      (new GetBucketLocationRequestPayloadBuilder()..update(updates))._build();

  _$GetBucketLocationRequestPayload._() : super._();

  @override
  GetBucketLocationRequestPayload rebuild(
          void Function(GetBucketLocationRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketLocationRequestPayloadBuilder toBuilder() =>
      new GetBucketLocationRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketLocationRequestPayload;
  }

  @override
  int get hashCode {
    return 1040861081;
  }
}

class GetBucketLocationRequestPayloadBuilder
    implements
        Builder<GetBucketLocationRequestPayload,
            GetBucketLocationRequestPayloadBuilder> {
  _$GetBucketLocationRequestPayload? _$v;

  GetBucketLocationRequestPayloadBuilder() {
    GetBucketLocationRequestPayload._init(this);
  }

  @override
  void replace(GetBucketLocationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketLocationRequestPayload;
  }

  @override
  void update(void Function(GetBucketLocationRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketLocationRequestPayload build() => _build();

  _$GetBucketLocationRequestPayload _build() {
    final _$result = _$v ?? new _$GetBucketLocationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
