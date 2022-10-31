// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_objects_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListObjectsOutput extends ListObjectsOutput {
  @override
  final _i5.BuiltList<_i2.CommonPrefix>? commonPrefixes;
  @override
  final _i5.BuiltList<_i3.S3Object>? contents;
  @override
  final String? delimiter;
  @override
  final _i4.EncodingType? encodingType;
  @override
  final bool? isTruncated;
  @override
  final String? marker;
  @override
  final int? maxKeys;
  @override
  final String? name;
  @override
  final String? nextMarker;
  @override
  final String? prefix;

  factory _$ListObjectsOutput(
          [void Function(ListObjectsOutputBuilder)? updates]) =>
      (new ListObjectsOutputBuilder()..update(updates))._build();

  _$ListObjectsOutput._(
      {this.commonPrefixes,
      this.contents,
      this.delimiter,
      this.encodingType,
      this.isTruncated,
      this.marker,
      this.maxKeys,
      this.name,
      this.nextMarker,
      this.prefix})
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
        commonPrefixes == other.commonPrefixes &&
        contents == other.contents &&
        delimiter == other.delimiter &&
        encodingType == other.encodingType &&
        isTruncated == other.isTruncated &&
        marker == other.marker &&
        maxKeys == other.maxKeys &&
        name == other.name &&
        nextMarker == other.nextMarker &&
        prefix == other.prefix;
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
                                    $jc($jc(0, commonPrefixes.hashCode),
                                        contents.hashCode),
                                    delimiter.hashCode),
                                encodingType.hashCode),
                            isTruncated.hashCode),
                        marker.hashCode),
                    maxKeys.hashCode),
                name.hashCode),
            nextMarker.hashCode),
        prefix.hashCode));
  }
}

class ListObjectsOutputBuilder
    implements Builder<ListObjectsOutput, ListObjectsOutputBuilder> {
  _$ListObjectsOutput? _$v;

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

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxKeys;
  int? get maxKeys => _$this._maxKeys;
  set maxKeys(int? maxKeys) => _$this._maxKeys = maxKeys;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _nextMarker;
  String? get nextMarker => _$this._nextMarker;
  set nextMarker(String? nextMarker) => _$this._nextMarker = nextMarker;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  ListObjectsOutputBuilder() {
    ListObjectsOutput._init(this);
  }

  ListObjectsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _commonPrefixes = $v.commonPrefixes?.toBuilder();
      _contents = $v.contents?.toBuilder();
      _delimiter = $v.delimiter;
      _encodingType = $v.encodingType;
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _maxKeys = $v.maxKeys;
      _name = $v.name;
      _nextMarker = $v.nextMarker;
      _prefix = $v.prefix;
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
              commonPrefixes: _commonPrefixes?.build(),
              contents: _contents?.build(),
              delimiter: delimiter,
              encodingType: encodingType,
              isTruncated: isTruncated,
              marker: marker,
              maxKeys: maxKeys,
              name: name,
              nextMarker: nextMarker,
              prefix: prefix);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'commonPrefixes';
        _commonPrefixes?.build();
        _$failedField = 'contents';
        _contents?.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
