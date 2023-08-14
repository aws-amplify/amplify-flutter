// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_instance_event_window_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateInstanceEventWindowRequest
    extends DisassociateInstanceEventWindowRequest {
  @override
  final bool dryRun;
  @override
  final String? instanceEventWindowId;
  @override
  final InstanceEventWindowDisassociationRequest? associationTarget;

  factory _$DisassociateInstanceEventWindowRequest(
          [void Function(DisassociateInstanceEventWindowRequestBuilder)?
              updates]) =>
      (new DisassociateInstanceEventWindowRequestBuilder()..update(updates))
          ._build();

  _$DisassociateInstanceEventWindowRequest._(
      {required this.dryRun,
      this.instanceEventWindowId,
      this.associationTarget})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisassociateInstanceEventWindowRequest', 'dryRun');
  }

  @override
  DisassociateInstanceEventWindowRequest rebuild(
          void Function(DisassociateInstanceEventWindowRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateInstanceEventWindowRequestBuilder toBuilder() =>
      new DisassociateInstanceEventWindowRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateInstanceEventWindowRequest &&
        dryRun == other.dryRun &&
        instanceEventWindowId == other.instanceEventWindowId &&
        associationTarget == other.associationTarget;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceEventWindowId.hashCode);
    _$hash = $jc(_$hash, associationTarget.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateInstanceEventWindowRequestBuilder
    implements
        Builder<DisassociateInstanceEventWindowRequest,
            DisassociateInstanceEventWindowRequestBuilder> {
  _$DisassociateInstanceEventWindowRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _instanceEventWindowId;
  String? get instanceEventWindowId => _$this._instanceEventWindowId;
  set instanceEventWindowId(String? instanceEventWindowId) =>
      _$this._instanceEventWindowId = instanceEventWindowId;

  InstanceEventWindowDisassociationRequestBuilder? _associationTarget;
  InstanceEventWindowDisassociationRequestBuilder get associationTarget =>
      _$this._associationTarget ??=
          new InstanceEventWindowDisassociationRequestBuilder();
  set associationTarget(
          InstanceEventWindowDisassociationRequestBuilder? associationTarget) =>
      _$this._associationTarget = associationTarget;

  DisassociateInstanceEventWindowRequestBuilder() {
    DisassociateInstanceEventWindowRequest._init(this);
  }

  DisassociateInstanceEventWindowRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _instanceEventWindowId = $v.instanceEventWindowId;
      _associationTarget = $v.associationTarget?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateInstanceEventWindowRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateInstanceEventWindowRequest;
  }

  @override
  void update(
      void Function(DisassociateInstanceEventWindowRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateInstanceEventWindowRequest build() => _build();

  _$DisassociateInstanceEventWindowRequest _build() {
    _$DisassociateInstanceEventWindowRequest _$result;
    try {
      _$result = _$v ??
          new _$DisassociateInstanceEventWindowRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DisassociateInstanceEventWindowRequest', 'dryRun'),
              instanceEventWindowId: instanceEventWindowId,
              associationTarget: _associationTarget?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associationTarget';
        _associationTarget?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisassociateInstanceEventWindowRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
