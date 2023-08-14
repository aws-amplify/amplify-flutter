// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_instance_capacity_reservation_attributes_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyInstanceCapacityReservationAttributesRequest
    extends ModifyInstanceCapacityReservationAttributesRequest {
  @override
  final String? instanceId;
  @override
  final CapacityReservationSpecification? capacityReservationSpecification;
  @override
  final bool dryRun;

  factory _$ModifyInstanceCapacityReservationAttributesRequest(
          [void Function(
                  ModifyInstanceCapacityReservationAttributesRequestBuilder)?
              updates]) =>
      (new ModifyInstanceCapacityReservationAttributesRequestBuilder()
            ..update(updates))
          ._build();

  _$ModifyInstanceCapacityReservationAttributesRequest._(
      {this.instanceId,
      this.capacityReservationSpecification,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'ModifyInstanceCapacityReservationAttributesRequest', 'dryRun');
  }

  @override
  ModifyInstanceCapacityReservationAttributesRequest rebuild(
          void Function(
                  ModifyInstanceCapacityReservationAttributesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyInstanceCapacityReservationAttributesRequestBuilder toBuilder() =>
      new ModifyInstanceCapacityReservationAttributesRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyInstanceCapacityReservationAttributesRequest &&
        instanceId == other.instanceId &&
        capacityReservationSpecification ==
            other.capacityReservationSpecification &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, capacityReservationSpecification.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyInstanceCapacityReservationAttributesRequestBuilder
    implements
        Builder<ModifyInstanceCapacityReservationAttributesRequest,
            ModifyInstanceCapacityReservationAttributesRequestBuilder> {
  _$ModifyInstanceCapacityReservationAttributesRequest? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  CapacityReservationSpecificationBuilder? _capacityReservationSpecification;
  CapacityReservationSpecificationBuilder
      get capacityReservationSpecification =>
          _$this._capacityReservationSpecification ??=
              new CapacityReservationSpecificationBuilder();
  set capacityReservationSpecification(
          CapacityReservationSpecificationBuilder?
              capacityReservationSpecification) =>
      _$this._capacityReservationSpecification =
          capacityReservationSpecification;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyInstanceCapacityReservationAttributesRequestBuilder() {
    ModifyInstanceCapacityReservationAttributesRequest._init(this);
  }

  ModifyInstanceCapacityReservationAttributesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _capacityReservationSpecification =
          $v.capacityReservationSpecification?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyInstanceCapacityReservationAttributesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyInstanceCapacityReservationAttributesRequest;
  }

  @override
  void update(
      void Function(ModifyInstanceCapacityReservationAttributesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyInstanceCapacityReservationAttributesRequest build() => _build();

  _$ModifyInstanceCapacityReservationAttributesRequest _build() {
    _$ModifyInstanceCapacityReservationAttributesRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyInstanceCapacityReservationAttributesRequest._(
              instanceId: instanceId,
              capacityReservationSpecification:
                  _capacityReservationSpecification?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'ModifyInstanceCapacityReservationAttributesRequest',
                  'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capacityReservationSpecification';
        _capacityReservationSpecification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyInstanceCapacityReservationAttributesRequest',
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
