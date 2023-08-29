// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_traffic_mirror_session_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyTrafficMirrorSessionRequest
    extends ModifyTrafficMirrorSessionRequest {
  @override
  final String? trafficMirrorSessionId;
  @override
  final String? trafficMirrorTargetId;
  @override
  final String? trafficMirrorFilterId;
  @override
  final int packetLength;
  @override
  final int sessionNumber;
  @override
  final int virtualNetworkId;
  @override
  final String? description;
  @override
  final _i3.BuiltList<TrafficMirrorSessionField>? removeFields;
  @override
  final bool dryRun;

  factory _$ModifyTrafficMirrorSessionRequest(
          [void Function(ModifyTrafficMirrorSessionRequestBuilder)? updates]) =>
      (new ModifyTrafficMirrorSessionRequestBuilder()..update(updates))
          ._build();

  _$ModifyTrafficMirrorSessionRequest._(
      {this.trafficMirrorSessionId,
      this.trafficMirrorTargetId,
      this.trafficMirrorFilterId,
      required this.packetLength,
      required this.sessionNumber,
      required this.virtualNetworkId,
      this.description,
      this.removeFields,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        packetLength, r'ModifyTrafficMirrorSessionRequest', 'packetLength');
    BuiltValueNullFieldError.checkNotNull(
        sessionNumber, r'ModifyTrafficMirrorSessionRequest', 'sessionNumber');
    BuiltValueNullFieldError.checkNotNull(virtualNetworkId,
        r'ModifyTrafficMirrorSessionRequest', 'virtualNetworkId');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyTrafficMirrorSessionRequest', 'dryRun');
  }

  @override
  ModifyTrafficMirrorSessionRequest rebuild(
          void Function(ModifyTrafficMirrorSessionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyTrafficMirrorSessionRequestBuilder toBuilder() =>
      new ModifyTrafficMirrorSessionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyTrafficMirrorSessionRequest &&
        trafficMirrorSessionId == other.trafficMirrorSessionId &&
        trafficMirrorTargetId == other.trafficMirrorTargetId &&
        trafficMirrorFilterId == other.trafficMirrorFilterId &&
        packetLength == other.packetLength &&
        sessionNumber == other.sessionNumber &&
        virtualNetworkId == other.virtualNetworkId &&
        description == other.description &&
        removeFields == other.removeFields &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorSessionId.hashCode);
    _$hash = $jc(_$hash, trafficMirrorTargetId.hashCode);
    _$hash = $jc(_$hash, trafficMirrorFilterId.hashCode);
    _$hash = $jc(_$hash, packetLength.hashCode);
    _$hash = $jc(_$hash, sessionNumber.hashCode);
    _$hash = $jc(_$hash, virtualNetworkId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, removeFields.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyTrafficMirrorSessionRequestBuilder
    implements
        Builder<ModifyTrafficMirrorSessionRequest,
            ModifyTrafficMirrorSessionRequestBuilder> {
  _$ModifyTrafficMirrorSessionRequest? _$v;

  String? _trafficMirrorSessionId;
  String? get trafficMirrorSessionId => _$this._trafficMirrorSessionId;
  set trafficMirrorSessionId(String? trafficMirrorSessionId) =>
      _$this._trafficMirrorSessionId = trafficMirrorSessionId;

  String? _trafficMirrorTargetId;
  String? get trafficMirrorTargetId => _$this._trafficMirrorTargetId;
  set trafficMirrorTargetId(String? trafficMirrorTargetId) =>
      _$this._trafficMirrorTargetId = trafficMirrorTargetId;

  String? _trafficMirrorFilterId;
  String? get trafficMirrorFilterId => _$this._trafficMirrorFilterId;
  set trafficMirrorFilterId(String? trafficMirrorFilterId) =>
      _$this._trafficMirrorFilterId = trafficMirrorFilterId;

  int? _packetLength;
  int? get packetLength => _$this._packetLength;
  set packetLength(int? packetLength) => _$this._packetLength = packetLength;

  int? _sessionNumber;
  int? get sessionNumber => _$this._sessionNumber;
  set sessionNumber(int? sessionNumber) =>
      _$this._sessionNumber = sessionNumber;

  int? _virtualNetworkId;
  int? get virtualNetworkId => _$this._virtualNetworkId;
  set virtualNetworkId(int? virtualNetworkId) =>
      _$this._virtualNetworkId = virtualNetworkId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.ListBuilder<TrafficMirrorSessionField>? _removeFields;
  _i3.ListBuilder<TrafficMirrorSessionField> get removeFields =>
      _$this._removeFields ??= new _i3.ListBuilder<TrafficMirrorSessionField>();
  set removeFields(_i3.ListBuilder<TrafficMirrorSessionField>? removeFields) =>
      _$this._removeFields = removeFields;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyTrafficMirrorSessionRequestBuilder() {
    ModifyTrafficMirrorSessionRequest._init(this);
  }

  ModifyTrafficMirrorSessionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorSessionId = $v.trafficMirrorSessionId;
      _trafficMirrorTargetId = $v.trafficMirrorTargetId;
      _trafficMirrorFilterId = $v.trafficMirrorFilterId;
      _packetLength = $v.packetLength;
      _sessionNumber = $v.sessionNumber;
      _virtualNetworkId = $v.virtualNetworkId;
      _description = $v.description;
      _removeFields = $v.removeFields?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyTrafficMirrorSessionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyTrafficMirrorSessionRequest;
  }

  @override
  void update(
      void Function(ModifyTrafficMirrorSessionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyTrafficMirrorSessionRequest build() => _build();

  _$ModifyTrafficMirrorSessionRequest _build() {
    _$ModifyTrafficMirrorSessionRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyTrafficMirrorSessionRequest._(
              trafficMirrorSessionId: trafficMirrorSessionId,
              trafficMirrorTargetId: trafficMirrorTargetId,
              trafficMirrorFilterId: trafficMirrorFilterId,
              packetLength: BuiltValueNullFieldError.checkNotNull(packetLength,
                  r'ModifyTrafficMirrorSessionRequest', 'packetLength'),
              sessionNumber: BuiltValueNullFieldError.checkNotNull(
                  sessionNumber,
                  r'ModifyTrafficMirrorSessionRequest',
                  'sessionNumber'),
              virtualNetworkId: BuiltValueNullFieldError.checkNotNull(
                  virtualNetworkId,
                  r'ModifyTrafficMirrorSessionRequest',
                  'virtualNetworkId'),
              description: description,
              removeFields: _removeFields?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyTrafficMirrorSessionRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'removeFields';
        _removeFields?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyTrafficMirrorSessionRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
