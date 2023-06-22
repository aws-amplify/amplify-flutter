// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_multipart_uploads_output.dart';

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
  final _i7.BuiltList<_i3.MultipartUpload>? uploads;
  @override
  final _i7.BuiltList<_i4.CommonPrefix>? commonPrefixes;
  @override
  final _i5.EncodingType? encodingType;
  @override
  final _i6.RequestCharged? requestCharged;

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
      this.encodingType,
      this.requestCharged})
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
        encodingType == other.encodingType &&
        requestCharged == other.requestCharged;
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
    _$hash = $jc(_$hash, requestCharged.hashCode);
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

  _i7.ListBuilder<_i3.MultipartUpload>? _uploads;
  _i7.ListBuilder<_i3.MultipartUpload> get uploads =>
      _$this._uploads ??= new _i7.ListBuilder<_i3.MultipartUpload>();
  set uploads(_i7.ListBuilder<_i3.MultipartUpload>? uploads) =>
      _$this._uploads = uploads;

  _i7.ListBuilder<_i4.CommonPrefix>? _commonPrefixes;
  _i7.ListBuilder<_i4.CommonPrefix> get commonPrefixes =>
      _$this._commonPrefixes ??= new _i7.ListBuilder<_i4.CommonPrefix>();
  set commonPrefixes(_i7.ListBuilder<_i4.CommonPrefix>? commonPrefixes) =>
      _$this._commonPrefixes = commonPrefixes;

  _i5.EncodingType? _encodingType;
  _i5.EncodingType? get encodingType => _$this._encodingType;
  set encodingType(_i5.EncodingType? encodingType) =>
      _$this._encodingType = encodingType;

  _i6.RequestCharged? _requestCharged;
  _i6.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i6.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

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
      _requestCharged = $v.requestCharged;
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
              encodingType: encodingType,
              requestCharged: requestCharged);
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

