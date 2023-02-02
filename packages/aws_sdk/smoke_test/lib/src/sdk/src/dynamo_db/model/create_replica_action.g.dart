// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.create_replica_action;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateReplicaAction extends CreateReplicaAction {
  @override
  final String regionName;

  factory _$CreateReplicaAction(
          [void Function(CreateReplicaActionBuilder)? updates]) =>
      (new CreateReplicaActionBuilder()..update(updates))._build();

  _$CreateReplicaAction._({required this.regionName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        regionName, r'CreateReplicaAction', 'regionName');
  }

  @override
  CreateReplicaAction rebuild(
          void Function(CreateReplicaActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateReplicaActionBuilder toBuilder() =>
      new CreateReplicaActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateReplicaAction && regionName == other.regionName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regionName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateReplicaActionBuilder
    implements Builder<CreateReplicaAction, CreateReplicaActionBuilder> {
  _$CreateReplicaAction? _$v;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  CreateReplicaActionBuilder() {
    CreateReplicaAction._init(this);
  }

  CreateReplicaActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionName = $v.regionName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateReplicaAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateReplicaAction;
  }

  @override
  void update(void Function(CreateReplicaActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateReplicaAction build() => _build();

  _$CreateReplicaAction _build() {
    final _$result = _$v ??
        new _$CreateReplicaAction._(
            regionName: BuiltValueNullFieldError.checkNotNull(
                regionName, r'CreateReplicaAction', 'regionName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
