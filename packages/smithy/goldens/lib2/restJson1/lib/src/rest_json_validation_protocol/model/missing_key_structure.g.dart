// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'missing_key_structure.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MissingKeyStructure extends MissingKeyStructure {
  @override
  final String hi;

  factory _$MissingKeyStructure(
          [void Function(MissingKeyStructureBuilder)? updates]) =>
      (new MissingKeyStructureBuilder()..update(updates))._build();

  _$MissingKeyStructure._({required this.hi}) : super._() {
    BuiltValueNullFieldError.checkNotNull(hi, r'MissingKeyStructure', 'hi');
  }

  @override
  MissingKeyStructure rebuild(
          void Function(MissingKeyStructureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MissingKeyStructureBuilder toBuilder() =>
      new MissingKeyStructureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MissingKeyStructure && hi == other.hi;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hi.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MissingKeyStructureBuilder
    implements Builder<MissingKeyStructure, MissingKeyStructureBuilder> {
  _$MissingKeyStructure? _$v;

  String? _hi;
  String? get hi => _$this._hi;
  set hi(String? hi) => _$this._hi = hi;

  MissingKeyStructureBuilder();

  MissingKeyStructureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hi = $v.hi;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MissingKeyStructure other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MissingKeyStructure;
  }

  @override
  void update(void Function(MissingKeyStructureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MissingKeyStructure build() => _build();

  _$MissingKeyStructure _build() {
    final _$result = _$v ??
        new _$MissingKeyStructure._(
            hi: BuiltValueNullFieldError.checkNotNull(
                hi, r'MissingKeyStructure', 'hi'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
