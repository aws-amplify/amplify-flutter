// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.deletion_task_failure_reason_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeletionTaskFailureReasonType extends DeletionTaskFailureReasonType {
  @override
  final String? reason;
  @override
  final _i3.BuiltList<_i2.RoleUsageType>? roleUsageList;

  factory _$DeletionTaskFailureReasonType(
          [void Function(DeletionTaskFailureReasonTypeBuilder)? updates]) =>
      (new DeletionTaskFailureReasonTypeBuilder()..update(updates))._build();

  _$DeletionTaskFailureReasonType._({this.reason, this.roleUsageList})
      : super._();

  @override
  DeletionTaskFailureReasonType rebuild(
          void Function(DeletionTaskFailureReasonTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeletionTaskFailureReasonTypeBuilder toBuilder() =>
      new DeletionTaskFailureReasonTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeletionTaskFailureReasonType &&
        reason == other.reason &&
        roleUsageList == other.roleUsageList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, roleUsageList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeletionTaskFailureReasonTypeBuilder
    implements
        Builder<DeletionTaskFailureReasonType,
            DeletionTaskFailureReasonTypeBuilder> {
  _$DeletionTaskFailureReasonType? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  _i3.ListBuilder<_i2.RoleUsageType>? _roleUsageList;
  _i3.ListBuilder<_i2.RoleUsageType> get roleUsageList =>
      _$this._roleUsageList ??= new _i3.ListBuilder<_i2.RoleUsageType>();
  set roleUsageList(_i3.ListBuilder<_i2.RoleUsageType>? roleUsageList) =>
      _$this._roleUsageList = roleUsageList;

  DeletionTaskFailureReasonTypeBuilder() {
    DeletionTaskFailureReasonType._init(this);
  }

  DeletionTaskFailureReasonTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _roleUsageList = $v.roleUsageList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeletionTaskFailureReasonType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeletionTaskFailureReasonType;
  }

  @override
  void update(void Function(DeletionTaskFailureReasonTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeletionTaskFailureReasonType build() => _build();

  _$DeletionTaskFailureReasonType _build() {
    _$DeletionTaskFailureReasonType _$result;
    try {
      _$result = _$v ??
          new _$DeletionTaskFailureReasonType._(
              reason: reason, roleUsageList: _roleUsageList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roleUsageList';
        _roleUsageList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeletionTaskFailureReasonType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
