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
    return $jf($jc(0, regionName.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
