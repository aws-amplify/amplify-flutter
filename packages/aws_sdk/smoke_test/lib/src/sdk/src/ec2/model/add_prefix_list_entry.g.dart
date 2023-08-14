// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_prefix_list_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddPrefixListEntry extends AddPrefixListEntry {
  @override
  final String? cidr;
  @override
  final String? description;

  factory _$AddPrefixListEntry(
          [void Function(AddPrefixListEntryBuilder)? updates]) =>
      (new AddPrefixListEntryBuilder()..update(updates))._build();

  _$AddPrefixListEntry._({this.cidr, this.description}) : super._();

  @override
  AddPrefixListEntry rebuild(
          void Function(AddPrefixListEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddPrefixListEntryBuilder toBuilder() =>
      new AddPrefixListEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddPrefixListEntry &&
        cidr == other.cidr &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AddPrefixListEntryBuilder
    implements Builder<AddPrefixListEntry, AddPrefixListEntryBuilder> {
  _$AddPrefixListEntry? _$v;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  AddPrefixListEntryBuilder();

  AddPrefixListEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidr = $v.cidr;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddPrefixListEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddPrefixListEntry;
  }

  @override
  void update(void Function(AddPrefixListEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddPrefixListEntry build() => _build();

  _$AddPrefixListEntry _build() {
    final _$result =
        _$v ?? new _$AddPrefixListEntry._(cidr: cidr, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
