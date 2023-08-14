// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prefix_list_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrefixListId extends PrefixListId {
  @override
  final String? description;
  @override
  final String? prefixListId;

  factory _$PrefixListId([void Function(PrefixListIdBuilder)? updates]) =>
      (new PrefixListIdBuilder()..update(updates))._build();

  _$PrefixListId._({this.description, this.prefixListId}) : super._();

  @override
  PrefixListId rebuild(void Function(PrefixListIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrefixListIdBuilder toBuilder() => new PrefixListIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrefixListId &&
        description == other.description &&
        prefixListId == other.prefixListId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, prefixListId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PrefixListIdBuilder
    implements Builder<PrefixListId, PrefixListIdBuilder> {
  _$PrefixListId? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _prefixListId;
  String? get prefixListId => _$this._prefixListId;
  set prefixListId(String? prefixListId) => _$this._prefixListId = prefixListId;

  PrefixListIdBuilder();

  PrefixListIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _prefixListId = $v.prefixListId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrefixListId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrefixListId;
  }

  @override
  void update(void Function(PrefixListIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrefixListId build() => _build();

  _$PrefixListId _build() {
    final _$result = _$v ??
        new _$PrefixListId._(
            description: description, prefixListId: prefixListId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
