// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_query_v2.query_protocol.model.xml_enums_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlEnumsOutput extends XmlEnumsOutput {
  @override
  final _i2.FooEnum? fooEnum1;
  @override
  final _i2.FooEnum? fooEnum2;
  @override
  final _i2.FooEnum? fooEnum3;
  @override
  final _i3.BuiltList<_i2.FooEnum>? fooEnumList;
  @override
  final _i3.BuiltSet<_i2.FooEnum>? fooEnumSet;
  @override
  final _i3.BuiltMap<String, _i2.FooEnum>? fooEnumMap;

  factory _$XmlEnumsOutput([void Function(XmlEnumsOutputBuilder)? updates]) =>
      (new XmlEnumsOutputBuilder()..update(updates))._build();

  _$XmlEnumsOutput._(
      {this.fooEnum1,
      this.fooEnum2,
      this.fooEnum3,
      this.fooEnumList,
      this.fooEnumSet,
      this.fooEnumMap})
      : super._();

  @override
  XmlEnumsOutput rebuild(void Function(XmlEnumsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlEnumsOutputBuilder toBuilder() =>
      new XmlEnumsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlEnumsOutput &&
        fooEnum1 == other.fooEnum1 &&
        fooEnum2 == other.fooEnum2 &&
        fooEnum3 == other.fooEnum3 &&
        fooEnumList == other.fooEnumList &&
        fooEnumSet == other.fooEnumSet &&
        fooEnumMap == other.fooEnumMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fooEnum1.hashCode);
    _$hash = $jc(_$hash, fooEnum2.hashCode);
    _$hash = $jc(_$hash, fooEnum3.hashCode);
    _$hash = $jc(_$hash, fooEnumList.hashCode);
    _$hash = $jc(_$hash, fooEnumSet.hashCode);
    _$hash = $jc(_$hash, fooEnumMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class XmlEnumsOutputBuilder
    implements Builder<XmlEnumsOutput, XmlEnumsOutputBuilder> {
  _$XmlEnumsOutput? _$v;

  _i2.FooEnum? _fooEnum1;
  _i2.FooEnum? get fooEnum1 => _$this._fooEnum1;
  set fooEnum1(_i2.FooEnum? fooEnum1) => _$this._fooEnum1 = fooEnum1;

  _i2.FooEnum? _fooEnum2;
  _i2.FooEnum? get fooEnum2 => _$this._fooEnum2;
  set fooEnum2(_i2.FooEnum? fooEnum2) => _$this._fooEnum2 = fooEnum2;

  _i2.FooEnum? _fooEnum3;
  _i2.FooEnum? get fooEnum3 => _$this._fooEnum3;
  set fooEnum3(_i2.FooEnum? fooEnum3) => _$this._fooEnum3 = fooEnum3;

  _i3.ListBuilder<_i2.FooEnum>? _fooEnumList;
  _i3.ListBuilder<_i2.FooEnum> get fooEnumList =>
      _$this._fooEnumList ??= new _i3.ListBuilder<_i2.FooEnum>();
  set fooEnumList(_i3.ListBuilder<_i2.FooEnum>? fooEnumList) =>
      _$this._fooEnumList = fooEnumList;

  _i3.SetBuilder<_i2.FooEnum>? _fooEnumSet;
  _i3.SetBuilder<_i2.FooEnum> get fooEnumSet =>
      _$this._fooEnumSet ??= new _i3.SetBuilder<_i2.FooEnum>();
  set fooEnumSet(_i3.SetBuilder<_i2.FooEnum>? fooEnumSet) =>
      _$this._fooEnumSet = fooEnumSet;

  _i3.MapBuilder<String, _i2.FooEnum>? _fooEnumMap;
  _i3.MapBuilder<String, _i2.FooEnum> get fooEnumMap =>
      _$this._fooEnumMap ??= new _i3.MapBuilder<String, _i2.FooEnum>();
  set fooEnumMap(_i3.MapBuilder<String, _i2.FooEnum>? fooEnumMap) =>
      _$this._fooEnumMap = fooEnumMap;

  XmlEnumsOutputBuilder() {
    XmlEnumsOutput._init(this);
  }

  XmlEnumsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fooEnum1 = $v.fooEnum1;
      _fooEnum2 = $v.fooEnum2;
      _fooEnum3 = $v.fooEnum3;
      _fooEnumList = $v.fooEnumList?.toBuilder();
      _fooEnumSet = $v.fooEnumSet?.toBuilder();
      _fooEnumMap = $v.fooEnumMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlEnumsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlEnumsOutput;
  }

  @override
  void update(void Function(XmlEnumsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlEnumsOutput build() => _build();

  _$XmlEnumsOutput _build() {
    _$XmlEnumsOutput _$result;
    try {
      _$result = _$v ??
          new _$XmlEnumsOutput._(
              fooEnum1: fooEnum1,
              fooEnum2: fooEnum2,
              fooEnum3: fooEnum3,
              fooEnumList: _fooEnumList?.build(),
              fooEnumSet: _fooEnumSet?.build(),
              fooEnumMap: _fooEnumMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fooEnumList';
        _fooEnumList?.build();
        _$failedField = 'fooEnumSet';
        _fooEnumSet?.build();
        _$failedField = 'fooEnumMap';
        _fooEnumMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'XmlEnumsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
