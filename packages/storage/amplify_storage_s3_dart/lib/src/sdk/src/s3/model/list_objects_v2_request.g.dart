// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.list_objects_v2_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListObjectsV2Request extends ListObjectsV2Request {
  @override
  final String bucket;
  @override
  final String? continuationToken;
  @override
  final String? delimiter;
  @override
  final _i3.EncodingType? encodingType;
  @override
  final String? expectedBucketOwner;
  @override
  final bool? fetchOwner;
  @override
  final int? maxKeys;
  @override
  final String? prefix;
  @override
  final _i4.RequestPayer? requestPayer;
  @override
  final String? startAfter;

  factory _$ListObjectsV2Request(
          [void Function(ListObjectsV2RequestBuilder)? updates]) =>
      (new ListObjectsV2RequestBuilder()..update(updates))._build();

  _$ListObjectsV2Request._(
      {required this.bucket,
      this.continuationToken,
      this.delimiter,
      this.encodingType,
      this.expectedBucketOwner,
      this.fetchOwner,
      this.maxKeys,
      this.prefix,
      this.requestPayer,
      this.startAfter})
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
        continuationToken == other.continuationToken &&
        delimiter == other.delimiter &&
        encodingType == other.encodingType &&
        expectedBucketOwner == other.expectedBucketOwner &&
        fetchOwner == other.fetchOwner &&
        maxKeys == other.maxKeys &&
        prefix == other.prefix &&
        requestPayer == other.requestPayer &&
        startAfter == other.startAfter;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, bucket.hashCode),
                                        continuationToken.hashCode),
                                    delimiter.hashCode),
                                encodingType.hashCode),
                            expectedBucketOwner.hashCode),
                        fetchOwner.hashCode),
                    maxKeys.hashCode),
                prefix.hashCode),
            requestPayer.hashCode),
        startAfter.hashCode));
  }
}

class ListObjectsV2RequestBuilder
    implements Builder<ListObjectsV2Request, ListObjectsV2RequestBuilder> {
  _$ListObjectsV2Request? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _continuationToken;
  String? get continuationToken => _$this._continuationToken;
  set continuationToken(String? continuationToken) =>
      _$this._continuationToken = continuationToken;

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

  bool? _fetchOwner;
  bool? get fetchOwner => _$this._fetchOwner;
  set fetchOwner(bool? fetchOwner) => _$this._fetchOwner = fetchOwner;

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

  String? _startAfter;
  String? get startAfter => _$this._startAfter;
  set startAfter(String? startAfter) => _$this._startAfter = startAfter;

  ListObjectsV2RequestBuilder() {
    ListObjectsV2Request._init(this);
  }

  ListObjectsV2RequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _continuationToken = $v.continuationToken;
      _delimiter = $v.delimiter;
      _encodingType = $v.encodingType;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _fetchOwner = $v.fetchOwner;
      _maxKeys = $v.maxKeys;
      _prefix = $v.prefix;
      _requestPayer = $v.requestPayer;
      _startAfter = $v.startAfter;
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
            continuationToken: continuationToken,
            delimiter: delimiter,
            encodingType: encodingType,
            expectedBucketOwner: expectedBucketOwner,
            fetchOwner: fetchOwner,
            maxKeys: maxKeys,
            prefix: prefix,
            requestPayer: requestPayer,
            startAfter: startAfter);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
