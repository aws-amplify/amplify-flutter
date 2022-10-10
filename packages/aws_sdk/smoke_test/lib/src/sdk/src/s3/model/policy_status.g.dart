// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.policy_status;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolicyStatus extends PolicyStatus {
  @override
  final bool? isPublic;

  factory _$PolicyStatus([void Function(PolicyStatusBuilder)? updates]) =>
      (new PolicyStatusBuilder()..update(updates))._build();

  _$PolicyStatus._({this.isPublic}) : super._();

  @override
  PolicyStatus rebuild(void Function(PolicyStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolicyStatusBuilder toBuilder() => new PolicyStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolicyStatus && isPublic == other.isPublic;
  }

  @override
  int get hashCode {
    return $jf($jc(0, isPublic.hashCode));
  }
}

class PolicyStatusBuilder
    implements Builder<PolicyStatus, PolicyStatusBuilder> {
  _$PolicyStatus? _$v;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  PolicyStatusBuilder() {
    PolicyStatus._init(this);
  }

  PolicyStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isPublic = $v.isPublic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolicyStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PolicyStatus;
  }

  @override
  void update(void Function(PolicyStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolicyStatus build() => _build();

  _$PolicyStatus _build() {
    final _$result = _$v ?? new _$PolicyStatus._(isPublic: isPublic);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
