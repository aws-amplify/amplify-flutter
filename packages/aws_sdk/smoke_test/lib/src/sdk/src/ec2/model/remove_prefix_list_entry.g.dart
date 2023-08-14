// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_prefix_list_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemovePrefixListEntry extends RemovePrefixListEntry {
  @override
  final String? cidr;

  factory _$RemovePrefixListEntry(
          [void Function(RemovePrefixListEntryBuilder)? updates]) =>
      (new RemovePrefixListEntryBuilder()..update(updates))._build();

  _$RemovePrefixListEntry._({this.cidr}) : super._();

  @override
  RemovePrefixListEntry rebuild(
          void Function(RemovePrefixListEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemovePrefixListEntryBuilder toBuilder() =>
      new RemovePrefixListEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemovePrefixListEntry && cidr == other.cidr;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RemovePrefixListEntryBuilder
    implements Builder<RemovePrefixListEntry, RemovePrefixListEntryBuilder> {
  _$RemovePrefixListEntry? _$v;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  RemovePrefixListEntryBuilder();

  RemovePrefixListEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidr = $v.cidr;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemovePrefixListEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemovePrefixListEntry;
  }

  @override
  void update(void Function(RemovePrefixListEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemovePrefixListEntry build() => _build();

  _$RemovePrefixListEntry _build() {
    final _$result = _$v ?? new _$RemovePrefixListEntry._(cidr: cidr);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
