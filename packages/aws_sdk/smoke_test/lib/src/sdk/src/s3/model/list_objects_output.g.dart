// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_objects_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListObjectsOutput extends ListObjectsOutput {
  @override
  final bool? isTruncated;
  @override
  final String? marker;
  @override
  final String? nextMarker;
  @override
  final _i5.BuiltList<_i2.S3Object>? contents;
  @override
  final String? name;
  @override
  final String? prefix;
  @override
  final String? delimiter;
  @override
  final int? maxKeys;
  @override
  final _i5.BuiltList<_i3.CommonPrefix>? commonPrefixes;
  @override
  final _i4.EncodingType? encodingType;

  factory _$ListObjectsOutput(
          [void Function(ListObjectsOutputBuilder)? updates]) =>
      (new ListObjectsOutputBuilder()..update(updates))._build();

  _$ListObjectsOutput._(
      {this.isTruncated,
      this.marker,
      this.nextMarker,
      this.contents,
      this.name,
      this.prefix,
      this.delimiter,
      this.maxKeys,
      this.commonPrefixes,
      this.encodingType})
      : super._();

  @override
  ListObjectsOutput rebuild(void Function(ListObjectsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListObjectsOutputBuilder toBuilder() =>
      new ListObjectsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListObjectsOutput &&
        isTruncated == other.isTruncated &&
        marker == other.marker &&
        nextMarker == other.nextMarker &&
        contents == other.contents &&
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
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, nextMarker.hashCode);
    _$hash = $jc(_$hash, contents.hashCode);
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

class ListObjectsOutputBuilder
    implements Builder<ListObjectsOutput, ListObjectsOutputBuilder> {
  _$ListObjectsOutput? _$v;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  String? _nextMarker;
  String? get nextMarker => _$this._nextMarker;
  set nextMarker(String? nextMarker) => _$this._nextMarker = nextMarker;

  _i5.ListBuilder<_i2.S3Object>? _contents;
  _i5.ListBuilder<_i2.S3Object> get contents =>
      _$this._contents ??= new _i5.ListBuilder<_i2.S3Object>();
  set contents(_i5.ListBuilder<_i2.S3Object>? contents) =>
      _$this._contents = contents;

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

  _i5.ListBuilder<_i3.CommonPrefix>? _commonPrefixes;
  _i5.ListBuilder<_i3.CommonPrefix> get commonPrefixes =>
      _$this._commonPrefixes ??= new _i5.ListBuilder<_i3.CommonPrefix>();
  set commonPrefixes(_i5.ListBuilder<_i3.CommonPrefix>? commonPrefixes) =>
      _$this._commonPrefixes = commonPrefixes;

  _i4.EncodingType? _encodingType;
  _i4.EncodingType? get encodingType => _$this._encodingType;
  set encodingType(_i4.EncodingType? encodingType) =>
      _$this._encodingType = encodingType;

  ListObjectsOutputBuilder() {
    ListObjectsOutput._init(this);
  }

  ListObjectsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _nextMarker = $v.nextMarker;
      _contents = $v.contents?.toBuilder();
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
  void replace(ListObjectsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListObjectsOutput;
  }

  @override
  void update(void Function(ListObjectsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListObjectsOutput build() => _build();

  _$ListObjectsOutput _build() {
    _$ListObjectsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListObjectsOutput._(
              isTruncated: isTruncated,
              marker: marker,
              nextMarker: nextMarker,
              contents: _contents?.build(),
              name: name,
              prefix: prefix,
              delimiter: delimiter,
              maxKeys: maxKeys,
              commonPrefixes: _commonPrefixes?.build(),
              encodingType: encodingType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contents';
        _contents?.build();

        _$failedField = 'commonPrefixes';
        _commonPrefixes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListObjectsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
