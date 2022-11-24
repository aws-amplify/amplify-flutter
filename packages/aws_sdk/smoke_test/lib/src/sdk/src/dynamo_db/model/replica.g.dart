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
    return $jf($jc(0, regionName.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
