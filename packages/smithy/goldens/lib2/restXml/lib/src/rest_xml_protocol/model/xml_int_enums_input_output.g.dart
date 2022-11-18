// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.xml_int_enums_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlIntEnumsInputOutput extends XmlIntEnumsInputOutput {
  @override
  final _i3.IntegerEnum? intEnum1;
  @override
  final _i3.IntegerEnum? intEnum2;
  @override
  final _i3.IntegerEnum? intEnum3;
  @override
  final _i4.BuiltList<_i3.IntegerEnum>? intEnumList;
  @override
  final _i4.BuiltMap<String, _i3.IntegerEnum>? intEnumMap;
  @override
  final _i4.BuiltSet<_i3.IntegerEnum>? intEnumSet;

  factory _$XmlIntEnumsInputOutput(
          [void Function(XmlIntEnumsInputOutputBuilder)? updates]) =>
      (new XmlIntEnumsInputOutputBuilder()..update(updates))._build();

  _$XmlIntEnumsInputOutput._(
      {this.intEnum1,
      this.intEnum2,
      this.intEnum3,
      this.intEnumList,
      this.intEnumMap,
      this.intEnumSet})
      : super._();

  @override
  XmlIntEnumsInputOutput rebuild(
          void Function(XmlIntEnumsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlIntEnumsInputOutputBuilder toBuilder() =>
      new XmlIntEnumsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlIntEnumsInputOutput &&
        intEnum1 == other.intEnum1 &&
        intEnum2 == other.intEnum2 &&
        intEnum3 == other.intEnum3 &&
        intEnumList == other.intEnumList &&
        intEnumMap == other.intEnumMap &&
        intEnumSet == other.intEnumSet;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, intEnum1.hashCode), intEnum2.hashCode),
                    intEnum3.hashCode),
                intEnumList.hashCode),
            intEnumMap.hashCode),
        intEnumSet.hashCode));
  }
}

class XmlIntEnumsInputOutputBuilder
    implements Builder<XmlIntEnumsInputOutput, XmlIntEnumsInputOutputBuilder> {
  _$XmlIntEnumsInputOutput? _$v;

  _i3.IntegerEnum? _intEnum1;
  _i3.IntegerEnum? get intEnum1 => _$this._intEnum1;
  set intEnum1(_i3.IntegerEnum? intEnum1) => _$this._intEnum1 = intEnum1;

  _i3.IntegerEnum? _intEnum2;
  _i3.IntegerEnum? get intEnum2 => _$this._intEnum2;
  set intEnum2(_i3.IntegerEnum? intEnum2) => _$this._intEnum2 = intEnum2;

  _i3.IntegerEnum? _intEnum3;
  _i3.IntegerEnum? get intEnum3 => _$this._intEnum3;
  set intEnum3(_i3.IntegerEnum? intEnum3) => _$this._intEnum3 = intEnum3;

  _i4.ListBuilder<_i3.IntegerEnum>? _intEnumList;
  _i4.ListBuilder<_i3.IntegerEnum> get intEnumList =>
      _$this._intEnumList ??= new _i4.ListBuilder<_i3.IntegerEnum>();
  set intEnumList(_i4.ListBuilder<_i3.IntegerEnum>? intEnumList) =>
      _$this._intEnumList = intEnumList;

  _i4.MapBuilder<String, _i3.IntegerEnum>? _intEnumMap;
  _i4.MapBuilder<String, _i3.IntegerEnum> get intEnumMap =>
      _$this._intEnumMap ??= new _i4.MapBuilder<String, _i3.IntegerEnum>();
  set intEnumMap(_i4.MapBuilder<String, _i3.IntegerEnum>? intEnumMap) =>
      _$this._intEnumMap = intEnumMap;

  _i4.SetBuilder<_i3.IntegerEnum>? _intEnumSet;
  _i4.SetBuilder<_i3.IntegerEnum> get intEnumSet =>
      _$this._intEnumSet ??= new _i4.SetBuilder<_i3.IntegerEnum>();
  set intEnumSet(_i4.SetBuilder<_i3.IntegerEnum>? intEnumSet) =>
      _$this._intEnumSet = intEnumSet;

  XmlIntEnumsInputOutputBuilder() {
    XmlIntEnumsInputOutput._init(this);
  }

  XmlIntEnumsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _intEnum1 = $v.intEnum1;
      _intEnum2 = $v.intEnum2;
      _intEnum3 = $v.intEnum3;
      _intEnumList = $v.intEnumList?.toBuilder();
      _intEnumMap = $v.intEnumMap?.toBuilder();
      _intEnumSet = $v.intEnumSet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlIntEnumsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlIntEnumsInputOutput;
  }

  @override
  void update(void Function(XmlIntEnumsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlIntEnumsInputOutput build() => _build();

  _$XmlIntEnumsInputOutput _build() {
    _$XmlIntEnumsInputOutput _$result;
    try {
      _$result = _$v ??
          new _$XmlIntEnumsInputOutput._(
              intEnum1: intEnum1,
              intEnum2: intEnum2,
              intEnum3: intEnum3,
              intEnumList: _intEnumList?.build(),
              intEnumMap: _intEnumMap?.build(),
              intEnumSet: _intEnumSet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'intEnumList';
        _intEnumList?.build();
        _$failedField = 'intEnumMap';
        _intEnumMap?.build();
        _$failedField = 'intEnumSet';
        _intEnumSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'XmlIntEnumsInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
