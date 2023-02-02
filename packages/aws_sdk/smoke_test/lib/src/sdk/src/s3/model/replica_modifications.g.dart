// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.replica_modifications;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaModifications extends ReplicaModifications {
  @override
  final _i2.ReplicaModificationsStatus status;

  factory _$ReplicaModifications(
          [void Function(ReplicaModificationsBuilder)? updates]) =>
      (new ReplicaModificationsBuilder()..update(updates))._build();

  _$ReplicaModifications._({required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, r'ReplicaModifications', 'status');
  }

  @override
  ReplicaModifications rebuild(
          void Function(ReplicaModificationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicaModificationsBuilder toBuilder() =>
      new ReplicaModificationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicaModifications && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicaModificationsBuilder
    implements Builder<ReplicaModifications, ReplicaModificationsBuilder> {
  _$ReplicaModifications? _$v;

  _i2.ReplicaModificationsStatus? _status;
  _i2.ReplicaModificationsStatus? get status => _$this._status;
  set status(_i2.ReplicaModificationsStatus? status) => _$this._status = status;

  ReplicaModificationsBuilder() {
    ReplicaModifications._init(this);
  }

  ReplicaModificationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicaModifications other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicaModifications;
  }

  @override
  void update(void Function(ReplicaModificationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicaModifications build() => _build();

  _$ReplicaModifications _build() {
    final _$result = _$v ??
        new _$ReplicaModifications._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ReplicaModifications', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
