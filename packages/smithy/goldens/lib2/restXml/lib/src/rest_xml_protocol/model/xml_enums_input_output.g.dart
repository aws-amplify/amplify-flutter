// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.xml_enums_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlEnumsInputOutput extends XmlEnumsInputOutput {
  @override
  final _i3.FooEnum? fooEnum1;
  @override
  final _i3.FooEnum? fooEnum2;
  @override
  final _i3.FooEnum? fooEnum3;
  @override
  final _i4.BuiltList<_i3.FooEnum>? fooEnumList;
  @override
  final _i4.BuiltMap<String, _i3.FooEnum>? fooEnumMap;
  @override
  final _i4.BuiltSet<_i3.FooEnum>? fooEnumSet;

  factory _$XmlEnumsInputOutput(
          [void Function(XmlEnumsInputOutputBuilder)? updates]) =>
      (new XmlEnumsInputOutputBuilder()..update(updates))._build();

  _$XmlEnumsInputOutput._(
      {this.fooEnum1,
      this.fooEnum2,
      this.fooEnum3,
      this.fooEnumList,
      this.fooEnumMap,
      this.fooEnumSet})
      : super._();

  @override
  XmlEnumsInputOutput rebuild(
          void Function(XmlEnumsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlEnumsInputOutputBuilder toBuilder() =>
      new XmlEnumsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlEnumsInputOutput &&
        fooEnum1 == other.fooEnum1 &&
        fooEnum2 == other.fooEnum2 &&
        fooEnum3 == other.fooEnum3 &&
        fooEnumList == other.fooEnumList &&
        fooEnumMap == other.fooEnumMap &&
        fooEnumSet == other.fooEnumSet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fooEnum1.hashCode);
    _$hash = $jc(_$hash, fooEnum2.hashCode);
    _$hash = $jc(_$hash, fooEnum3.hashCode);
    _$hash = $jc(_$hash, fooEnumList.hashCode);
    _$hash = $jc(_$hash, fooEnumMap.hashCode);
    _$hash = $jc(_$hash, fooEnumSet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class XmlEnumsInputOutputBuilder
    implements Builder<XmlEnumsInputOutput, XmlEnumsInputOutputBuilder> {
  _$XmlEnumsInputOutput? _$v;

  _i3.FooEnum? _fooEnum1;
  _i3.FooEnum? get fooEnum1 => _$this._fooEnum1;
  set fooEnum1(_i3.FooEnum? fooEnum1) => _$this._fooEnum1 = fooEnum1;

  _i3.FooEnum? _fooEnum2;
  _i3.FooEnum? get fooEnum2 => _$this._fooEnum2;
  set fooEnum2(_i3.FooEnum? fooEnum2) => _$this._fooEnum2 = fooEnum2;

  _i3.FooEnum? _fooEnum3;
  _i3.FooEnum? get fooEnum3 => _$this._fooEnum3;
  set fooEnum3(_i3.FooEnum? fooEnum3) => _$this._fooEnum3 = fooEnum3;

  _i4.ListBuilder<_i3.FooEnum>? _fooEnumList;
  _i4.ListBuilder<_i3.FooEnum> get fooEnumList =>
      _$this._fooEnumList ??= new _i4.ListBuilder<_i3.FooEnum>();
  set fooEnumList(_i4.ListBuilder<_i3.FooEnum>? fooEnumList) =>
      _$this._fooEnumList = fooEnumList;

  _i4.MapBuilder<String, _i3.FooEnum>? _fooEnumMap;
  _i4.MapBuilder<String, _i3.FooEnum> get fooEnumMap =>
      _$this._fooEnumMap ??= new _i4.MapBuilder<String, _i3.FooEnum>();
  set fooEnumMap(_i4.MapBuilder<String, _i3.FooEnum>? fooEnumMap) =>
      _$this._fooEnumMap = fooEnumMap;

  _i4.SetBuilder<_i3.FooEnum>? _fooEnumSet;
  _i4.SetBuilder<_i3.FooEnum> get fooEnumSet =>
      _$this._fooEnumSet ??= new _i4.SetBuilder<_i3.FooEnum>();
  set fooEnumSet(_i4.SetBuilder<_i3.FooEnum>? fooEnumSet) =>
      _$this._fooEnumSet = fooEnumSet;

  XmlEnumsInputOutputBuilder() {
    XmlEnumsInputOutput._init(this);
  }

  XmlEnumsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fooEnum1 = $v.fooEnum1;
      _fooEnum2 = $v.fooEnum2;
      _fooEnum3 = $v.fooEnum3;
      _fooEnumList = $v.fooEnumList?.toBuilder();
      _fooEnumMap = $v.fooEnumMap?.toBuilder();
      _fooEnumSet = $v.fooEnumSet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlEnumsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlEnumsInputOutput;
  }

  @override
  void update(void Function(XmlEnumsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlEnumsInputOutput build() => _build();

  _$XmlEnumsInputOutput _build() {
    _$XmlEnumsInputOutput _$result;
    try {
      _$result = _$v ??
          new _$XmlEnumsInputOutput._(
              fooEnum1: fooEnum1,
              fooEnum2: fooEnum2,
              fooEnum3: fooEnum3,
              fooEnumList: _fooEnumList?.build(),
              fooEnumMap: _fooEnumMap?.build(),
              fooEnumSet: _fooEnumSet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fooEnumList';
        _fooEnumList?.build();
        _$failedField = 'fooEnumMap';
        _fooEnumMap?.build();
        _$failedField = 'fooEnumSet';
        _fooEnumSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'XmlEnumsInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
