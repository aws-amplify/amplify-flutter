// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.replica;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Replica extends Replica {
  @override
  final String? regionName;

  factory _$Replica([void Function(ReplicaBuilder)? updates]) =>
      (new ReplicaBuilder()..update(updates))._build();

  _$Replica._({this.regionName}) : super._();

  @override
  Replica rebuild(void Function(ReplicaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicaBuilder toBuilder() => new ReplicaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Replica && regionName == other.regionName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regionName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicaBuilder implements Builder<Replica, ReplicaBuilder> {
  _$Replica? _$v;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  ReplicaBuilder() {
    Replica._init(this);
  }

  ReplicaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionName = $v.regionName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Replica other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Replica;
  }

  @override
  void update(void Function(ReplicaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Replica build() => _build();

  _$Replica _build() {
    final _$result = _$v ?? new _$Replica._(regionName: regionName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
