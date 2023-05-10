// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.change_set_hook;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeSetHook extends ChangeSetHook {
  @override
  final _i2.HookInvocationPoint? invocationPoint;
  @override
  final _i3.HookFailureMode? failureMode;
  @override
  final String? typeName;
  @override
  final String? typeVersionId;
  @override
  final String? typeConfigurationVersionId;
  @override
  final _i4.ChangeSetHookTargetDetails? targetDetails;

  factory _$ChangeSetHook([void Function(ChangeSetHookBuilder)? updates]) =>
      (new ChangeSetHookBuilder()..update(updates))._build();

  _$ChangeSetHook._(
      {this.invocationPoint,
      this.failureMode,
      this.typeName,
      this.typeVersionId,
      this.typeConfigurationVersionId,
      this.targetDetails})
      : super._();

  @override
  ChangeSetHook rebuild(void Function(ChangeSetHookBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSetHookBuilder toBuilder() => new ChangeSetHookBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSetHook &&
        invocationPoint == other.invocationPoint &&
        failureMode == other.failureMode &&
        typeName == other.typeName &&
        typeVersionId == other.typeVersionId &&
        typeConfigurationVersionId == other.typeConfigurationVersionId &&
        targetDetails == other.targetDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, invocationPoint.hashCode);
    _$hash = $jc(_$hash, failureMode.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, typeVersionId.hashCode);
    _$hash = $jc(_$hash, typeConfigurationVersionId.hashCode);
    _$hash = $jc(_$hash, targetDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ChangeSetHookBuilder
    implements Builder<ChangeSetHook, ChangeSetHookBuilder> {
  _$ChangeSetHook? _$v;

  _i2.HookInvocationPoint? _invocationPoint;
  _i2.HookInvocationPoint? get invocationPoint => _$this._invocationPoint;
  set invocationPoint(_i2.HookInvocationPoint? invocationPoint) =>
      _$this._invocationPoint = invocationPoint;

  _i3.HookFailureMode? _failureMode;
  _i3.HookFailureMode? get failureMode => _$this._failureMode;
  set failureMode(_i3.HookFailureMode? failureMode) =>
      _$this._failureMode = failureMode;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  String? _typeVersionId;
  String? get typeVersionId => _$this._typeVersionId;
  set typeVersionId(String? typeVersionId) =>
      _$this._typeVersionId = typeVersionId;

  String? _typeConfigurationVersionId;
  String? get typeConfigurationVersionId => _$this._typeConfigurationVersionId;
  set typeConfigurationVersionId(String? typeConfigurationVersionId) =>
      _$this._typeConfigurationVersionId = typeConfigurationVersionId;

  _i4.ChangeSetHookTargetDetailsBuilder? _targetDetails;
  _i4.ChangeSetHookTargetDetailsBuilder get targetDetails =>
      _$this._targetDetails ??= new _i4.ChangeSetHookTargetDetailsBuilder();
  set targetDetails(_i4.ChangeSetHookTargetDetailsBuilder? targetDetails) =>
      _$this._targetDetails = targetDetails;

  ChangeSetHookBuilder() {
    ChangeSetHook._init(this);
  }

  ChangeSetHookBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _invocationPoint = $v.invocationPoint;
      _failureMode = $v.failureMode;
      _typeName = $v.typeName;
      _typeVersionId = $v.typeVersionId;
      _typeConfigurationVersionId = $v.typeConfigurationVersionId;
      _targetDetails = $v.targetDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSetHook other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSetHook;
  }

  @override
  void update(void Function(ChangeSetHookBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSetHook build() => _build();

  _$ChangeSetHook _build() {
    _$ChangeSetHook _$result;
    try {
      _$result = _$v ??
          new _$ChangeSetHook._(
              invocationPoint: invocationPoint,
              failureMode: failureMode,
              typeName: typeName,
              typeVersionId: typeVersionId,
              typeConfigurationVersionId: typeConfigurationVersionId,
              targetDetails: _targetDetails?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetDetails';
        _targetDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChangeSetHook', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
