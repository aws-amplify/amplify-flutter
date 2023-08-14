// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prefix_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrefixList extends PrefixList {
  @override
  final _i2.BuiltList<String>? cidrs;
  @override
  final String? prefixListId;
  @override
  final String? prefixListName;

  factory _$PrefixList([void Function(PrefixListBuilder)? updates]) =>
      (new PrefixListBuilder()..update(updates))._build();

  _$PrefixList._({this.cidrs, this.prefixListId, this.prefixListName})
      : super._();

  @override
  PrefixList rebuild(void Function(PrefixListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrefixListBuilder toBuilder() => new PrefixListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrefixList &&
        cidrs == other.cidrs &&
        prefixListId == other.prefixListId &&
        prefixListName == other.prefixListName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidrs.hashCode);
    _$hash = $jc(_$hash, prefixListId.hashCode);
    _$hash = $jc(_$hash, prefixListName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PrefixListBuilder implements Builder<PrefixList, PrefixListBuilder> {
  _$PrefixList? _$v;

  _i2.ListBuilder<String>? _cidrs;
  _i2.ListBuilder<String> get cidrs =>
      _$this._cidrs ??= new _i2.ListBuilder<String>();
  set cidrs(_i2.ListBuilder<String>? cidrs) => _$this._cidrs = cidrs;

  String? _prefixListId;
  String? get prefixListId => _$this._prefixListId;
  set prefixListId(String? prefixListId) => _$this._prefixListId = prefixListId;

  String? _prefixListName;
  String? get prefixListName => _$this._prefixListName;
  set prefixListName(String? prefixListName) =>
      _$this._prefixListName = prefixListName;

  PrefixListBuilder();

  PrefixListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidrs = $v.cidrs?.toBuilder();
      _prefixListId = $v.prefixListId;
      _prefixListName = $v.prefixListName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrefixList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrefixList;
  }

  @override
  void update(void Function(PrefixListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrefixList build() => _build();

  _$PrefixList _build() {
    _$PrefixList _$result;
    try {
      _$result = _$v ??
          new _$PrefixList._(
              cidrs: _cidrs?.build(),
              prefixListId: prefixListId,
              prefixListName: prefixListName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cidrs';
        _cidrs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PrefixList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
