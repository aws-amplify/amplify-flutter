// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_set_hook_target_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeSetHookTargetDetails extends ChangeSetHookTargetDetails {
  @override
  final HookTargetType? targetType;
  @override
  final ChangeSetHookResourceTargetDetails? resourceTargetDetails;

  factory _$ChangeSetHookTargetDetails(
          [void Function(ChangeSetHookTargetDetailsBuilder)? updates]) =>
      (new ChangeSetHookTargetDetailsBuilder()..update(updates))._build();

  _$ChangeSetHookTargetDetails._({this.targetType, this.resourceTargetDetails})
      : super._();

  @override
  ChangeSetHookTargetDetails rebuild(
          void Function(ChangeSetHookTargetDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSetHookTargetDetailsBuilder toBuilder() =>
      new ChangeSetHookTargetDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSetHookTargetDetails &&
        targetType == other.targetType &&
        resourceTargetDetails == other.resourceTargetDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, targetType.hashCode);
    _$hash = $jc(_$hash, resourceTargetDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ChangeSetHookTargetDetailsBuilder
    implements
        Builder<ChangeSetHookTargetDetails, ChangeSetHookTargetDetailsBuilder> {
  _$ChangeSetHookTargetDetails? _$v;

  HookTargetType? _targetType;
  HookTargetType? get targetType => _$this._targetType;
  set targetType(HookTargetType? targetType) => _$this._targetType = targetType;

  ChangeSetHookResourceTargetDetailsBuilder? _resourceTargetDetails;
  ChangeSetHookResourceTargetDetailsBuilder get resourceTargetDetails =>
      _$this._resourceTargetDetails ??=
          new ChangeSetHookResourceTargetDetailsBuilder();
  set resourceTargetDetails(
          ChangeSetHookResourceTargetDetailsBuilder? resourceTargetDetails) =>
      _$this._resourceTargetDetails = resourceTargetDetails;

  ChangeSetHookTargetDetailsBuilder();

  ChangeSetHookTargetDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targetType = $v.targetType;
      _resourceTargetDetails = $v.resourceTargetDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSetHookTargetDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSetHookTargetDetails;
  }

  @override
  void update(void Function(ChangeSetHookTargetDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSetHookTargetDetails build() => _build();

  _$ChangeSetHookTargetDetails _build() {
    _$ChangeSetHookTargetDetails _$result;
    try {
      _$result = _$v ??
          new _$ChangeSetHookTargetDetails._(
              targetType: targetType,
              resourceTargetDetails: _resourceTargetDetails?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceTargetDetails';
        _resourceTargetDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChangeSetHookTargetDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
