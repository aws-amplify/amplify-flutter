// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.xml_lists_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlListsInputOutput extends XmlListsInputOutput {
  @override
  final _i3.BuiltList<bool>? booleanList;
  @override
  final _i3.BuiltList<_i4.FooEnum>? enumList;
  @override
  final _i3.BuiltList<String>? flattenedList;
  @override
  final _i3.BuiltList<String>? flattenedList2;
  @override
  final _i3.BuiltList<String>? flattenedListWithMemberNamespace;
  @override
  final _i3.BuiltList<String>? flattenedListWithNamespace;
  @override
  final _i3.BuiltList<_i5.StructureListMember>? flattenedStructureList;
  @override
  final _i3.BuiltList<int>? integerList;
  @override
  final _i3.BuiltList<_i3.BuiltList<String>>? nestedStringList;
  @override
  final _i3.BuiltList<String>? renamedListMembers;
  @override
  final _i3.BuiltList<String>? stringList;
  @override
  final _i3.BuiltSet<String>? stringSet;
  @override
  final _i3.BuiltList<_i5.StructureListMember>? structureList;
  @override
  final _i3.BuiltList<DateTime>? timestampList;

  factory _$XmlListsInputOutput(
          [void Function(XmlListsInputOutputBuilder)? updates]) =>
      (new XmlListsInputOutputBuilder()..update(updates))._build();

  _$XmlListsInputOutput._(
      {this.booleanList,
      this.enumList,
      this.flattenedList,
      this.flattenedList2,
      this.flattenedListWithMemberNamespace,
      this.flattenedListWithNamespace,
      this.flattenedStructureList,
      this.integerList,
      this.nestedStringList,
      this.renamedListMembers,
      this.stringList,
      this.stringSet,
      this.structureList,
      this.timestampList})
      : super._();

  @override
  XmlListsInputOutput rebuild(
          void Function(XmlListsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlListsInputOutputBuilder toBuilder() =>
      new XmlListsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlListsInputOutput &&
        booleanList == other.booleanList &&
        enumList == other.enumList &&
        flattenedList == other.flattenedList &&
        flattenedList2 == other.flattenedList2 &&
        flattenedListWithMemberNamespace ==
            other.flattenedListWithMemberNamespace &&
        flattenedListWithNamespace == other.flattenedListWithNamespace &&
        flattenedStructureList == other.flattenedStructureList &&
        integerList == other.integerList &&
        nestedStringList == other.nestedStringList &&
        renamedListMembers == other.renamedListMembers &&
        stringList == other.stringList &&
        stringSet == other.stringSet &&
        structureList == other.structureList &&
        timestampList == other.timestampList;
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
                                                        $jc(
                                                            0,
                                                            booleanList
                                                                .hashCode),
                                                        enumList.hashCode),
                                                    flattenedList.hashCode),
                                                flattenedList2.hashCode),
                                            flattenedListWithMemberNamespace
                                                .hashCode),
                                        flattenedListWithNamespace.hashCode),
                                    flattenedStructureList.hashCode),
                                integerList.hashCode),
                            nestedStringList.hashCode),
                        renamedListMembers.hashCode),
                    stringList.hashCode),
                stringSet.hashCode),
            structureList.hashCode),
        timestampList.hashCode));
  }
}

