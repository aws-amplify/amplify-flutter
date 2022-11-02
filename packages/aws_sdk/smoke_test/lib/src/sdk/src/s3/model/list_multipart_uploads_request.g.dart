// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_multipart_uploads_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListMultipartUploadsRequest extends ListMultipartUploadsRequest {
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
  final int? maxUploads;
  @override
  final String? prefix;
  @override
  final String? uploadIdMarker;

  factory _$ListMultipartUploadsRequest(
          [void Function(ListMultipartUploadsRequestBuilder)? updates]) =>
      (new ListMultipartUploadsRequestBuilder()..update(updates))._build();

  _$ListMultipartUploadsRequest._(
      {required this.bucket,
      this.delimiter,
      this.encodingType,
      this.expectedBucketOwner,
      this.keyMarker,
      this.maxUploads,
      this.prefix,
      this.uploadIdMarker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'ListMultipartUploadsRequest', 'bucket');
  }

  @override
  ListMultipartUploadsRequest rebuild(
          void Function(ListMultipartUploadsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListMultipartUploadsRequestBuilder toBuilder() =>
      new ListMultipartUploadsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListMultipartUploadsRequest &&
        bucket == other.bucket &&
        delimiter == other.delimiter &&
        encodingType == other.encodingType &&
        expectedBucketOwner == other.expectedBucketOwner &&
        keyMarker == other.keyMarker &&
        maxUploads == other.maxUploads &&
        prefix == other.prefix &&
        uploadIdMarker == other.uploadIdMarker;
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
                maxUploads.hashCode),
            prefix.hashCode),
        uploadIdMarker.hashCode));
  }
}

class ListMultipartUploadsRequestBuilder
    implements
        Builder<ListMultipartUploadsRequest,
            ListMultipartUploadsRequestBuilder> {
  _$ListMultipartUploadsRequest? _$v;

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

  int? _maxUploads;
  int? get maxUploads => _$this._maxUploads;
  set maxUploads(int? maxUploads) => _$this._maxUploads = maxUploads;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  String? _uploadIdMarker;
  String? get uploadIdMarker => _$this._uploadIdMarker;
  set uploadIdMarker(String? uploadIdMarker) =>
      _$this._uploadIdMarker = uploadIdMarker;

  ListMultipartUploadsRequestBuilder() {
    ListMultipartUploadsRequest._init(this);
  }

  ListMultipartUploadsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _delimiter = $v.delimiter;
      _encodingType = $v.encodingType;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _keyMarker = $v.keyMarker;
      _maxUploads = $v.maxUploads;
      _prefix = $v.prefix;
      _uploadIdMarker = $v.uploadIdMarker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListMultipartUploadsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListMultipartUploadsRequest;
  }

  @override
  void update(void Function(ListMultipartUploadsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListMultipartUploadsRequest build() => _build();

  _$ListMultipartUploadsRequest _build() {
    final _$result = _$v ??
        new _$ListMultipartUploadsRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'ListMultipartUploadsRequest', 'bucket'),
            delimiter: delimiter,
            encodingType: encodingType,
            expectedBucketOwner: expectedBucketOwner,
            keyMarker: keyMarker,
            maxUploads: maxUploads,
            prefix: prefix,
            uploadIdMarker: uploadIdMarker);
    replace(_$result);
    return _$result;
  }
}

class _$ListMultipartUploadsRequestPayload
    extends ListMultipartUploadsRequestPayload {
  factory _$ListMultipartUploadsRequestPayload(
          [void Function(ListMultipartUploadsRequestPayloadBuilder)?
              updates]) =>
      (new ListMultipartUploadsRequestPayloadBuilder()..update(updates))
          ._build();

  _$ListMultipartUploadsRequestPayload._() : super._();

  @override
  ListMultipartUploadsRequestPayload rebuild(
          void Function(ListMultipartUploadsRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListMultipartUploadsRequestPayloadBuilder toBuilder() =>
      new ListMultipartUploadsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListMultipartUploadsRequestPayload;
  }

  @override
  int get hashCode {
    return 89180997;
  }
}

class ListMultipartUploadsRequestPayloadBuilder
    implements
        Builder<ListMultipartUploadsRequestPayload,
            ListMultipartUploadsRequestPayloadBuilder> {
  _$ListMultipartUploadsRequestPayload? _$v;

  ListMultipartUploadsRequestPayloadBuilder() {
    ListMultipartUploadsRequestPayload._init(this);
  }

  @override
  void replace(ListMultipartUploadsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListMultipartUploadsRequestPayload;
  }

  @override
  void update(
      void Function(ListMultipartUploadsRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListMultipartUploadsRequestPayload build() => _build();

  _$ListMultipartUploadsRequestPayload _build() {
    final _$result = _$v ?? new _$ListMultipartUploadsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
