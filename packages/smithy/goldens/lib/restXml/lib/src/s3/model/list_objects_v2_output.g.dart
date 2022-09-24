// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.s3.model.list_objects_v2_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListObjectsV2Output extends ListObjectsV2Output {
  @override
  final _i5.BuiltList<_i2.CommonPrefix>? commonPrefixes;
  @override
  final _i5.BuiltList<_i3.S3Object>? contents;
  @override
  final String? continuationToken;
  @override
  final String? delimiter;
  @override
  final _i4.EncodingType? encodingType;
  @override
  final bool? isTruncated;
  @override
  final int? keyCount;
  @override
  final int? maxKeys;
  @override
  final String? name;
  @override
  final String? nextContinuationToken;
  @override
  final String? prefix;
  @override
  final String? startAfter;

  factory _$ListObjectsV2Output(
          [void Function(ListObjectsV2OutputBuilder)? updates]) =>
      (new ListObjectsV2OutputBuilder()..update(updates))._build();

  _$ListObjectsV2Output._(
      {this.commonPrefixes,
      this.contents,
      this.continuationToken,
      this.delimiter,
      this.encodingType,
      this.isTruncated,
      this.keyCount,
      this.maxKeys,
      this.name,
      this.nextContinuationToken,
      this.prefix,
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
        commonPrefixes == other.commonPrefixes &&
        contents == other.contents &&
        continuationToken == other.continuationToken &&
        delimiter == other.delimiter &&
        encodingType == other.encodingType &&
        isTruncated == other.isTruncated &&
        keyCount == other.keyCount &&
        maxKeys == other.maxKeys &&
        name == other.name &&
        nextContinuationToken == other.nextContinuationToken &&
        prefix == other.prefix &&
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
                                    $jc(
                                        $jc(
                                            $jc($jc(0, commonPrefixes.hashCode),
                                                contents.hashCode),
                                            continuationToken.hashCode),
                                        delimiter.hashCode),
                                    encodingType.hashCode),
                                isTruncated.hashCode),
                            keyCount.hashCode),
                        maxKeys.hashCode),
                    name.hashCode),
                nextContinuationToken.hashCode),
            prefix.hashCode),
        startAfter.hashCode));
  }
}

class ListObjectsV2OutputBuilder
    implements Builder<ListObjectsV2Output, ListObjectsV2OutputBuilder> {
  _$ListObjectsV2Output? _$v;

  _i5.ListBuilder<_i2.CommonPrefix>? _commonPrefixes;
  _i5.ListBuilder<_i2.CommonPrefix> get commonPrefixes =>
      _$this._commonPrefixes ??= new _i5.ListBuilder<_i2.CommonPrefix>();
  set commonPrefixes(_i5.ListBuilder<_i2.CommonPrefix>? commonPrefixes) =>
      _$this._commonPrefixes = commonPrefixes;

  _i5.ListBuilder<_i3.S3Object>? _contents;
  _i5.ListBuilder<_i3.S3Object> get contents =>
      _$this._contents ??= new _i5.ListBuilder<_i3.S3Object>();
  set contents(_i5.ListBuilder<_i3.S3Object>? contents) =>
      _$this._contents = contents;

  String? _continuationToken;
  String? get continuationToken => _$this._continuationToken;
  set continuationToken(String? continuationToken) =>
      _$this._continuationToken = continuationToken;

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

  int? _keyCount;
  int? get keyCount => _$this._keyCount;
  set keyCount(int? keyCount) => _$this._keyCount = keyCount;

  int? _maxKeys;
  int? get maxKeys => _$this._maxKeys;
  set maxKeys(int? maxKeys) => _$this._maxKeys = maxKeys;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _nextContinuationToken;
  String? get nextContinuationToken => _$this._nextContinuationToken;
  set nextContinuationToken(String? nextContinuationToken) =>
      _$this._nextContinuationToken = nextContinuationToken;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  String? _startAfter;
  String? get startAfter => _$this._startAfter;
  set startAfter(String? startAfter) => _$this._startAfter = startAfter;

  ListObjectsV2OutputBuilder() {
    ListObjectsV2Output._init(this);
  }

  ListObjectsV2OutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _commonPrefixes = $v.commonPrefixes?.toBuilder();
      _contents = $v.contents?.toBuilder();
      _continuationToken = $v.continuationToken;
      _delimiter = $v.delimiter;
      _encodingType = $v.encodingType;
      _isTruncated = $v.isTruncated;
      _keyCount = $v.keyCount;
      _maxKeys = $v.maxKeys;
      _name = $v.name;
      _nextContinuationToken = $v.nextContinuationToken;
      _prefix = $v.prefix;
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
              commonPrefixes: _commonPrefixes?.build(),
              contents: _contents?.build(),
              continuationToken: continuationToken,
              delimiter: delimiter,
              encodingType: encodingType,
              isTruncated: isTruncated,
              keyCount: keyCount,
              maxKeys: maxKeys,
              name: name,
              nextContinuationToken: nextContinuationToken,
              prefix: prefix,
              startAfter: startAfter);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'commonPrefixes';
        _commonPrefixes?.build();
        _$failedField = 'contents';
        _contents?.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