class XmlListsInputOutputBuilder
    implements Builder<XmlListsInputOutput, XmlListsInputOutputBuilder> {
  _$XmlListsInputOutput? _$v;

  _i3.ListBuilder<bool>? _booleanList;
  _i3.ListBuilder<bool> get booleanList =>
      _$this._booleanList ??= new _i3.ListBuilder<bool>();
  set booleanList(_i3.ListBuilder<bool>? booleanList) =>
      _$this._booleanList = booleanList;

  _i3.ListBuilder<_i4.FooEnum>? _enumList;
  _i3.ListBuilder<_i4.FooEnum> get enumList =>
      _$this._enumList ??= new _i3.ListBuilder<_i4.FooEnum>();
  set enumList(_i3.ListBuilder<_i4.FooEnum>? enumList) =>
      _$this._enumList = enumList;

  _i3.ListBuilder<String>? _flattenedList;
  _i3.ListBuilder<String> get flattenedList =>
      _$this._flattenedList ??= new _i3.ListBuilder<String>();
  set flattenedList(_i3.ListBuilder<String>? flattenedList) =>
      _$this._flattenedList = flattenedList;

  _i3.ListBuilder<String>? _flattenedList2;
  _i3.ListBuilder<String> get flattenedList2 =>
      _$this._flattenedList2 ??= new _i3.ListBuilder<String>();
  set flattenedList2(_i3.ListBuilder<String>? flattenedList2) =>
      _$this._flattenedList2 = flattenedList2;

  _i3.ListBuilder<String>? _flattenedListWithMemberNamespace;
  _i3.ListBuilder<String> get flattenedListWithMemberNamespace =>
      _$this._flattenedListWithMemberNamespace ??=
          new _i3.ListBuilder<String>();
  set flattenedListWithMemberNamespace(
          _i3.ListBuilder<String>? flattenedListWithMemberNamespace) =>
      _$this._flattenedListWithMemberNamespace =
          flattenedListWithMemberNamespace;

  _i3.ListBuilder<String>? _flattenedListWithNamespace;
  _i3.ListBuilder<String> get flattenedListWithNamespace =>
      _$this._flattenedListWithNamespace ??= new _i3.ListBuilder<String>();
  set flattenedListWithNamespace(
          _i3.ListBuilder<String>? flattenedListWithNamespace) =>
      _$this._flattenedListWithNamespace = flattenedListWithNamespace;

  _i3.ListBuilder<_i5.StructureListMember>? _flattenedStructureList;
  _i3.ListBuilder<_i5.StructureListMember> get flattenedStructureList =>
      _$this._flattenedStructureList ??=
          new _i3.ListBuilder<_i5.StructureListMember>();
  set flattenedStructureList(
          _i3.ListBuilder<_i5.StructureListMember>? flattenedStructureList) =>
      _$this._flattenedStructureList = flattenedStructureList;

  _i3.ListBuilder<int>? _integerList;
  _i3.ListBuilder<int> get integerList =>
      _$this._integerList ??= new _i3.ListBuilder<int>();
  set integerList(_i3.ListBuilder<int>? integerList) =>
      _$this._integerList = integerList;

  _i3.ListBuilder<_i3.BuiltList<String>>? _nestedStringList;
  _i3.ListBuilder<_i3.BuiltList<String>> get nestedStringList =>
      _$this._nestedStringList ??= new _i3.ListBuilder<_i3.BuiltList<String>>();
  set nestedStringList(
          _i3.ListBuilder<_i3.BuiltList<String>>? nestedStringList) =>
      _$this._nestedStringList = nestedStringList;

  _i3.ListBuilder<String>? _renamedListMembers;
  _i3.ListBuilder<String> get renamedListMembers =>
      _$this._renamedListMembers ??= new _i3.ListBuilder<String>();
  set renamedListMembers(_i3.ListBuilder<String>? renamedListMembers) =>
      _$this._renamedListMembers = renamedListMembers;

  _i3.ListBuilder<String>? _stringList;
  _i3.ListBuilder<String> get stringList =>
      _$this._stringList ??= new _i3.ListBuilder<String>();
  set stringList(_i3.ListBuilder<String>? stringList) =>
      _$this._stringList = stringList;

  _i3.SetBuilder<String>? _stringSet;
  _i3.SetBuilder<String> get stringSet =>
      _$this._stringSet ??= new _i3.SetBuilder<String>();
  set stringSet(_i3.SetBuilder<String>? stringSet) =>
      _$this._stringSet = stringSet;

  _i3.ListBuilder<_i5.StructureListMember>? _structureList;
  _i3.ListBuilder<_i5.StructureListMember> get structureList =>
      _$this._structureList ??= new _i3.ListBuilder<_i5.StructureListMember>();
  set structureList(_i3.ListBuilder<_i5.StructureListMember>? structureList) =>
      _$this._structureList = structureList;

  _i3.ListBuilder<DateTime>? _timestampList;
  _i3.ListBuilder<DateTime> get timestampList =>
      _$this._timestampList ??= new _i3.ListBuilder<DateTime>();
  set timestampList(_i3.ListBuilder<DateTime>? timestampList) =>
      _$this._timestampList = timestampList;

  XmlListsInputOutputBuilder() {
    XmlListsInputOutput._init(this);
  }

  XmlListsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _booleanList = $v.booleanList?.toBuilder();
      _enumList = $v.enumList?.toBuilder();
      _flattenedList = $v.flattenedList?.toBuilder();
      _flattenedList2 = $v.flattenedList2?.toBuilder();
      _flattenedListWithMemberNamespace =
          $v.flattenedListWithMemberNamespace?.toBuilder();
      _flattenedListWithNamespace = $v.flattenedListWithNamespace?.toBuilder();
      _flattenedStructureList = $v.flattenedStructureList?.toBuilder();
      _integerList = $v.integerList?.toBuilder();
      _nestedStringList = $v.nestedStringList?.toBuilder();
      _renamedListMembers = $v.renamedListMembers?.toBuilder();
      _stringList = $v.stringList?.toBuilder();
      _stringSet = $v.stringSet?.toBuilder();
      _structureList = $v.structureList?.toBuilder();
      _timestampList = $v.timestampList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlListsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlListsInputOutput;
  }

  @override
  void update(void Function(XmlListsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlListsInputOutput build() => _build();

  _$XmlListsInputOutput _build() {
    _$XmlListsInputOutput _$result;
    try {
      _$result = _$v ??
          new _$XmlListsInputOutput._(
              booleanList: _booleanList?.build(),
              enumList: _enumList?.build(),
              flattenedList: _flattenedList?.build(),
              flattenedList2: _flattenedList2?.build(),
              flattenedListWithMemberNamespace:
                  _flattenedListWithMemberNamespace?.build(),
              flattenedListWithNamespace: _flattenedListWithNamespace?.build(),
              flattenedStructureList: _flattenedStructureList?.build(),
              integerList: _integerList?.build(),
              nestedStringList: _nestedStringList?.build(),
              renamedListMembers: _renamedListMembers?.build(),
              stringList: _stringList?.build(),
              stringSet: _stringSet?.build(),
              structureList: _structureList?.build(),
              timestampList: _timestampList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'booleanList';
        _booleanList?.build();
        _$failedField = 'enumList';
        _enumList?.build();
        _$failedField = 'flattenedList';
        _flattenedList?.build();
        _$failedField = 'flattenedList2';
        _flattenedList2?.build();
        _$failedField = 'flattenedListWithMemberNamespace';
        _flattenedListWithMemberNamespace?.build();
        _$failedField = 'flattenedListWithNamespace';
        _flattenedListWithNamespace?.build();
        _$failedField = 'flattenedStructureList';
        _flattenedStructureList?.build();
        _$failedField = 'integerList';
        _integerList?.build();
        _$failedField = 'nestedStringList';
        _nestedStringList?.build();
        _$failedField = 'renamedListMembers';
        _renamedListMembers?.build();
        _$failedField = 'stringList';
        _stringList?.build();
        _$failedField = 'stringSet';
        _stringSet?.build();
        _$failedField = 'structureList';
        _structureList?.build();
        _$failedField = 'timestampList';
        _timestampList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'XmlListsInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
