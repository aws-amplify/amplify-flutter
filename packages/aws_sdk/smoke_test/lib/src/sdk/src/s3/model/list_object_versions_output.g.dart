// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_object_versions_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListObjectVersionsOutput extends ListObjectVersionsOutput {
  @override
  final bool isTruncated;
  @override
  final String? keyMarker;
  @override
  final String? versionIdMarker;
  @override
  final String? nextKeyMarker;
  @override
  final String? nextVersionIdMarker;
  @override
  final _i6.BuiltList<_i2.ObjectVersion>? versions;
  @override
  final _i6.BuiltList<_i3.DeleteMarkerEntry>? deleteMarkers;
  @override
  final String? name;
  @override
  final String? prefix;
  @override
  final String? delimiter;
  @override
  final int maxKeys;
  @override
  final _i6.BuiltList<_i4.CommonPrefix>? commonPrefixes;
  @override
  final _i5.EncodingType? encodingType;

  factory _$ListObjectVersionsOutput(
          [void Function(ListObjectVersionsOutputBuilder)? updates]) =>
      (new ListObjectVersionsOutputBuilder()..update(updates))._build();

  _$ListObjectVersionsOutput._(
      {required this.isTruncated,
      this.keyMarker,
      this.versionIdMarker,
      this.nextKeyMarker,
      this.nextVersionIdMarker,
      this.versions,
      this.deleteMarkers,
      this.name,
      this.prefix,
      this.delimiter,
      required this.maxKeys,
      this.commonPrefixes,
      this.encodingType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListObjectVersionsOutput', 'isTruncated');
    BuiltValueNullFieldError.checkNotNull(
        maxKeys, r'ListObjectVersionsOutput', 'maxKeys');
  }

  @override
  ListObjectVersionsOutput rebuild(
          void Function(ListObjectVersionsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListObjectVersionsOutputBuilder toBuilder() =>
      new ListObjectVersionsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListObjectVersionsOutput &&
        isTruncated == other.isTruncated &&
        keyMarker == other.keyMarker &&
        versionIdMarker == other.versionIdMarker &&
        nextKeyMarker == other.nextKeyMarker &&
        nextVersionIdMarker == other.nextVersionIdMarker &&
        versions == other.versions &&
        deleteMarkers == other.deleteMarkers &&
        name == other.name &&
        prefix == other.prefix &&
        delimiter == other.delimiter &&
        maxKeys == other.maxKeys &&
        commonPrefixes == other.commonPrefixes &&
        encodingType == other.encodingType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, keyMarker.hashCode);
    _$hash = $jc(_$hash, versionIdMarker.hashCode);
    _$hash = $jc(_$hash, nextKeyMarker.hashCode);
    _$hash = $jc(_$hash, nextVersionIdMarker.hashCode);
    _$hash = $jc(_$hash, versions.hashCode);
    _$hash = $jc(_$hash, deleteMarkers.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, delimiter.hashCode);
    _$hash = $jc(_$hash, maxKeys.hashCode);
    _$hash = $jc(_$hash, commonPrefixes.hashCode);
    _$hash = $jc(_$hash, encodingType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListObjectVersionsOutputBuilder
    implements
        Builder<ListObjectVersionsOutput, ListObjectVersionsOutputBuilder> {
  _$ListObjectVersionsOutput? _$v;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _keyMarker;
  String? get keyMarker => _$this._keyMarker;
  set keyMarker(String? keyMarker) => _$this._keyMarker = keyMarker;

  String? _versionIdMarker;
  String? get versionIdMarker => _$this._versionIdMarker;
  set versionIdMarker(String? versionIdMarker) =>
      _$this._versionIdMarker = versionIdMarker;

  String? _nextKeyMarker;
  String? get nextKeyMarker => _$this._nextKeyMarker;
  set nextKeyMarker(String? nextKeyMarker) =>
      _$this._nextKeyMarker = nextKeyMarker;

  String? _nextVersionIdMarker;
  String? get nextVersionIdMarker => _$this._nextVersionIdMarker;
  set nextVersionIdMarker(String? nextVersionIdMarker) =>
      _$this._nextVersionIdMarker = nextVersionIdMarker;

  _i6.ListBuilder<_i2.ObjectVersion>? _versions;
  _i6.ListBuilder<_i2.ObjectVersion> get versions =>
      _$this._versions ??= new _i6.ListBuilder<_i2.ObjectVersion>();
  set versions(_i6.ListBuilder<_i2.ObjectVersion>? versions) =>
      _$this._versions = versions;

  _i6.ListBuilder<_i3.DeleteMarkerEntry>? _deleteMarkers;
  _i6.ListBuilder<_i3.DeleteMarkerEntry> get deleteMarkers =>
      _$this._deleteMarkers ??= new _i6.ListBuilder<_i3.DeleteMarkerEntry>();
  set deleteMarkers(_i6.ListBuilder<_i3.DeleteMarkerEntry>? deleteMarkers) =>
      _$this._deleteMarkers = deleteMarkers;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  String? _delimiter;
  String? get delimiter => _$this._delimiter;
  set delimiter(String? delimiter) => _$this._delimiter = delimiter;

  int? _maxKeys;
  int? get maxKeys => _$this._maxKeys;
  set maxKeys(int? maxKeys) => _$this._maxKeys = maxKeys;

  _i6.ListBuilder<_i4.CommonPrefix>? _commonPrefixes;
  _i6.ListBuilder<_i4.CommonPrefix> get commonPrefixes =>
      _$this._commonPrefixes ??= new _i6.ListBuilder<_i4.CommonPrefix>();
  set commonPrefixes(_i6.ListBuilder<_i4.CommonPrefix>? commonPrefixes) =>
      _$this._commonPrefixes = commonPrefixes;

  _i5.EncodingType? _encodingType;
  _i5.EncodingType? get encodingType => _$this._encodingType;
  set encodingType(_i5.EncodingType? encodingType) =>
      _$this._encodingType = encodingType;

  ListObjectVersionsOutputBuilder() {
    ListObjectVersionsOutput._init(this);
  }

  ListObjectVersionsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isTruncated = $v.isTruncated;
      _keyMarker = $v.keyMarker;
      _versionIdMarker = $v.versionIdMarker;
      _nextKeyMarker = $v.nextKeyMarker;
      _nextVersionIdMarker = $v.nextVersionIdMarker;
      _versions = $v.versions?.toBuilder();
      _deleteMarkers = $v.deleteMarkers?.toBuilder();
      _name = $v.name;
      _prefix = $v.prefix;
      _delimiter = $v.delimiter;
      _maxKeys = $v.maxKeys;
      _commonPrefixes = $v.commonPrefixes?.toBuilder();
      _encodingType = $v.encodingType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListObjectVersionsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListObjectVersionsOutput;
  }

  @override
  void update(void Function(ListObjectVersionsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListObjectVersionsOutput build() => _build();

  _$ListObjectVersionsOutput _build() {
    _$ListObjectVersionsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListObjectVersionsOutput._(
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListObjectVersionsOutput', 'isTruncated'),
              keyMarker: keyMarker,
              versionIdMarker: versionIdMarker,
              nextKeyMarker: nextKeyMarker,
              nextVersionIdMarker: nextVersionIdMarker,
              versions: _versions?.build(),
              deleteMarkers: _deleteMarkers?.build(),
              name: name,
              prefix: prefix,
              delimiter: delimiter,
              maxKeys: BuiltValueNullFieldError.checkNotNull(
                  maxKeys, r'ListObjectVersionsOutput', 'maxKeys'),
              commonPrefixes: _commonPrefixes?.build(),
              encodingType: encodingType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'versions';
        _versions?.build();
        _$failedField = 'deleteMarkers';
        _deleteMarkers?.build();

        _$failedField = 'commonPrefixes';
        _commonPrefixes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListObjectVersionsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
