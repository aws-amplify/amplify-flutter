// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_instance_event_window_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateInstanceEventWindowRequest
    extends AssociateInstanceEventWindowRequest {
  @override
  final bool dryRun;
  @override
  final String? instanceEventWindowId;
  @override
  final InstanceEventWindowAssociationRequest? associationTarget;

  factory _$AssociateInstanceEventWindowRequest(
          [void Function(AssociateInstanceEventWindowRequestBuilder)?
              updates]) =>
      (new AssociateInstanceEventWindowRequestBuilder()..update(updates))
          ._build();

  _$AssociateInstanceEventWindowRequest._(
      {required this.dryRun,
      this.instanceEventWindowId,
      this.associationTarget})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AssociateInstanceEventWindowRequest', 'dryRun');
  }

  @override
  AssociateInstanceEventWindowRequest rebuild(
          void Function(AssociateInstanceEventWindowRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateInstanceEventWindowRequestBuilder toBuilder() =>
      new AssociateInstanceEventWindowRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateInstanceEventWindowRequest &&
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

class AssociateInstanceEventWindowRequestBuilder
    implements
        Builder<AssociateInstanceEventWindowRequest,
            AssociateInstanceEventWindowRequestBuilder> {
  _$AssociateInstanceEventWindowRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _instanceEventWindowId;
  String? get instanceEventWindowId => _$this._instanceEventWindowId;
  set instanceEventWindowId(String? instanceEventWindowId) =>
      _$this._instanceEventWindowId = instanceEventWindowId;

  InstanceEventWindowAssociationRequestBuilder? _associationTarget;
  InstanceEventWindowAssociationRequestBuilder get associationTarget =>
      _$this._associationTarget ??=
          new InstanceEventWindowAssociationRequestBuilder();
  set associationTarget(
          InstanceEventWindowAssociationRequestBuilder? associationTarget) =>
      _$this._associationTarget = associationTarget;

  AssociateInstanceEventWindowRequestBuilder() {
    AssociateInstanceEventWindowRequest._init(this);
  }

  AssociateInstanceEventWindowRequestBuilder get _$this {
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
  void replace(AssociateInstanceEventWindowRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateInstanceEventWindowRequest;
  }

  @override
  void update(
      void Function(AssociateInstanceEventWindowRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateInstanceEventWindowRequest build() => _build();

  _$AssociateInstanceEventWindowRequest _build() {
    _$AssociateInstanceEventWindowRequest _$result;
    try {
      _$result = _$v ??
          new _$AssociateInstanceEventWindowRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'AssociateInstanceEventWindowRequest', 'dryRun'),
              instanceEventWindowId: instanceEventWindowId,
              associationTarget: _associationTarget?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associationTarget';
        _associationTarget?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssociateInstanceEventWindowRequest',
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
