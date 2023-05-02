// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.list_objects_v2_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListObjectsV2Request extends ListObjectsV2Request {
  @override
  final String bucket;
  @override
  final String? delimiter;
  @override
  final _i3.EncodingType? encodingType;
  @override
  final int? maxKeys;
  @override
  final String? prefix;
  @override
  final String? continuationToken;
  @override
  final bool? fetchOwner;
  @override
  final String? startAfter;
  @override
  final _i4.RequestPayer? requestPayer;
  @override
  final String? expectedBucketOwner;

  factory _$ListObjectsV2Request(
          [void Function(ListObjectsV2RequestBuilder)? updates]) =>
      (new ListObjectsV2RequestBuilder()..update(updates))._build();

  _$ListObjectsV2Request._(
      {required this.bucket,
      this.delimiter,
      this.encodingType,
      this.maxKeys,
      this.prefix,
      this.continuationToken,
      this.fetchOwner,
      this.startAfter,
      this.requestPayer,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'ListObjectsV2Request', 'bucket');
  }

  @override
  ListObjectsV2Request rebuild(
          void Function(ListObjectsV2RequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListObjectsV2RequestBuilder toBuilder() =>
      new ListObjectsV2RequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListObjectsV2Request &&
        bucket == other.bucket &&
        delimiter == other.delimiter &&
        encodingType == other.encodingType &&
        maxKeys == other.maxKeys &&
        prefix == other.prefix &&
        continuationToken == other.continuationToken &&
        fetchOwner == other.fetchOwner &&
        startAfter == other.startAfter &&
        requestPayer == other.requestPayer &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, delimiter.hashCode);
    _$hash = $jc(_$hash, encodingType.hashCode);
    _$hash = $jc(_$hash, maxKeys.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, continuationToken.hashCode);
    _$hash = $jc(_$hash, fetchOwner.hashCode);
    _$hash = $jc(_$hash, startAfter.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListObjectsV2RequestBuilder
    implements Builder<ListObjectsV2Request, ListObjectsV2RequestBuilder> {
  _$ListObjectsV2Request? _$v;

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

  int? _maxKeys;
  int? get maxKeys => _$this._maxKeys;
  set maxKeys(int? maxKeys) => _$this._maxKeys = maxKeys;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  String? _continuationToken;
  String? get continuationToken => _$this._continuationToken;
  set continuationToken(String? continuationToken) =>
      _$this._continuationToken = continuationToken;

  bool? _fetchOwner;
  bool? get fetchOwner => _$this._fetchOwner;
  set fetchOwner(bool? fetchOwner) => _$this._fetchOwner = fetchOwner;

  String? _startAfter;
  String? get startAfter => _$this._startAfter;
  set startAfter(String? startAfter) => _$this._startAfter = startAfter;

  _i4.RequestPayer? _requestPayer;
  _i4.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i4.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  ListObjectsV2RequestBuilder() {
    ListObjectsV2Request._init(this);
  }

  ListObjectsV2RequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _delimiter = $v.delimiter;
      _encodingType = $v.encodingType;
      _maxKeys = $v.maxKeys;
      _prefix = $v.prefix;
      _continuationToken = $v.continuationToken;
      _fetchOwner = $v.fetchOwner;
      _startAfter = $v.startAfter;
      _requestPayer = $v.requestPayer;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListObjectsV2Request other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListObjectsV2Request;
  }

  @override
  void update(void Function(ListObjectsV2RequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListObjectsV2Request build() => _build();

  _$ListObjectsV2Request _build() {
    final _$result = _$v ??
        new _$ListObjectsV2Request._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'ListObjectsV2Request', 'bucket'),
            delimiter: delimiter,
            encodingType: encodingType,
            maxKeys: maxKeys,
            prefix: prefix,
            continuationToken: continuationToken,
            fetchOwner: fetchOwner,
            startAfter: startAfter,
            requestPayer: requestPayer,
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$ListObjectsV2RequestPayload extends ListObjectsV2RequestPayload {
  factory _$ListObjectsV2RequestPayload(
          [void Function(ListObjectsV2RequestPayloadBuilder)? updates]) =>
      (new ListObjectsV2RequestPayloadBuilder()..update(updates))._build();

  _$ListObjectsV2RequestPayload._() : super._();

  @override
  ListObjectsV2RequestPayload rebuild(
          void Function(ListObjectsV2RequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListObjectsV2RequestPayloadBuilder toBuilder() =>
      new ListObjectsV2RequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListObjectsV2RequestPayload;
  }

  @override
  int get hashCode {
    return 813418408;
  }
}

class ListObjectsV2RequestPayloadBuilder
    implements
        Builder<ListObjectsV2RequestPayload,
            ListObjectsV2RequestPayloadBuilder> {
  _$ListObjectsV2RequestPayload? _$v;

  ListObjectsV2RequestPayloadBuilder() {
    ListObjectsV2RequestPayload._init(this);
  }

  @override
  void replace(ListObjectsV2RequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListObjectsV2RequestPayload;
  }

  @override
  void update(void Function(ListObjectsV2RequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListObjectsV2RequestPayload build() => _build();

  _$ListObjectsV2RequestPayload _build() {
    final _$result = _$v ?? new _$ListObjectsV2RequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
