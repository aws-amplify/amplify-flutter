// GENERATED CODE - DO NOT MODIFY BY HAND

part of custom_v2.s3.model.get_object_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectRequest extends GetObjectRequest {
  @override
  final String bucket;
  @override
  final String key;
  @override
  final String? range;

  factory _$GetObjectRequest(
          [void Function(GetObjectRequestBuilder)? updates]) =>
      (new GetObjectRequestBuilder()..update(updates))._build();

  _$GetObjectRequest._({required this.bucket, required this.key, this.range})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetObjectRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(key, r'GetObjectRequest', 'key');
  }

  @override
  GetObjectRequest rebuild(void Function(GetObjectRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectRequestBuilder toBuilder() =>
      new GetObjectRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectRequest &&
        bucket == other.bucket &&
        key == other.key &&
        range == other.range;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, bucket.hashCode), key.hashCode), range.hashCode));
  }
}

class GetObjectRequestBuilder
    implements Builder<GetObjectRequest, GetObjectRequestBuilder> {
  _$GetObjectRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _range;
  String? get range => _$this._range;
  set range(String? range) => _$this._range = range;

  GetObjectRequestBuilder() {
    GetObjectRequest._init(this);
  }

  GetObjectRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _key = $v.key;
      _range = $v.range;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectRequest;
  }

  @override
  void update(void Function(GetObjectRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectRequest build() => _build();

  _$GetObjectRequest _build() {
    final _$result = _$v ??
        new _$GetObjectRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetObjectRequest', 'bucket'),
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'GetObjectRequest', 'key'),
            range: range);
    replace(_$result);
    return _$result;
  }
}

class _$GetObjectRequestPayload extends GetObjectRequestPayload {
  factory _$GetObjectRequestPayload(
          [void Function(GetObjectRequestPayloadBuilder)? updates]) =>
      (new GetObjectRequestPayloadBuilder()..update(updates))._build();

  _$GetObjectRequestPayload._() : super._();

  @override
  GetObjectRequestPayload rebuild(
          void Function(GetObjectRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectRequestPayloadBuilder toBuilder() =>
      new GetObjectRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectRequestPayload;
  }

  @override
  int get hashCode {
    return 267380927;
  }
}

class GetObjectRequestPayloadBuilder
    implements
        Builder<GetObjectRequestPayload, GetObjectRequestPayloadBuilder> {
  _$GetObjectRequestPayload? _$v;

  GetObjectRequestPayloadBuilder() {
    GetObjectRequestPayload._init(this);
  }

  @override
  void replace(GetObjectRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectRequestPayload;
  }

  @override
  void update(void Function(GetObjectRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectRequestPayload build() => _build();

  _$GetObjectRequestPayload _build() {
    final _$result = _$v ?? new _$GetObjectRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
