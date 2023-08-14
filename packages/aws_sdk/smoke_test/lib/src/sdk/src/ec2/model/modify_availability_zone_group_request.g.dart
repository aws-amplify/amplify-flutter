// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_availability_zone_group_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyAvailabilityZoneGroupRequest
    extends ModifyAvailabilityZoneGroupRequest {
  @override
  final String? groupName;
  @override
  final ModifyAvailabilityZoneOptInStatus? optInStatus;
  @override
  final bool dryRun;

  factory _$ModifyAvailabilityZoneGroupRequest(
          [void Function(ModifyAvailabilityZoneGroupRequestBuilder)?
              updates]) =>
      (new ModifyAvailabilityZoneGroupRequestBuilder()..update(updates))
          ._build();

  _$ModifyAvailabilityZoneGroupRequest._(
      {this.groupName, this.optInStatus, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyAvailabilityZoneGroupRequest', 'dryRun');
  }

  @override
  ModifyAvailabilityZoneGroupRequest rebuild(
          void Function(ModifyAvailabilityZoneGroupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyAvailabilityZoneGroupRequestBuilder toBuilder() =>
      new ModifyAvailabilityZoneGroupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyAvailabilityZoneGroupRequest &&
        groupName == other.groupName &&
        optInStatus == other.optInStatus &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, optInStatus.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyAvailabilityZoneGroupRequestBuilder
    implements
        Builder<ModifyAvailabilityZoneGroupRequest,
            ModifyAvailabilityZoneGroupRequestBuilder> {
  _$ModifyAvailabilityZoneGroupRequest? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  ModifyAvailabilityZoneOptInStatus? _optInStatus;
  ModifyAvailabilityZoneOptInStatus? get optInStatus => _$this._optInStatus;
  set optInStatus(ModifyAvailabilityZoneOptInStatus? optInStatus) =>
      _$this._optInStatus = optInStatus;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyAvailabilityZoneGroupRequestBuilder() {
    ModifyAvailabilityZoneGroupRequest._init(this);
  }

  ModifyAvailabilityZoneGroupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _optInStatus = $v.optInStatus;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyAvailabilityZoneGroupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyAvailabilityZoneGroupRequest;
  }

  @override
  void update(
      void Function(ModifyAvailabilityZoneGroupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyAvailabilityZoneGroupRequest build() => _build();

  _$ModifyAvailabilityZoneGroupRequest _build() {
    final _$result = _$v ??
        new _$ModifyAvailabilityZoneGroupRequest._(
            groupName: groupName,
            optInStatus: optInStatus,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyAvailabilityZoneGroupRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
