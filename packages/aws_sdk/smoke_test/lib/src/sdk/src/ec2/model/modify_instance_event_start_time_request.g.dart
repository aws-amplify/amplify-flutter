// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_instance_event_start_time_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyInstanceEventStartTimeRequest
    extends ModifyInstanceEventStartTimeRequest {
  @override
  final bool dryRun;
  @override
  final String? instanceId;
  @override
  final String? instanceEventId;
  @override
  final DateTime? notBefore;

  factory _$ModifyInstanceEventStartTimeRequest(
          [void Function(ModifyInstanceEventStartTimeRequestBuilder)?
              updates]) =>
      (new ModifyInstanceEventStartTimeRequestBuilder()..update(updates))
          ._build();

  _$ModifyInstanceEventStartTimeRequest._(
      {required this.dryRun,
      this.instanceId,
      this.instanceEventId,
      this.notBefore})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyInstanceEventStartTimeRequest', 'dryRun');
  }

  @override
  ModifyInstanceEventStartTimeRequest rebuild(
          void Function(ModifyInstanceEventStartTimeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyInstanceEventStartTimeRequestBuilder toBuilder() =>
      new ModifyInstanceEventStartTimeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyInstanceEventStartTimeRequest &&
        dryRun == other.dryRun &&
        instanceId == other.instanceId &&
        instanceEventId == other.instanceEventId &&
        notBefore == other.notBefore;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, instanceEventId.hashCode);
    _$hash = $jc(_$hash, notBefore.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyInstanceEventStartTimeRequestBuilder
    implements
        Builder<ModifyInstanceEventStartTimeRequest,
            ModifyInstanceEventStartTimeRequestBuilder> {
  _$ModifyInstanceEventStartTimeRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _instanceEventId;
  String? get instanceEventId => _$this._instanceEventId;
  set instanceEventId(String? instanceEventId) =>
      _$this._instanceEventId = instanceEventId;

  DateTime? _notBefore;
  DateTime? get notBefore => _$this._notBefore;
  set notBefore(DateTime? notBefore) => _$this._notBefore = notBefore;

  ModifyInstanceEventStartTimeRequestBuilder() {
    ModifyInstanceEventStartTimeRequest._init(this);
  }

  ModifyInstanceEventStartTimeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _instanceId = $v.instanceId;
      _instanceEventId = $v.instanceEventId;
      _notBefore = $v.notBefore;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyInstanceEventStartTimeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyInstanceEventStartTimeRequest;
  }

  @override
  void update(
      void Function(ModifyInstanceEventStartTimeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyInstanceEventStartTimeRequest build() => _build();

  _$ModifyInstanceEventStartTimeRequest _build() {
    final _$result = _$v ??
        new _$ModifyInstanceEventStartTimeRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyInstanceEventStartTimeRequest', 'dryRun'),
            instanceId: instanceId,
            instanceEventId: instanceEventId,
            notBefore: notBefore);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