class _$ListMultipartUploadsOutputPayload
    extends ListMultipartUploadsOutputPayload {
  @override
  final String? bucket;
  @override
  final _i7.BuiltList<_i4.CommonPrefix>? commonPrefixes;
  @override
  final String? delimiter;
  @override
  final _i5.EncodingType? encodingType;
  @override
  final bool? isTruncated;
  @override
  final String? keyMarker;
  @override
  final int? maxUploads;
  @override
  final String? nextKeyMarker;
  @override
  final String? nextUploadIdMarker;
  @override
  final String? prefix;
  @override
  final String? uploadIdMarker;
  @override
  final _i7.BuiltList<_i3.MultipartUpload>? uploads;

  factory _$ListMultipartUploadsOutputPayload(
          [void Function(ListMultipartUploadsOutputPayloadBuilder)? updates]) =>
      (new ListMultipartUploadsOutputPayloadBuilder()..update(updates))
          ._build();

  _$ListMultipartUploadsOutputPayload._(
      {this.bucket,
      this.commonPrefixes,
      this.delimiter,
      this.encodingType,
      this.isTruncated,
      this.keyMarker,
      this.maxUploads,
      this.nextKeyMarker,
      this.nextUploadIdMarker,
      this.prefix,
      this.uploadIdMarker,
      this.uploads})
      : super._();

  @override
  ListMultipartUploadsOutputPayload rebuild(
          void Function(ListMultipartUploadsOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListMultipartUploadsOutputPayloadBuilder toBuilder() =>
      new ListMultipartUploadsOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListMultipartUploadsOutputPayload &&
        bucket == other.bucket &&
        commonPrefixes == other.commonPrefixes &&
        delimiter == other.delimiter &&
        encodingType == other.encodingType &&
        isTruncated == other.isTruncated &&
        keyMarker == other.keyMarker &&
        maxUploads == other.maxUploads &&
        nextKeyMarker == other.nextKeyMarker &&
        nextUploadIdMarker == other.nextUploadIdMarker &&
        prefix == other.prefix &&
        uploadIdMarker == other.uploadIdMarker &&
        uploads == other.uploads;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, commonPrefixes.hashCode);
    _$hash = $jc(_$hash, delimiter.hashCode);
    _$hash = $jc(_$hash, encodingType.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, keyMarker.hashCode);
    _$hash = $jc(_$hash, maxUploads.hashCode);
    _$hash = $jc(_$hash, nextKeyMarker.hashCode);
    _$hash = $jc(_$hash, nextUploadIdMarker.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, uploadIdMarker.hashCode);
    _$hash = $jc(_$hash, uploads.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListMultipartUploadsOutputPayloadBuilder
    implements
        Builder<ListMultipartUploadsOutputPayload,
            ListMultipartUploadsOutputPayloadBuilder> {
  _$ListMultipartUploadsOutputPayload? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  _i7.ListBuilder<_i4.CommonPrefix>? _commonPrefixes;
  _i7.ListBuilder<_i4.CommonPrefix> get commonPrefixes =>
      _$this._commonPrefixes ??= new _i7.ListBuilder<_i4.CommonPrefix>();
  set commonPrefixes(_i7.ListBuilder<_i4.CommonPrefix>? commonPrefixes) =>
      _$this._commonPrefixes = commonPrefixes;

  String? _delimiter;
  String? get delimiter => _$this._delimiter;
  set delimiter(String? delimiter) => _$this._delimiter = delimiter;

  _i5.EncodingType? _encodingType;
  _i5.EncodingType? get encodingType => _$this._encodingType;
  set encodingType(_i5.EncodingType? encodingType) =>
      _$this._encodingType = encodingType;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _keyMarker;
  String? get keyMarker => _$this._keyMarker;
  set keyMarker(String? keyMarker) => _$this._keyMarker = keyMarker;

  int? _maxUploads;
  int? get maxUploads => _$this._maxUploads;
  set maxUploads(int? maxUploads) => _$this._maxUploads = maxUploads;

  String? _nextKeyMarker;
  String? get nextKeyMarker => _$this._nextKeyMarker;
  set nextKeyMarker(String? nextKeyMarker) =>
      _$this._nextKeyMarker = nextKeyMarker;

  String? _nextUploadIdMarker;
  String? get nextUploadIdMarker => _$this._nextUploadIdMarker;
  set nextUploadIdMarker(String? nextUploadIdMarker) =>
      _$this._nextUploadIdMarker = nextUploadIdMarker;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  String? _uploadIdMarker;
  String? get uploadIdMarker => _$this._uploadIdMarker;
  set uploadIdMarker(String? uploadIdMarker) =>
      _$this._uploadIdMarker = uploadIdMarker;

  _i7.ListBuilder<_i3.MultipartUpload>? _uploads;
  _i7.ListBuilder<_i3.MultipartUpload> get uploads =>
      _$this._uploads ??= new _i7.ListBuilder<_i3.MultipartUpload>();
  set uploads(_i7.ListBuilder<_i3.MultipartUpload>? uploads) =>
      _$this._uploads = uploads;

  ListMultipartUploadsOutputPayloadBuilder() {
    ListMultipartUploadsOutputPayload._init(this);
  }

  ListMultipartUploadsOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _commonPrefixes = $v.commonPrefixes?.toBuilder();
      _delimiter = $v.delimiter;
      _encodingType = $v.encodingType;
      _isTruncated = $v.isTruncated;
      _keyMarker = $v.keyMarker;
      _maxUploads = $v.maxUploads;
      _nextKeyMarker = $v.nextKeyMarker;
      _nextUploadIdMarker = $v.nextUploadIdMarker;
      _prefix = $v.prefix;
      _uploadIdMarker = $v.uploadIdMarker;
      _uploads = $v.uploads?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListMultipartUploadsOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListMultipartUploadsOutputPayload;
  }

  @override
  void update(
      void Function(ListMultipartUploadsOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListMultipartUploadsOutputPayload build() => _build();

  _$ListMultipartUploadsOutputPayload _build() {
    _$ListMultipartUploadsOutputPayload _$result;
    try {
      _$result = _$v ??
          new _$ListMultipartUploadsOutputPayload._(
              bucket: bucket,
              commonPrefixes: _commonPrefixes?.build(),
              delimiter: delimiter,
              encodingType: encodingType,
              isTruncated: isTruncated,
              keyMarker: keyMarker,
              maxUploads: maxUploads,
              nextKeyMarker: nextKeyMarker,
              nextUploadIdMarker: nextUploadIdMarker,
              prefix: prefix,
              uploadIdMarker: uploadIdMarker,
              uploads: _uploads?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'commonPrefixes';
        _commonPrefixes?.build();

        _$failedField = 'uploads';
        _uploads?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListMultipartUploadsOutputPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
