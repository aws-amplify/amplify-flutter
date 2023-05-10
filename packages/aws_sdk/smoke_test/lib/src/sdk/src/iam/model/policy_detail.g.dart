// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.policy_detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolicyDetail extends PolicyDetail {
  @override
  final String? policyName;
  @override
  final String? policyDocument;

  factory _$PolicyDetail([void Function(PolicyDetailBuilder)? updates]) =>
      (new PolicyDetailBuilder()..update(updates))._build();

  _$PolicyDetail._({this.policyName, this.policyDocument}) : super._();

  @override
  PolicyDetail rebuild(void Function(PolicyDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolicyDetailBuilder toBuilder() => new PolicyDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolicyDetail &&
        policyName == other.policyName &&
        policyDocument == other.policyDocument;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jc(_$hash, policyDocument.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PolicyDetailBuilder
    implements Builder<PolicyDetail, PolicyDetailBuilder> {
  _$PolicyDetail? _$v;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  String? _policyDocument;
  String? get policyDocument => _$this._policyDocument;
  set policyDocument(String? policyDocument) =>
      _$this._policyDocument = policyDocument;

  PolicyDetailBuilder() {
    PolicyDetail._init(this);
  }

  PolicyDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyName = $v.policyName;
      _policyDocument = $v.policyDocument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolicyDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PolicyDetail;
  }

  @override
  void update(void Function(PolicyDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolicyDetail build() => _build();

  _$PolicyDetail _build() {
    final _$result = _$v ??
        new _$PolicyDetail._(
            policyName: policyName, policyDocument: policyDocument);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
