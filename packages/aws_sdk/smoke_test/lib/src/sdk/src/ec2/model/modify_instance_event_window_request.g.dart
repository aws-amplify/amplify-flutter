// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_instance_event_window_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyInstanceEventWindowRequest
    extends ModifyInstanceEventWindowRequest {
  @override
  final bool dryRun;
  @override
  final String? name;
  @override
  final String? instanceEventWindowId;
  @override
  final _i3.BuiltList<InstanceEventWindowTimeRangeRequest>? timeRanges;
  @override
  final String? cronExpression;

  factory _$ModifyInstanceEventWindowRequest(
          [void Function(ModifyInstanceEventWindowRequestBuilder)? updates]) =>
      (new ModifyInstanceEventWindowRequestBuilder()..update(updates))._build();

  _$ModifyInstanceEventWindowRequest._(
      {required this.dryRun,
      this.name,
      this.instanceEventWindowId,
      this.timeRanges,
      this.cronExpression})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyInstanceEventWindowRequest', 'dryRun');
  }

  @override
  ModifyInstanceEventWindowRequest rebuild(
          void Function(ModifyInstanceEventWindowRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyInstanceEventWindowRequestBuilder toBuilder() =>
      new ModifyInstanceEventWindowRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyInstanceEventWindowRequest &&
        dryRun == other.dryRun &&
        name == other.name &&
        instanceEventWindowId == other.instanceEventWindowId &&
        timeRanges == other.timeRanges &&
        cronExpression == other.cronExpression;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, instanceEventWindowId.hashCode);
    _$hash = $jc(_$hash, timeRanges.hashCode);
    _$hash = $jc(_$hash, cronExpression.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyInstanceEventWindowRequestBuilder
    implements
        Builder<ModifyInstanceEventWindowRequest,
            ModifyInstanceEventWindowRequestBuilder> {
  _$ModifyInstanceEventWindowRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _instanceEventWindowId;
  String? get instanceEventWindowId => _$this._instanceEventWindowId;
  set instanceEventWindowId(String? instanceEventWindowId) =>
      _$this._instanceEventWindowId = instanceEventWindowId;

  _i3.ListBuilder<InstanceEventWindowTimeRangeRequest>? _timeRanges;
  _i3.ListBuilder<InstanceEventWindowTimeRangeRequest> get timeRanges =>
      _$this._timeRanges ??=
          new _i3.ListBuilder<InstanceEventWindowTimeRangeRequest>();
  set timeRanges(
          _i3.ListBuilder<InstanceEventWindowTimeRangeRequest>? timeRanges) =>
      _$this._timeRanges = timeRanges;

  String? _cronExpression;
  String? get cronExpression => _$this._cronExpression;
  set cronExpression(String? cronExpression) =>
      _$this._cronExpression = cronExpression;

  ModifyInstanceEventWindowRequestBuilder() {
    ModifyInstanceEventWindowRequest._init(this);
  }

  ModifyInstanceEventWindowRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _name = $v.name;
      _instanceEventWindowId = $v.instanceEventWindowId;
      _timeRanges = $v.timeRanges?.toBuilder();
      _cronExpression = $v.cronExpression;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyInstanceEventWindowRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyInstanceEventWindowRequest;
  }

  @override
  void update(void Function(ModifyInstanceEventWindowRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyInstanceEventWindowRequest build() => _build();

  _$ModifyInstanceEventWindowRequest _build() {
    _$ModifyInstanceEventWindowRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyInstanceEventWindowRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyInstanceEventWindowRequest', 'dryRun'),
              name: name,
              instanceEventWindowId: instanceEventWindowId,
              timeRanges: _timeRanges?.build(),
              cronExpression: cronExpression);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeRanges';
        _timeRanges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyInstanceEventWindowRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
