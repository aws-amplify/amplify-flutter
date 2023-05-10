// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.policy_group;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolicyGroup extends PolicyGroup {
  @override
  final String? groupName;
  @override
  final String? groupId;

  factory _$PolicyGroup([void Function(PolicyGroupBuilder)? updates]) =>
      (new PolicyGroupBuilder()..update(updates))._build();

  _$PolicyGroup._({this.groupName, this.groupId}) : super._();

  @override
  PolicyGroup rebuild(void Function(PolicyGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolicyGroupBuilder toBuilder() => new PolicyGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolicyGroup &&
        groupName == other.groupName &&
        groupId == other.groupId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PolicyGroupBuilder implements Builder<PolicyGroup, PolicyGroupBuilder> {
  _$PolicyGroup? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  PolicyGroupBuilder() {
    PolicyGroup._init(this);
  }

  PolicyGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _groupId = $v.groupId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolicyGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PolicyGroup;
  }

  @override
  void update(void Function(PolicyGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolicyGroup build() => _build();

  _$PolicyGroup _build() {
    final _$result =
        _$v ?? new _$PolicyGroup._(groupName: groupName, groupId: groupId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
