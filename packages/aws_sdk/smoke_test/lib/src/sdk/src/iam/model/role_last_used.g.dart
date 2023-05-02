// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.role_last_used;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RoleLastUsed extends RoleLastUsed {
  @override
  final DateTime? lastUsedDate;
  @override
  final String? region;

  factory _$RoleLastUsed([void Function(RoleLastUsedBuilder)? updates]) =>
      (new RoleLastUsedBuilder()..update(updates))._build();

  _$RoleLastUsed._({this.lastUsedDate, this.region}) : super._();

  @override
  RoleLastUsed rebuild(void Function(RoleLastUsedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoleLastUsedBuilder toBuilder() => new RoleLastUsedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoleLastUsed &&
        lastUsedDate == other.lastUsedDate &&
        region == other.region;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lastUsedDate.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RoleLastUsedBuilder
    implements Builder<RoleLastUsed, RoleLastUsedBuilder> {
  _$RoleLastUsed? _$v;

  DateTime? _lastUsedDate;
  DateTime? get lastUsedDate => _$this._lastUsedDate;
  set lastUsedDate(DateTime? lastUsedDate) =>
      _$this._lastUsedDate = lastUsedDate;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  RoleLastUsedBuilder() {
    RoleLastUsed._init(this);
  }

  RoleLastUsedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastUsedDate = $v.lastUsedDate;
      _region = $v.region;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RoleLastUsed other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RoleLastUsed;
  }

  @override
  void update(void Function(RoleLastUsedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RoleLastUsed build() => _build();

  _$RoleLastUsed _build() {
    final _$result =
        _$v ?? new _$RoleLastUsed._(lastUsedDate: lastUsedDate, region: region);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
