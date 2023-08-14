// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_instance_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotInstanceRequest extends SpotInstanceRequest {
  @override
  final String? actualBlockHourlyPrice;
  @override
  final String? availabilityZoneGroup;
  @override
  final int blockDurationMinutes;
  @override
  final DateTime? createTime;
  @override
  final SpotInstanceStateFault? fault;
  @override
  final String? instanceId;
  @override
  final String? launchGroup;
  @override
  final LaunchSpecification? launchSpecification;
  @override
  final String? launchedAvailabilityZone;
  @override
  final RiProductDescription? productDescription;
  @override
  final String? spotInstanceRequestId;
  @override
  final String? spotPrice;
  @override
  final SpotInstanceState? state;
  @override
  final SpotInstanceStatus? status;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final SpotInstanceType? type;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validUntil;
  @override
  final InstanceInterruptionBehavior? instanceInterruptionBehavior;

  factory _$SpotInstanceRequest(
          [void Function(SpotInstanceRequestBuilder)? updates]) =>
      (new SpotInstanceRequestBuilder()..update(updates))._build();

  _$SpotInstanceRequest._(
      {this.actualBlockHourlyPrice,
      this.availabilityZoneGroup,
      required this.blockDurationMinutes,
      this.createTime,
      this.fault,
      this.instanceId,
      this.launchGroup,
      this.launchSpecification,
      this.launchedAvailabilityZone,
      this.productDescription,
      this.spotInstanceRequestId,
      this.spotPrice,
      this.state,
      this.status,
      this.tags,
      this.type,
      this.validFrom,
      this.validUntil,
      this.instanceInterruptionBehavior})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        blockDurationMinutes, r'SpotInstanceRequest', 'blockDurationMinutes');
  }

  @override
  SpotInstanceRequest rebuild(
          void Function(SpotInstanceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotInstanceRequestBuilder toBuilder() =>
      new SpotInstanceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotInstanceRequest &&
        actualBlockHourlyPrice == other.actualBlockHourlyPrice &&
        availabilityZoneGroup == other.availabilityZoneGroup &&
        blockDurationMinutes == other.blockDurationMinutes &&
        createTime == other.createTime &&
        fault == other.fault &&
        instanceId == other.instanceId &&
        launchGroup == other.launchGroup &&
        launchSpecification == other.launchSpecification &&
        launchedAvailabilityZone == other.launchedAvailabilityZone &&
        productDescription == other.productDescription &&
        spotInstanceRequestId == other.spotInstanceRequestId &&
        spotPrice == other.spotPrice &&
        state == other.state &&
        status == other.status &&
        tags == other.tags &&
        type == other.type &&
        validFrom == other.validFrom &&
        validUntil == other.validUntil &&
        instanceInterruptionBehavior == other.instanceInterruptionBehavior;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, actualBlockHourlyPrice.hashCode);
    _$hash = $jc(_$hash, availabilityZoneGroup.hashCode);
    _$hash = $jc(_$hash, blockDurationMinutes.hashCode);
    _$hash = $jc(_$hash, createTime.hashCode);
    _$hash = $jc(_$hash, fault.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, launchGroup.hashCode);
    _$hash = $jc(_$hash, launchSpecification.hashCode);
    _$hash = $jc(_$hash, launchedAvailabilityZone.hashCode);
    _$hash = $jc(_$hash, productDescription.hashCode);
    _$hash = $jc(_$hash, spotInstanceRequestId.hashCode);
    _$hash = $jc(_$hash, spotPrice.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, instanceInterruptionBehavior.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SpotInstanceRequestBuilder
    implements Builder<SpotInstanceRequest, SpotInstanceRequestBuilder> {
  _$SpotInstanceRequest? _$v;

  String? _actualBlockHourlyPrice;
  String? get actualBlockHourlyPrice => _$this._actualBlockHourlyPrice;
  set actualBlockHourlyPrice(String? actualBlockHourlyPrice) =>
      _$this._actualBlockHourlyPrice = actualBlockHourlyPrice;

  String? _availabilityZoneGroup;
  String? get availabilityZoneGroup => _$this._availabilityZoneGroup;
  set availabilityZoneGroup(String? availabilityZoneGroup) =>
      _$this._availabilityZoneGroup = availabilityZoneGroup;

  int? _blockDurationMinutes;
  int? get blockDurationMinutes => _$this._blockDurationMinutes;
  set blockDurationMinutes(int? blockDurationMinutes) =>
      _$this._blockDurationMinutes = blockDurationMinutes;

  DateTime? _createTime;
  DateTime? get createTime => _$this._createTime;
  set createTime(DateTime? createTime) => _$this._createTime = createTime;

  SpotInstanceStateFaultBuilder? _fault;
  SpotInstanceStateFaultBuilder get fault =>
      _$this._fault ??= new SpotInstanceStateFaultBuilder();
  set fault(SpotInstanceStateFaultBuilder? fault) => _$this._fault = fault;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _launchGroup;
  String? get launchGroup => _$this._launchGroup;
  set launchGroup(String? launchGroup) => _$this._launchGroup = launchGroup;

  LaunchSpecificationBuilder? _launchSpecification;
  LaunchSpecificationBuilder get launchSpecification =>
      _$this._launchSpecification ??= new LaunchSpecificationBuilder();
  set launchSpecification(LaunchSpecificationBuilder? launchSpecification) =>
      _$this._launchSpecification = launchSpecification;

  String? _launchedAvailabilityZone;
  String? get launchedAvailabilityZone => _$this._launchedAvailabilityZone;
  set launchedAvailabilityZone(String? launchedAvailabilityZone) =>
      _$this._launchedAvailabilityZone = launchedAvailabilityZone;

  RiProductDescription? _productDescription;
  RiProductDescription? get productDescription => _$this._productDescription;
  set productDescription(RiProductDescription? productDescription) =>
      _$this._productDescription = productDescription;

  String? _spotInstanceRequestId;
  String? get spotInstanceRequestId => _$this._spotInstanceRequestId;
  set spotInstanceRequestId(String? spotInstanceRequestId) =>
      _$this._spotInstanceRequestId = spotInstanceRequestId;

  String? _spotPrice;
  String? get spotPrice => _$this._spotPrice;
  set spotPrice(String? spotPrice) => _$this._spotPrice = spotPrice;

  SpotInstanceState? _state;
  SpotInstanceState? get state => _$this._state;
  set state(SpotInstanceState? state) => _$this._state = state;

  SpotInstanceStatusBuilder? _status;
  SpotInstanceStatusBuilder get status =>
      _$this._status ??= new SpotInstanceStatusBuilder();
  set status(SpotInstanceStatusBuilder? status) => _$this._status = status;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  SpotInstanceType? _type;
  SpotInstanceType? get type => _$this._type;
  set type(SpotInstanceType? type) => _$this._type = type;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  DateTime? _validUntil;
  DateTime? get validUntil => _$this._validUntil;
  set validUntil(DateTime? validUntil) => _$this._validUntil = validUntil;

  InstanceInterruptionBehavior? _instanceInterruptionBehavior;
  InstanceInterruptionBehavior? get instanceInterruptionBehavior =>
      _$this._instanceInterruptionBehavior;
  set instanceInterruptionBehavior(
          InstanceInterruptionBehavior? instanceInterruptionBehavior) =>
      _$this._instanceInterruptionBehavior = instanceInterruptionBehavior;

  SpotInstanceRequestBuilder() {
    SpotInstanceRequest._init(this);
  }

  SpotInstanceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _actualBlockHourlyPrice = $v.actualBlockHourlyPrice;
      _availabilityZoneGroup = $v.availabilityZoneGroup;
      _blockDurationMinutes = $v.blockDurationMinutes;
      _createTime = $v.createTime;
      _fault = $v.fault?.toBuilder();
      _instanceId = $v.instanceId;
      _launchGroup = $v.launchGroup;
      _launchSpecification = $v.launchSpecification?.toBuilder();
      _launchedAvailabilityZone = $v.launchedAvailabilityZone;
      _productDescription = $v.productDescription;
      _spotInstanceRequestId = $v.spotInstanceRequestId;
      _spotPrice = $v.spotPrice;
      _state = $v.state;
      _status = $v.status?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _type = $v.type;
      _validFrom = $v.validFrom;
      _validUntil = $v.validUntil;
      _instanceInterruptionBehavior = $v.instanceInterruptionBehavior;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotInstanceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotInstanceRequest;
  }

  @override
  void update(void Function(SpotInstanceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotInstanceRequest build() => _build();

  _$SpotInstanceRequest _build() {
    _$SpotInstanceRequest _$result;
    try {
      _$result = _$v ??
          new _$SpotInstanceRequest._(
              actualBlockHourlyPrice: actualBlockHourlyPrice,
              availabilityZoneGroup: availabilityZoneGroup,
              blockDurationMinutes: BuiltValueNullFieldError.checkNotNull(
                  blockDurationMinutes,
                  r'SpotInstanceRequest',
                  'blockDurationMinutes'),
              createTime: createTime,
              fault: _fault?.build(),
              instanceId: instanceId,
              launchGroup: launchGroup,
              launchSpecification: _launchSpecification?.build(),
              launchedAvailabilityZone: launchedAvailabilityZone,
              productDescription: productDescription,
              spotInstanceRequestId: spotInstanceRequestId,
              spotPrice: spotPrice,
              state: state,
              status: _status?.build(),
              tags: _tags?.build(),
              type: type,
              validFrom: validFrom,
              validUntil: validUntil,
              instanceInterruptionBehavior: instanceInterruptionBehavior);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fault';
        _fault?.build();

        _$failedField = 'launchSpecification';
        _launchSpecification?.build();

        _$failedField = 'status';
        _status?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SpotInstanceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
