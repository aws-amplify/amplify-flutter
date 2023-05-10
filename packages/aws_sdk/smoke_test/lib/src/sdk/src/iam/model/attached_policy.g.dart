// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.attached_policy;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachedPolicy extends AttachedPolicy {
  @override
  final String? policyName;
  @override
  final String? policyArn;

  factory _$AttachedPolicy([void Function(AttachedPolicyBuilder)? updates]) =>
      (new AttachedPolicyBuilder()..update(updates))._build();

  _$AttachedPolicy._({this.policyName, this.policyArn}) : super._();

  @override
  AttachedPolicy rebuild(void Function(AttachedPolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachedPolicyBuilder toBuilder() =>
      new AttachedPolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachedPolicy &&
        policyName == other.policyName &&
        policyArn == other.policyArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jc(_$hash, policyArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttachedPolicyBuilder
    implements Builder<AttachedPolicy, AttachedPolicyBuilder> {
  _$AttachedPolicy? _$v;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  AttachedPolicyBuilder() {
    AttachedPolicy._init(this);
  }

  AttachedPolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyName = $v.policyName;
      _policyArn = $v.policyArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachedPolicy other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachedPolicy;
  }

  @override
  void update(void Function(AttachedPolicyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachedPolicy build() => _build();

  _$AttachedPolicy _build() {
    final _$result = _$v ??
        new _$AttachedPolicy._(policyName: policyName, policyArn: policyArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
