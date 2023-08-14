// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_capacity_reservation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyCapacityReservationRequest
    extends ModifyCapacityReservationRequest {
  @override
  final String? capacityReservationId;
  @override
  final int instanceCount;
  @override
  final DateTime? endDate;
  @override
  final EndDateType? endDateType;
  @override
  final bool accept;
  @override
  final bool dryRun;
  @override
  final String? additionalInfo;

  factory _$ModifyCapacityReservationRequest(
          [void Function(ModifyCapacityReservationRequestBuilder)? updates]) =>
      (new ModifyCapacityReservationRequestBuilder()..update(updates))._build();

  _$ModifyCapacityReservationRequest._(
      {this.capacityReservationId,
      required this.instanceCount,
      this.endDate,
      this.endDateType,
      required this.accept,
      required this.dryRun,
      this.additionalInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        instanceCount, r'ModifyCapacityReservationRequest', 'instanceCount');
    BuiltValueNullFieldError.checkNotNull(
        accept, r'ModifyCapacityReservationRequest', 'accept');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyCapacityReservationRequest', 'dryRun');
  }

  @override
  ModifyCapacityReservationRequest rebuild(
          void Function(ModifyCapacityReservationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyCapacityReservationRequestBuilder toBuilder() =>
      new ModifyCapacityReservationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyCapacityReservationRequest &&
        capacityReservationId == other.capacityReservationId &&
        instanceCount == other.instanceCount &&
        endDate == other.endDate &&
        endDateType == other.endDateType &&
        accept == other.accept &&
        dryRun == other.dryRun &&
        additionalInfo == other.additionalInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityReservationId.hashCode);
    _$hash = $jc(_$hash, instanceCount.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, endDateType.hashCode);
    _$hash = $jc(_$hash, accept.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyCapacityReservationRequestBuilder
    implements
        Builder<ModifyCapacityReservationRequest,
            ModifyCapacityReservationRequestBuilder> {
  _$ModifyCapacityReservationRequest? _$v;

  String? _capacityReservationId;
  String? get capacityReservationId => _$this._capacityReservationId;
  set capacityReservationId(String? capacityReservationId) =>
      _$this._capacityReservationId = capacityReservationId;

  int? _instanceCount;
  int? get instanceCount => _$this._instanceCount;
  set instanceCount(int? instanceCount) =>
      _$this._instanceCount = instanceCount;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  EndDateType? _endDateType;
  EndDateType? get endDateType => _$this._endDateType;
  set endDateType(EndDateType? endDateType) =>
      _$this._endDateType = endDateType;

  bool? _accept;
  bool? get accept => _$this._accept;
  set accept(bool? accept) => _$this._accept = accept;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _additionalInfo;
  String? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(String? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  ModifyCapacityReservationRequestBuilder() {
    ModifyCapacityReservationRequest._init(this);
  }

  ModifyCapacityReservationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservationId = $v.capacityReservationId;
      _instanceCount = $v.instanceCount;
      _endDate = $v.endDate;
      _endDateType = $v.endDateType;
      _accept = $v.accept;
      _dryRun = $v.dryRun;
      _additionalInfo = $v.additionalInfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyCapacityReservationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyCapacityReservationRequest;
  }

  @override
  void update(void Function(ModifyCapacityReservationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyCapacityReservationRequest build() => _build();

  _$ModifyCapacityReservationRequest _build() {
    final _$result = _$v ??
        new _$ModifyCapacityReservationRequest._(
            capacityReservationId: capacityReservationId,
            instanceCount: BuiltValueNullFieldError.checkNotNull(instanceCount,
                r'ModifyCapacityReservationRequest', 'instanceCount'),
            endDate: endDate,
            endDateType: endDateType,
            accept: BuiltValueNullFieldError.checkNotNull(
                accept, r'ModifyCapacityReservationRequest', 'accept'),
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyCapacityReservationRequest', 'dryRun'),
            additionalInfo: additionalInfo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
