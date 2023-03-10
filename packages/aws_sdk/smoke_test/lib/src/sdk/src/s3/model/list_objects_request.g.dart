// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_objects_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListObjectsRequest extends ListObjectsRequest {
  @override
  final String bucket;
  @override
  final String? delimiter;
  @override
  final _i3.EncodingType? encodingType;
  @override
  final String? expectedBucketOwner;
  @override
  final String? marker;
  @override
  final int? maxKeys;
  @override
  final String? prefix;
  @override
  final _i4.RequestPayer? requestPayer;

  factory _$ListObjectsRequest(
          [void Function(ListObjectsRequestBuilder)? updates]) =>
      (new ListObjectsRequestBuilder()..update(updates))._build();

  _$ListObjectsRequest._(
      {required this.bucket,
      this.delimiter,
      this.encodingType,
      this.expectedBucketOwner,
      this.marker,
      this.maxKeys,
      this.prefix,
      this.requestPayer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'ListObjectsRequest', 'bucket');
  }

  @override
  ListObjectsRequest rebuild(
          void Function(ListObjectsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListObjectsRequestBuilder toBuilder() =>
      new ListObjectsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListObjectsRequest &&
        bucket == other.bucket &&
        delimiter == other.delimiter &&
        encodingType == other.encodingType &&
        expectedBucketOwner == other.expectedBucketOwner &&
        marker == other.marker &&
        maxKeys == other.maxKeys &&
        prefix == other.prefix &&
        requestPayer == other.requestPayer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, delimiter.hashCode);
    _$hash = $jc(_$hash, encodingType.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxKeys.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListObjectsRequestBuilder
    implements Builder<ListObjectsRequest, ListObjectsRequestBuilder> {
  _$ListObjectsRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _delimiter;
  String? get delimiter => _$this._delimiter;
  set delimiter(String? delimiter) => _$this._delimiter = delimiter;

  _i3.EncodingType? _encodingType;
  _i3.EncodingType? get encodingType => _$this._encodingType;
  set encodingType(_i3.EncodingType? encodingType) =>
      _$this._encodingType = encodingType;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxKeys;
  int? get maxKeys => _$this._maxKeys;
  set maxKeys(int? maxKeys) => _$this._maxKeys = maxKeys;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  _i4.RequestPayer? _requestPayer;
  _i4.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i4.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  ListObjectsRequestBuilder() {
    ListObjectsRequest._init(this);
  }

  ListObjectsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _delimiter = $v.delimiter;
      _encodingType = $v.encodingType;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _marker = $v.marker;
      _maxKeys = $v.maxKeys;
      _prefix = $v.prefix;
      _requestPayer = $v.requestPayer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListObjectsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListObjectsRequest;
  }

  @override
  void update(void Function(ListObjectsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListObjectsRequest build() => _build();

  _$ListObjectsRequest _build() {
    final _$result = _$v ??
        new _$ListObjectsRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'ListObjectsRequest', 'bucket'),
            delimiter: delimiter,
            encodingType: encodingType,
            expectedBucketOwner: expectedBucketOwner,
            marker: marker,
            maxKeys: maxKeys,
            prefix: prefix,
            requestPayer: requestPayer);
    replace(_$result);
    return _$result;
  }
}

class _$ListObjectsRequestPayload extends ListObjectsRequestPayload {
  factory _$ListObjectsRequestPayload(
          [void Function(ListObjectsRequestPayloadBuilder)? updates]) =>
      (new ListObjectsRequestPayloadBuilder()..update(updates))._build();

  _$ListObjectsRequestPayload._() : super._();

  @override
  ListObjectsRequestPayload rebuild(
          void Function(ListObjectsRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListObjectsRequestPayloadBuilder toBuilder() =>
      new ListObjectsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListObjectsRequestPayload;
  }

  @override
  int get hashCode {
    return 650098577;
  }
}

class ListObjectsRequestPayloadBuilder
    implements
        Builder<ListObjectsRequestPayload, ListObjectsRequestPayloadBuilder> {
  _$ListObjectsRequestPayload? _$v;

  ListObjectsRequestPayloadBuilder() {
    ListObjectsRequestPayload._init(this);
  }

  @override
  void replace(ListObjectsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListObjectsRequestPayload;
  }

  @override
  void update(void Function(ListObjectsRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListObjectsRequestPayload build() => _build();

  _$ListObjectsRequestPayload _build() {
    final _$result = _$v ?? new _$ListObjectsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
