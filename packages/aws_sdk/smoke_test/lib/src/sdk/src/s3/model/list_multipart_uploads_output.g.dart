// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_multipart_uploads_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListMultipartUploadsOutput extends ListMultipartUploadsOutput {
  @override
  final String? bucket;
  @override
  final String? keyMarker;
  @override
  final String? uploadIdMarker;
  @override
  final String? nextKeyMarker;
  @override
  final String? prefix;
  @override
  final String? delimiter;
  @override
  final String? nextUploadIdMarker;
  @override
  final int? maxUploads;
  @override
  final bool? isTruncated;
  @override
  final _i5.BuiltList<_i2.MultipartUpload>? uploads;
  @override
  final _i5.BuiltList<_i3.CommonPrefix>? commonPrefixes;
  @override
  final _i4.EncodingType? encodingType;

  factory _$ListMultipartUploadsOutput(
          [void Function(ListMultipartUploadsOutputBuilder)? updates]) =>
      (new ListMultipartUploadsOutputBuilder()..update(updates))._build();

  _$ListMultipartUploadsOutput._(
      {this.bucket,
      this.keyMarker,
      this.uploadIdMarker,
      this.nextKeyMarker,
      this.prefix,
      this.delimiter,
      this.nextUploadIdMarker,
      this.maxUploads,
      this.isTruncated,
      this.uploads,
      this.commonPrefixes,
      this.encodingType})
      : super._();

  @override
  ListMultipartUploadsOutput rebuild(
          void Function(ListMultipartUploadsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListMultipartUploadsOutputBuilder toBuilder() =>
      new ListMultipartUploadsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListMultipartUploadsOutput &&
        bucket == other.bucket &&
        keyMarker == other.keyMarker &&
        uploadIdMarker == other.uploadIdMarker &&
        nextKeyMarker == other.nextKeyMarker &&
        prefix == other.prefix &&
        delimiter == other.delimiter &&
        nextUploadIdMarker == other.nextUploadIdMarker &&
        maxUploads == other.maxUploads &&
        isTruncated == other.isTruncated &&
        uploads == other.uploads &&
        commonPrefixes == other.commonPrefixes &&
        encodingType == other.encodingType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, keyMarker.hashCode);
    _$hash = $jc(_$hash, uploadIdMarker.hashCode);
    _$hash = $jc(_$hash, nextKeyMarker.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, delimiter.hashCode);
    _$hash = $jc(_$hash, nextUploadIdMarker.hashCode);
    _$hash = $jc(_$hash, maxUploads.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, uploads.hashCode);
    _$hash = $jc(_$hash, commonPrefixes.hashCode);
    _$hash = $jc(_$hash, encodingType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListMultipartUploadsOutputBuilder
    implements
        Builder<ListMultipartUploadsOutput, ListMultipartUploadsOutputBuilder> {
  _$ListMultipartUploadsOutput? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _keyMarker;
  String? get keyMarker => _$this._keyMarker;
  set keyMarker(String? keyMarker) => _$this._keyMarker = keyMarker;

  String? _uploadIdMarker;
  String? get uploadIdMarker => _$this._uploadIdMarker;
  set uploadIdMarker(String? uploadIdMarker) =>
      _$this._uploadIdMarker = uploadIdMarker;

  String? _nextKeyMarker;
  String? get nextKeyMarker => _$this._nextKeyMarker;
  set nextKeyMarker(String? nextKeyMarker) =>
      _$this._nextKeyMarker = nextKeyMarker;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  String? _delimiter;
  String? get delimiter => _$this._delimiter;
  set delimiter(String? delimiter) => _$this._delimiter = delimiter;

  String? _nextUploadIdMarker;
  String? get nextUploadIdMarker => _$this._nextUploadIdMarker;
  set nextUploadIdMarker(String? nextUploadIdMarker) =>
      _$this._nextUploadIdMarker = nextUploadIdMarker;

  int? _maxUploads;
  int? get maxUploads => _$this._maxUploads;
  set maxUploads(int? maxUploads) => _$this._maxUploads = maxUploads;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  _i5.ListBuilder<_i2.MultipartUpload>? _uploads;
  _i5.ListBuilder<_i2.MultipartUpload> get uploads =>
      _$this._uploads ??= new _i5.ListBuilder<_i2.MultipartUpload>();
  set uploads(_i5.ListBuilder<_i2.MultipartUpload>? uploads) =>
      _$this._uploads = uploads;

  _i5.ListBuilder<_i3.CommonPrefix>? _commonPrefixes;
  _i5.ListBuilder<_i3.CommonPrefix> get commonPrefixes =>
      _$this._commonPrefixes ??= new _i5.ListBuilder<_i3.CommonPrefix>();
  set commonPrefixes(_i5.ListBuilder<_i3.CommonPrefix>? commonPrefixes) =>
      _$this._commonPrefixes = commonPrefixes;

  _i4.EncodingType? _encodingType;
  _i4.EncodingType? get encodingType => _$this._encodingType;
  set encodingType(_i4.EncodingType? encodingType) =>
      _$this._encodingType = encodingType;

  ListMultipartUploadsOutputBuilder() {
    ListMultipartUploadsOutput._init(this);
  }

  ListMultipartUploadsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _keyMarker = $v.keyMarker;
      _uploadIdMarker = $v.uploadIdMarker;
      _nextKeyMarker = $v.nextKeyMarker;
      _prefix = $v.prefix;
      _delimiter = $v.delimiter;
      _nextUploadIdMarker = $v.nextUploadIdMarker;
      _maxUploads = $v.maxUploads;
      _isTruncated = $v.isTruncated;
      _uploads = $v.uploads?.toBuilder();
      _commonPrefixes = $v.commonPrefixes?.toBuilder();
      _encodingType = $v.encodingType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListMultipartUploadsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListMultipartUploadsOutput;
  }

  @override
  void update(void Function(ListMultipartUploadsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListMultipartUploadsOutput build() => _build();

  _$ListMultipartUploadsOutput _build() {
    _$ListMultipartUploadsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListMultipartUploadsOutput._(
              bucket: bucket,
              keyMarker: keyMarker,
              uploadIdMarker: uploadIdMarker,
              nextKeyMarker: nextKeyMarker,
              prefix: prefix,
              delimiter: delimiter,
              nextUploadIdMarker: nextUploadIdMarker,
              maxUploads: maxUploads,
              isTruncated: isTruncated,
              uploads: _uploads?.build(),
              commonPrefixes: _commonPrefixes?.build(),
              encodingType: encodingType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uploads';
        _uploads?.build();
        _$failedField = 'commonPrefixes';
        _commonPrefixes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListMultipartUploadsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
