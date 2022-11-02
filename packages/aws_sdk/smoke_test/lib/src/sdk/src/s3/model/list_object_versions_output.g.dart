// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_object_versions_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListObjectVersionsOutput extends ListObjectVersionsOutput {
  @override
  final _i6.BuiltList<_i2.CommonPrefix>? commonPrefixes;
  @override
  final _i6.BuiltList<_i3.DeleteMarkerEntry>? deleteMarkers;
  @override
  final String? delimiter;
  @override
  final _i4.EncodingType? encodingType;
  @override
  final bool? isTruncated;
  @override
  final String? keyMarker;
  @override
  final int? maxKeys;
  @override
  final String? name;
  @override
  final String? nextKeyMarker;
  @override
  final String? nextVersionIdMarker;
  @override
  final String? prefix;
  @override
  final String? versionIdMarker;
  @override
  final _i6.BuiltList<_i5.ObjectVersion>? versions;

  factory _$ListObjectVersionsOutput(
          [void Function(ListObjectVersionsOutputBuilder)? updates]) =>
      (new ListObjectVersionsOutputBuilder()..update(updates))._build();

  _$ListObjectVersionsOutput._(
      {this.commonPrefixes,
      this.deleteMarkers,
      this.delimiter,
      this.encodingType,
      this.isTruncated,
      this.keyMarker,
      this.maxKeys,
      this.name,
      this.nextKeyMarker,
      this.nextVersionIdMarker,
      this.prefix,
      this.versionIdMarker,
      this.versions})
      : super._();

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
        commonPrefixes == other.commonPrefixes &&
        deleteMarkers == other.deleteMarkers &&
        delimiter == other.delimiter &&
        encodingType == other.encodingType &&
        isTruncated == other.isTruncated &&
        keyMarker == other.keyMarker &&
        maxKeys == other.maxKeys &&
        name == other.name &&
        nextKeyMarker == other.nextKeyMarker &&
        nextVersionIdMarker == other.nextVersionIdMarker &&
        prefix == other.prefix &&
        versionIdMarker == other.versionIdMarker &&
        versions == other.versions;
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        0,
                                                        commonPrefixes
                                                            .hashCode),
                                                    deleteMarkers.hashCode),
                                                delimiter.hashCode),
                                            encodingType.hashCode),
                                        isTruncated.hashCode),
                                    keyMarker.hashCode),
                                maxKeys.hashCode),
                            name.hashCode),
                        nextKeyMarker.hashCode),
                    nextVersionIdMarker.hashCode),
                prefix.hashCode),
            versionIdMarker.hashCode),
        versions.hashCode));
  }
}

class ListObjectVersionsOutputBuilder
    implements
        Builder<ListObjectVersionsOutput, ListObjectVersionsOutputBuilder> {
  _$ListObjectVersionsOutput? _$v;

  _i6.ListBuilder<_i2.CommonPrefix>? _commonPrefixes;
  _i6.ListBuilder<_i2.CommonPrefix> get commonPrefixes =>
      _$this._commonPrefixes ??= new _i6.ListBuilder<_i2.CommonPrefix>();
  set commonPrefixes(_i6.ListBuilder<_i2.CommonPrefix>? commonPrefixes) =>
      _$this._commonPrefixes = commonPrefixes;

  _i6.ListBuilder<_i3.DeleteMarkerEntry>? _deleteMarkers;
  _i6.ListBuilder<_i3.DeleteMarkerEntry> get deleteMarkers =>
      _$this._deleteMarkers ??= new _i6.ListBuilder<_i3.DeleteMarkerEntry>();
  set deleteMarkers(_i6.ListBuilder<_i3.DeleteMarkerEntry>? deleteMarkers) =>
      _$this._deleteMarkers = deleteMarkers;

  String? _delimiter;
  String? get delimiter => _$this._delimiter;
  set delimiter(String? delimiter) => _$this._delimiter = delimiter;

  _i4.EncodingType? _encodingType;
  _i4.EncodingType? get encodingType => _$this._encodingType;
  set encodingType(_i4.EncodingType? encodingType) =>
      _$this._encodingType = encodingType;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _keyMarker;
  String? get keyMarker => _$this._keyMarker;
  set keyMarker(String? keyMarker) => _$this._keyMarker = keyMarker;

  int? _maxKeys;
  int? get maxKeys => _$this._maxKeys;
  set maxKeys(int? maxKeys) => _$this._maxKeys = maxKeys;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _nextKeyMarker;
  String? get nextKeyMarker => _$this._nextKeyMarker;
  set nextKeyMarker(String? nextKeyMarker) =>
      _$this._nextKeyMarker = nextKeyMarker;

  String? _nextVersionIdMarker;
  String? get nextVersionIdMarker => _$this._nextVersionIdMarker;
  set nextVersionIdMarker(String? nextVersionIdMarker) =>
      _$this._nextVersionIdMarker = nextVersionIdMarker;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  String? _versionIdMarker;
  String? get versionIdMarker => _$this._versionIdMarker;
  set versionIdMarker(String? versionIdMarker) =>
      _$this._versionIdMarker = versionIdMarker;

  _i6.ListBuilder<_i5.ObjectVersion>? _versions;
  _i6.ListBuilder<_i5.ObjectVersion> get versions =>
      _$this._versions ??= new _i6.ListBuilder<_i5.ObjectVersion>();
  set versions(_i6.ListBuilder<_i5.ObjectVersion>? versions) =>
      _$this._versions = versions;

  ListObjectVersionsOutputBuilder() {
    ListObjectVersionsOutput._init(this);
  }

  ListObjectVersionsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _commonPrefixes = $v.commonPrefixes?.toBuilder();
      _deleteMarkers = $v.deleteMarkers?.toBuilder();
      _delimiter = $v.delimiter;
      _encodingType = $v.encodingType;
      _isTruncated = $v.isTruncated;
      _keyMarker = $v.keyMarker;
      _maxKeys = $v.maxKeys;
      _name = $v.name;
      _nextKeyMarker = $v.nextKeyMarker;
      _nextVersionIdMarker = $v.nextVersionIdMarker;
      _prefix = $v.prefix;
      _versionIdMarker = $v.versionIdMarker;
      _versions = $v.versions?.toBuilder();
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
              commonPrefixes: _commonPrefixes?.build(),
              deleteMarkers: _deleteMarkers?.build(),
              delimiter: delimiter,
              encodingType: encodingType,
              isTruncated: isTruncated,
              keyMarker: keyMarker,
              maxKeys: maxKeys,
              name: name,
              nextKeyMarker: nextKeyMarker,
              nextVersionIdMarker: nextVersionIdMarker,
              prefix: prefix,
              versionIdMarker: versionIdMarker,
              versions: _versions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'commonPrefixes';
        _commonPrefixes?.build();
        _$failedField = 'deleteMarkers';
        _deleteMarkers?.build();

        _$failedField = 'versions';
        _versions?.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
