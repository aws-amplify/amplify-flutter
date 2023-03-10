// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.existing_object_replication;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExistingObjectReplication extends ExistingObjectReplication {
  @override
  final _i2.ExistingObjectReplicationStatus status;

  factory _$ExistingObjectReplication(
          [void Function(ExistingObjectReplicationBuilder)? updates]) =>
      (new ExistingObjectReplicationBuilder()..update(updates))._build();

  _$ExistingObjectReplication._({required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, r'ExistingObjectReplication', 'status');
  }

  @override
  ExistingObjectReplication rebuild(
          void Function(ExistingObjectReplicationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExistingObjectReplicationBuilder toBuilder() =>
      new ExistingObjectReplicationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExistingObjectReplication && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExistingObjectReplicationBuilder
    implements
        Builder<ExistingObjectReplication, ExistingObjectReplicationBuilder> {
  _$ExistingObjectReplication? _$v;

  _i2.ExistingObjectReplicationStatus? _status;
  _i2.ExistingObjectReplicationStatus? get status => _$this._status;
  set status(_i2.ExistingObjectReplicationStatus? status) =>
      _$this._status = status;

  ExistingObjectReplicationBuilder() {
    ExistingObjectReplication._init(this);
  }

  ExistingObjectReplicationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExistingObjectReplication other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExistingObjectReplication;
  }

  @override
  void update(void Function(ExistingObjectReplicationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExistingObjectReplication build() => _build();

  _$ExistingObjectReplication _build() {
    final _$result = _$v ??
        new _$ExistingObjectReplication._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ExistingObjectReplication', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
