// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_lists_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryListsInput extends QueryListsInput {
  @override
  final _i3.BuiltList<String>? listArg;
  @override
  final _i3.BuiltList<GreetingStruct>? complexListArg;
  @override
  final _i3.BuiltList<String>? flattenedListArg;
  @override
  final _i3.BuiltList<String>? listArgWithXmlNameMember;
  @override
  final _i3.BuiltList<String>? flattenedListArgWithXmlName;
  @override
  final NestedStructWithList? nestedWithList;

  factory _$QueryListsInput([void Function(QueryListsInputBuilder)? updates]) =>
      (new QueryListsInputBuilder()..update(updates))._build();

  _$QueryListsInput._(
      {this.listArg,
      this.complexListArg,
      this.flattenedListArg,
      this.listArgWithXmlNameMember,
      this.flattenedListArgWithXmlName,
      this.nestedWithList})
      : super._();

  @override
  QueryListsInput rebuild(void Function(QueryListsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryListsInputBuilder toBuilder() =>
      new QueryListsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryListsInput &&
        listArg == other.listArg &&
        complexListArg == other.complexListArg &&
        flattenedListArg == other.flattenedListArg &&
        listArgWithXmlNameMember == other.listArgWithXmlNameMember &&
        flattenedListArgWithXmlName == other.flattenedListArgWithXmlName &&
        nestedWithList == other.nestedWithList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listArg.hashCode);
    _$hash = $jc(_$hash, complexListArg.hashCode);
    _$hash = $jc(_$hash, flattenedListArg.hashCode);
    _$hash = $jc(_$hash, listArgWithXmlNameMember.hashCode);
    _$hash = $jc(_$hash, flattenedListArgWithXmlName.hashCode);
    _$hash = $jc(_$hash, nestedWithList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class QueryListsInputBuilder
    implements Builder<QueryListsInput, QueryListsInputBuilder> {
  _$QueryListsInput? _$v;

  _i3.ListBuilder<String>? _listArg;
  _i3.ListBuilder<String> get listArg =>
      _$this._listArg ??= new _i3.ListBuilder<String>();
  set listArg(_i3.ListBuilder<String>? listArg) => _$this._listArg = listArg;

  _i3.ListBuilder<GreetingStruct>? _complexListArg;
  _i3.ListBuilder<GreetingStruct> get complexListArg =>
      _$this._complexListArg ??= new _i3.ListBuilder<GreetingStruct>();
  set complexListArg(_i3.ListBuilder<GreetingStruct>? complexListArg) =>
      _$this._complexListArg = complexListArg;

  _i3.ListBuilder<String>? _flattenedListArg;
  _i3.ListBuilder<String> get flattenedListArg =>
      _$this._flattenedListArg ??= new _i3.ListBuilder<String>();
  set flattenedListArg(_i3.ListBuilder<String>? flattenedListArg) =>
      _$this._flattenedListArg = flattenedListArg;

  _i3.ListBuilder<String>? _listArgWithXmlNameMember;
  _i3.ListBuilder<String> get listArgWithXmlNameMember =>
      _$this._listArgWithXmlNameMember ??= new _i3.ListBuilder<String>();
  set listArgWithXmlNameMember(
          _i3.ListBuilder<String>? listArgWithXmlNameMember) =>
      _$this._listArgWithXmlNameMember = listArgWithXmlNameMember;

  _i3.ListBuilder<String>? _flattenedListArgWithXmlName;
  _i3.ListBuilder<String> get flattenedListArgWithXmlName =>
      _$this._flattenedListArgWithXmlName ??= new _i3.ListBuilder<String>();
  set flattenedListArgWithXmlName(
          _i3.ListBuilder<String>? flattenedListArgWithXmlName) =>
      _$this._flattenedListArgWithXmlName = flattenedListArgWithXmlName;

  NestedStructWithListBuilder? _nestedWithList;
  NestedStructWithListBuilder get nestedWithList =>
      _$this._nestedWithList ??= new NestedStructWithListBuilder();
  set nestedWithList(NestedStructWithListBuilder? nestedWithList) =>
      _$this._nestedWithList = nestedWithList;

  QueryListsInputBuilder();

  QueryListsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listArg = $v.listArg?.toBuilder();
      _complexListArg = $v.complexListArg?.toBuilder();
      _flattenedListArg = $v.flattenedListArg?.toBuilder();
      _listArgWithXmlNameMember = $v.listArgWithXmlNameMember?.toBuilder();
      _flattenedListArgWithXmlName =
          $v.flattenedListArgWithXmlName?.toBuilder();
      _nestedWithList = $v.nestedWithList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryListsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryListsInput;
  }

  @override
  void update(void Function(QueryListsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryListsInput build() => _build();

  _$QueryListsInput _build() {
    _$QueryListsInput _$result;
    try {
      _$result = _$v ??
          new _$QueryListsInput._(
              listArg: _listArg?.build(),
              complexListArg: _complexListArg?.build(),
              flattenedListArg: _flattenedListArg?.build(),
              listArgWithXmlNameMember: _listArgWithXmlNameMember?.build(),
              flattenedListArgWithXmlName:
                  _flattenedListArgWithXmlName?.build(),
              nestedWithList: _nestedWithList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listArg';
        _listArg?.build();
        _$failedField = 'complexListArg';
        _complexListArg?.build();
        _$failedField = 'flattenedListArg';
        _flattenedListArg?.build();
        _$failedField = 'listArgWithXmlNameMember';
        _listArgWithXmlNameMember?.build();
        _$failedField = 'flattenedListArgWithXmlName';
        _flattenedListArgWithXmlName?.build();
        _$failedField = 'nestedWithList';
        _nestedWithList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QueryListsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
