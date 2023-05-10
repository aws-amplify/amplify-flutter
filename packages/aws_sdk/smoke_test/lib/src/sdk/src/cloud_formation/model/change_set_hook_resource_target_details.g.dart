// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.change_set_hook_resource_target_details;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeSetHookResourceTargetDetails
    extends ChangeSetHookResourceTargetDetails {
  @override
  final String? logicalResourceId;
  @override
  final String? resourceType;
  @override
  final _i2.ChangeAction? resourceAction;

  factory _$ChangeSetHookResourceTargetDetails(
          [void Function(ChangeSetHookResourceTargetDetailsBuilder)?
              updates]) =>
      (new ChangeSetHookResourceTargetDetailsBuilder()..update(updates))
          ._build();

  _$ChangeSetHookResourceTargetDetails._(
      {this.logicalResourceId, this.resourceType, this.resourceAction})
      : super._();

  @override
  ChangeSetHookResourceTargetDetails rebuild(
          void Function(ChangeSetHookResourceTargetDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSetHookResourceTargetDetailsBuilder toBuilder() =>
      new ChangeSetHookResourceTargetDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSetHookResourceTargetDetails &&
        logicalResourceId == other.logicalResourceId &&
        resourceType == other.resourceType &&
        resourceAction == other.resourceAction;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, logicalResourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceAction.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ChangeSetHookResourceTargetDetailsBuilder
    implements
        Builder<ChangeSetHookResourceTargetDetails,
            ChangeSetHookResourceTargetDetailsBuilder> {
  _$ChangeSetHookResourceTargetDetails? _$v;

  String? _logicalResourceId;
  String? get logicalResourceId => _$this._logicalResourceId;
  set logicalResourceId(String? logicalResourceId) =>
      _$this._logicalResourceId = logicalResourceId;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  _i2.ChangeAction? _resourceAction;
  _i2.ChangeAction? get resourceAction => _$this._resourceAction;
  set resourceAction(_i2.ChangeAction? resourceAction) =>
      _$this._resourceAction = resourceAction;

  ChangeSetHookResourceTargetDetailsBuilder() {
    ChangeSetHookResourceTargetDetails._init(this);
  }

  ChangeSetHookResourceTargetDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logicalResourceId = $v.logicalResourceId;
      _resourceType = $v.resourceType;
      _resourceAction = $v.resourceAction;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSetHookResourceTargetDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSetHookResourceTargetDetails;
  }

  @override
  void update(
      void Function(ChangeSetHookResourceTargetDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSetHookResourceTargetDetails build() => _build();

  _$ChangeSetHookResourceTargetDetails _build() {
    final _$result = _$v ??
        new _$ChangeSetHookResourceTargetDetails._(
            logicalResourceId: logicalResourceId,
            resourceType: resourceType,
            resourceAction: resourceAction);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
