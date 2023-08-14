// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prefix_list_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrefixListEntry extends PrefixListEntry {
  @override
  final String? cidr;
  @override
  final String? description;

  factory _$PrefixListEntry([void Function(PrefixListEntryBuilder)? updates]) =>
      (new PrefixListEntryBuilder()..update(updates))._build();

  _$PrefixListEntry._({this.cidr, this.description}) : super._();

  @override
  PrefixListEntry rebuild(void Function(PrefixListEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrefixListEntryBuilder toBuilder() =>
      new PrefixListEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrefixListEntry &&
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

class PrefixListEntryBuilder
    implements Builder<PrefixListEntry, PrefixListEntryBuilder> {
  _$PrefixListEntry? _$v;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  PrefixListEntryBuilder();

  PrefixListEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidr = $v.cidr;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrefixListEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrefixListEntry;
  }

  @override
  void update(void Function(PrefixListEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrefixListEntry build() => _build();

  _$PrefixListEntry _build() {
    final _$result =
        _$v ?? new _$PrefixListEntry._(cidr: cidr, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
