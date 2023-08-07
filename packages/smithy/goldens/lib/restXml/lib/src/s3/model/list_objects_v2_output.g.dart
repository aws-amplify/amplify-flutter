// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_objects_v2_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListObjectsV2Output extends ListObjectsV2Output {
  @override
  final bool? isTruncated;
  @override
  final _i2.BuiltList<S3Object>? contents;
  @override
  final String? name;
  @override
  final String? prefix;
  @override
  final String? delimiter;
  @override
  final int? maxKeys;
  @override
  final _i2.BuiltList<CommonPrefix>? commonPrefixes;
  @override
  final EncodingType? encodingType;
  @override
  final int? keyCount;
  @override
  final String? continuationToken;
  @override
  final String? nextContinuationToken;
  @override
  final String? startAfter;

  factory _$ListObjectsV2Output(
          [void Function(ListObjectsV2OutputBuilder)? updates]) =>
      (new ListObjectsV2OutputBuilder()..update(updates))._build();

  _$ListObjectsV2Output._(
      {this.isTruncated,
      this.contents,
      this.name,
      this.prefix,
      this.delimiter,
      this.maxKeys,
      this.commonPrefixes,
      this.encodingType,
      this.keyCount,
      this.continuationToken,
      this.nextContinuationToken,
      this.startAfter})
      : super._();

  @override
  ListObjectsV2Output rebuild(
          void Function(ListObjectsV2OutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListObjectsV2OutputBuilder toBuilder() =>
      new ListObjectsV2OutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListObjectsV2Output &&
        isTruncated == other.isTruncated &&
        contents == other.contents &&
        name == other.name &&
        prefix == other.prefix &&
        delimiter == other.delimiter &&
        maxKeys == other.maxKeys &&
        commonPrefixes == other.commonPrefixes &&
        encodingType == other.encodingType &&
        keyCount == other.keyCount &&
        continuationToken == other.continuationToken &&
        nextContinuationToken == other.nextContinuationToken &&
        startAfter == other.startAfter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, contents.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, delimiter.hashCode);
    _$hash = $jc(_$hash, maxKeys.hashCode);
    _$hash = $jc(_$hash, commonPrefixes.hashCode);
    _$hash = $jc(_$hash, encodingType.hashCode);
    _$hash = $jc(_$hash, keyCount.hashCode);
    _$hash = $jc(_$hash, continuationToken.hashCode);
    _$hash = $jc(_$hash, nextContinuationToken.hashCode);
    _$hash = $jc(_$hash, startAfter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListObjectsV2OutputBuilder
    implements Builder<ListObjectsV2Output, ListObjectsV2OutputBuilder> {
  _$ListObjectsV2Output? _$v;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  _i2.ListBuilder<S3Object>? _contents;
  _i2.ListBuilder<S3Object> get contents =>
      _$this._contents ??= new _i2.ListBuilder<S3Object>();
  set contents(_i2.ListBuilder<S3Object>? contents) =>
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

  _i2.ListBuilder<CommonPrefix>? _commonPrefixes;
  _i2.ListBuilder<CommonPrefix> get commonPrefixes =>
      _$this._commonPrefixes ??= new _i2.ListBuilder<CommonPrefix>();
  set commonPrefixes(_i2.ListBuilder<CommonPrefix>? commonPrefixes) =>
      _$this._commonPrefixes = commonPrefixes;

  EncodingType? _encodingType;
  EncodingType? get encodingType => _$this._encodingType;
  set encodingType(EncodingType? encodingType) =>
      _$this._encodingType = encodingType;

  int? _keyCount;
  int? get keyCount => _$this._keyCount;
  set keyCount(int? keyCount) => _$this._keyCount = keyCount;

  String? _continuationToken;
  String? get continuationToken => _$this._continuationToken;
  set continuationToken(String? continuationToken) =>
      _$this._continuationToken = continuationToken;

  String? _nextContinuationToken;
  String? get nextContinuationToken => _$this._nextContinuationToken;
  set nextContinuationToken(String? nextContinuationToken) =>
      _$this._nextContinuationToken = nextContinuationToken;

  String? _startAfter;
  String? get startAfter => _$this._startAfter;
  set startAfter(String? startAfter) => _$this._startAfter = startAfter;

  ListObjectsV2OutputBuilder();

  ListObjectsV2OutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isTruncated = $v.isTruncated;
      _contents = $v.contents?.toBuilder();
      _name = $v.name;
      _prefix = $v.prefix;
      _delimiter = $v.delimiter;
      _maxKeys = $v.maxKeys;
      _commonPrefixes = $v.commonPrefixes?.toBuilder();
      _encodingType = $v.encodingType;
      _keyCount = $v.keyCount;
      _continuationToken = $v.continuationToken;
      _nextContinuationToken = $v.nextContinuationToken;
      _startAfter = $v.startAfter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListObjectsV2Output other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListObjectsV2Output;
  }

  @override
  void update(void Function(ListObjectsV2OutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListObjectsV2Output build() => _build();

  _$ListObjectsV2Output _build() {
    _$ListObjectsV2Output _$result;
    try {
      _$result = _$v ??
          new _$ListObjectsV2Output._(
              isTruncated: isTruncated,
              contents: _contents?.build(),
              name: name,
              prefix: prefix,
              delimiter: delimiter,
              maxKeys: maxKeys,
              commonPrefixes: _commonPrefixes?.build(),
              encodingType: encodingType,
              keyCount: keyCount,
              continuationToken: continuationToken,
              nextContinuationToken: nextContinuationToken,
              startAfter: startAfter);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contents';
        _contents?.build();

        _$failedField = 'commonPrefixes';
        _commonPrefixes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListObjectsV2Output', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
