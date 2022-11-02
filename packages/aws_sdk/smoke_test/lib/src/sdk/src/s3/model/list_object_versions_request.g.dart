// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_object_versions_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListObjectVersionsRequest extends ListObjectVersionsRequest {
  @override
  final String bucket;
  @override
  final String? delimiter;
  @override
  final _i3.EncodingType? encodingType;
  @override
  final String? expectedBucketOwner;
  @override
  final String? keyMarker;
  @override
  final int? maxKeys;
  @override
  final String? prefix;
  @override
  final String? versionIdMarker;

  factory _$ListObjectVersionsRequest(
          [void Function(ListObjectVersionsRequestBuilder)? updates]) =>
      (new ListObjectVersionsRequestBuilder()..update(updates))._build();

  _$ListObjectVersionsRequest._(
      {required this.bucket,
      this.delimiter,
      this.encodingType,
      this.expectedBucketOwner,
      this.keyMarker,
      this.maxKeys,
      this.prefix,
      this.versionIdMarker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'ListObjectVersionsRequest', 'bucket');
  }

  @override
  ListObjectVersionsRequest rebuild(
          void Function(ListObjectVersionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListObjectVersionsRequestBuilder toBuilder() =>
      new ListObjectVersionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListObjectVersionsRequest &&
        bucket == other.bucket &&
        delimiter == other.delimiter &&
        encodingType == other.encodingType &&
        expectedBucketOwner == other.expectedBucketOwner &&
        keyMarker == other.keyMarker &&
        maxKeys == other.maxKeys &&
        prefix == other.prefix &&
        versionIdMarker == other.versionIdMarker;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, bucket.hashCode), delimiter.hashCode),
                            encodingType.hashCode),
                        expectedBucketOwner.hashCode),
                    keyMarker.hashCode),
                maxKeys.hashCode),
            prefix.hashCode),
        versionIdMarker.hashCode));
  }
}

class ListObjectVersionsRequestBuilder
    implements
        Builder<ListObjectVersionsRequest, ListObjectVersionsRequestBuilder> {
  _$ListObjectVersionsRequest? _$v;

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

  String? _keyMarker;
  String? get keyMarker => _$this._keyMarker;
  set keyMarker(String? keyMarker) => _$this._keyMarker = keyMarker;

  int? _maxKeys;
  int? get maxKeys => _$this._maxKeys;
  set maxKeys(int? maxKeys) => _$this._maxKeys = maxKeys;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  String? _versionIdMarker;
  String? get versionIdMarker => _$this._versionIdMarker;
  set versionIdMarker(String? versionIdMarker) =>
      _$this._versionIdMarker = versionIdMarker;

  ListObjectVersionsRequestBuilder() {
    ListObjectVersionsRequest._init(this);
  }

  ListObjectVersionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _delimiter = $v.delimiter;
      _encodingType = $v.encodingType;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _keyMarker = $v.keyMarker;
      _maxKeys = $v.maxKeys;
      _prefix = $v.prefix;
      _versionIdMarker = $v.versionIdMarker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListObjectVersionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListObjectVersionsRequest;
  }

  @override
  void update(void Function(ListObjectVersionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListObjectVersionsRequest build() => _build();

  _$ListObjectVersionsRequest _build() {
    final _$result = _$v ??
        new _$ListObjectVersionsRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'ListObjectVersionsRequest', 'bucket'),
            delimiter: delimiter,
            encodingType: encodingType,
            expectedBucketOwner: expectedBucketOwner,
            keyMarker: keyMarker,
            maxKeys: maxKeys,
            prefix: prefix,
            versionIdMarker: versionIdMarker);
    replace(_$result);
    return _$result;
  }
}

class _$ListObjectVersionsRequestPayload
    extends ListObjectVersionsRequestPayload {
  factory _$ListObjectVersionsRequestPayload(
          [void Function(ListObjectVersionsRequestPayloadBuilder)? updates]) =>
      (new ListObjectVersionsRequestPayloadBuilder()..update(updates))._build();

  _$ListObjectVersionsRequestPayload._() : super._();

  @override
  ListObjectVersionsRequestPayload rebuild(
          void Function(ListObjectVersionsRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListObjectVersionsRequestPayloadBuilder toBuilder() =>
      new ListObjectVersionsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListObjectVersionsRequestPayload;
  }

  @override
  int get hashCode {
    return 836363791;
  }
}

class ListObjectVersionsRequestPayloadBuilder
    implements
        Builder<ListObjectVersionsRequestPayload,
            ListObjectVersionsRequestPayloadBuilder> {
  _$ListObjectVersionsRequestPayload? _$v;

  ListObjectVersionsRequestPayloadBuilder() {
    ListObjectVersionsRequestPayload._init(this);
  }

  @override
  void replace(ListObjectVersionsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListObjectVersionsRequestPayload;
  }

  @override
  void update(void Function(ListObjectVersionsRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListObjectVersionsRequestPayload build() => _build();

  _$ListObjectVersionsRequestPayload _build() {
    final _$result = _$v ?? new _$ListObjectVersionsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
