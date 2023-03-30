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
    var _$hash = 0;
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
