// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_usage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceUsage extends InstanceUsage {
  @override
  final String? accountId;
  @override
  final int usedInstanceCount;

  factory _$InstanceUsage([void Function(InstanceUsageBuilder)? updates]) =>
      (new InstanceUsageBuilder()..update(updates))._build();

  _$InstanceUsage._({this.accountId, required this.usedInstanceCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        usedInstanceCount, r'InstanceUsage', 'usedInstanceCount');
  }

  @override
  InstanceUsage rebuild(void Function(InstanceUsageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceUsageBuilder toBuilder() => new InstanceUsageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceUsage &&
        accountId == other.accountId &&
        usedInstanceCount == other.usedInstanceCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, usedInstanceCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceUsageBuilder
    implements Builder<InstanceUsage, InstanceUsageBuilder> {
  _$InstanceUsage? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  int? _usedInstanceCount;
  int? get usedInstanceCount => _$this._usedInstanceCount;
  set usedInstanceCount(int? usedInstanceCount) =>
      _$this._usedInstanceCount = usedInstanceCount;

  InstanceUsageBuilder() {
    InstanceUsage._init(this);
  }

  InstanceUsageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _usedInstanceCount = $v.usedInstanceCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceUsage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceUsage;
  }

  @override
  void update(void Function(InstanceUsageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceUsage build() => _build();

  _$InstanceUsage _build() {
    final _$result = _$v ??
        new _$InstanceUsage._(
            accountId: accountId,
            usedInstanceCount: BuiltValueNullFieldError.checkNotNull(
                usedInstanceCount, r'InstanceUsage', 'usedInstanceCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
