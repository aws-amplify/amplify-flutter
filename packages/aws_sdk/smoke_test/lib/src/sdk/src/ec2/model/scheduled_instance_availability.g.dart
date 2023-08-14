// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_instance_availability.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledInstanceAvailability extends ScheduledInstanceAvailability {
  @override
  final String? availabilityZone;
  @override
  final int availableInstanceCount;
  @override
  final DateTime? firstSlotStartTime;
  @override
  final String? hourlyPrice;
  @override
  final String? instanceType;
  @override
  final int maxTermDurationInDays;
  @override
  final int minTermDurationInDays;
  @override
  final String? networkPlatform;
  @override
  final String? platform;
  @override
  final String? purchaseToken;
  @override
  final ScheduledInstanceRecurrence? recurrence;
  @override
  final int slotDurationInHours;
  @override
  final int totalScheduledInstanceHours;

  factory _$ScheduledInstanceAvailability(
          [void Function(ScheduledInstanceAvailabilityBuilder)? updates]) =>
      (new ScheduledInstanceAvailabilityBuilder()..update(updates))._build();

  _$ScheduledInstanceAvailability._(
      {this.availabilityZone,
      required this.availableInstanceCount,
      this.firstSlotStartTime,
      this.hourlyPrice,
      this.instanceType,
      required this.maxTermDurationInDays,
      required this.minTermDurationInDays,
      this.networkPlatform,
      this.platform,
      this.purchaseToken,
      this.recurrence,
      required this.slotDurationInHours,
      required this.totalScheduledInstanceHours})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(availableInstanceCount,
        r'ScheduledInstanceAvailability', 'availableInstanceCount');
    BuiltValueNullFieldError.checkNotNull(maxTermDurationInDays,
        r'ScheduledInstanceAvailability', 'maxTermDurationInDays');
    BuiltValueNullFieldError.checkNotNull(minTermDurationInDays,
        r'ScheduledInstanceAvailability', 'minTermDurationInDays');
    BuiltValueNullFieldError.checkNotNull(slotDurationInHours,
        r'ScheduledInstanceAvailability', 'slotDurationInHours');
    BuiltValueNullFieldError.checkNotNull(totalScheduledInstanceHours,
        r'ScheduledInstanceAvailability', 'totalScheduledInstanceHours');
  }

  @override
  ScheduledInstanceAvailability rebuild(
          void Function(ScheduledInstanceAvailabilityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledInstanceAvailabilityBuilder toBuilder() =>
      new ScheduledInstanceAvailabilityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledInstanceAvailability &&
        availabilityZone == other.availabilityZone &&
        availableInstanceCount == other.availableInstanceCount &&
        firstSlotStartTime == other.firstSlotStartTime &&
        hourlyPrice == other.hourlyPrice &&
        instanceType == other.instanceType &&
        maxTermDurationInDays == other.maxTermDurationInDays &&
        minTermDurationInDays == other.minTermDurationInDays &&
        networkPlatform == other.networkPlatform &&
        platform == other.platform &&
        purchaseToken == other.purchaseToken &&
        recurrence == other.recurrence &&
        slotDurationInHours == other.slotDurationInHours &&
        totalScheduledInstanceHours == other.totalScheduledInstanceHours;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, availableInstanceCount.hashCode);
    _$hash = $jc(_$hash, firstSlotStartTime.hashCode);
    _$hash = $jc(_$hash, hourlyPrice.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, maxTermDurationInDays.hashCode);
    _$hash = $jc(_$hash, minTermDurationInDays.hashCode);
    _$hash = $jc(_$hash, networkPlatform.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, purchaseToken.hashCode);
    _$hash = $jc(_$hash, recurrence.hashCode);
    _$hash = $jc(_$hash, slotDurationInHours.hashCode);
    _$hash = $jc(_$hash, totalScheduledInstanceHours.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ScheduledInstanceAvailabilityBuilder
    implements
        Builder<ScheduledInstanceAvailability,
            ScheduledInstanceAvailabilityBuilder> {
  _$ScheduledInstanceAvailability? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  int? _availableInstanceCount;
  int? get availableInstanceCount => _$this._availableInstanceCount;
  set availableInstanceCount(int? availableInstanceCount) =>
      _$this._availableInstanceCount = availableInstanceCount;

  DateTime? _firstSlotStartTime;
  DateTime? get firstSlotStartTime => _$this._firstSlotStartTime;
  set firstSlotStartTime(DateTime? firstSlotStartTime) =>
      _$this._firstSlotStartTime = firstSlotStartTime;

  String? _hourlyPrice;
  String? get hourlyPrice => _$this._hourlyPrice;
  set hourlyPrice(String? hourlyPrice) => _$this._hourlyPrice = hourlyPrice;

  String? _instanceType;
  String? get instanceType => _$this._instanceType;
  set instanceType(String? instanceType) => _$this._instanceType = instanceType;

  int? _maxTermDurationInDays;
  int? get maxTermDurationInDays => _$this._maxTermDurationInDays;
  set maxTermDurationInDays(int? maxTermDurationInDays) =>
      _$this._maxTermDurationInDays = maxTermDurationInDays;

  int? _minTermDurationInDays;
  int? get minTermDurationInDays => _$this._minTermDurationInDays;
  set minTermDurationInDays(int? minTermDurationInDays) =>
      _$this._minTermDurationInDays = minTermDurationInDays;

  String? _networkPlatform;
  String? get networkPlatform => _$this._networkPlatform;
  set networkPlatform(String? networkPlatform) =>
      _$this._networkPlatform = networkPlatform;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _purchaseToken;
  String? get purchaseToken => _$this._purchaseToken;
  set purchaseToken(String? purchaseToken) =>
      _$this._purchaseToken = purchaseToken;

  ScheduledInstanceRecurrenceBuilder? _recurrence;
  ScheduledInstanceRecurrenceBuilder get recurrence =>
      _$this._recurrence ??= new ScheduledInstanceRecurrenceBuilder();
  set recurrence(ScheduledInstanceRecurrenceBuilder? recurrence) =>
      _$this._recurrence = recurrence;

  int? _slotDurationInHours;
  int? get slotDurationInHours => _$this._slotDurationInHours;
  set slotDurationInHours(int? slotDurationInHours) =>
      _$this._slotDurationInHours = slotDurationInHours;

  int? _totalScheduledInstanceHours;
  int? get totalScheduledInstanceHours => _$this._totalScheduledInstanceHours;
  set totalScheduledInstanceHours(int? totalScheduledInstanceHours) =>
      _$this._totalScheduledInstanceHours = totalScheduledInstanceHours;

  ScheduledInstanceAvailabilityBuilder() {
    ScheduledInstanceAvailability._init(this);
  }

  ScheduledInstanceAvailabilityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _availableInstanceCount = $v.availableInstanceCount;
      _firstSlotStartTime = $v.firstSlotStartTime;
      _hourlyPrice = $v.hourlyPrice;
      _instanceType = $v.instanceType;
      _maxTermDurationInDays = $v.maxTermDurationInDays;
      _minTermDurationInDays = $v.minTermDurationInDays;
      _networkPlatform = $v.networkPlatform;
      _platform = $v.platform;
      _purchaseToken = $v.purchaseToken;
      _recurrence = $v.recurrence?.toBuilder();
      _slotDurationInHours = $v.slotDurationInHours;
      _totalScheduledInstanceHours = $v.totalScheduledInstanceHours;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledInstanceAvailability other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduledInstanceAvailability;
  }

  @override
  void update(void Function(ScheduledInstanceAvailabilityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledInstanceAvailability build() => _build();

  _$ScheduledInstanceAvailability _build() {
    _$ScheduledInstanceAvailability _$result;
    try {
      _$result = _$v ??
          new _$ScheduledInstanceAvailability._(
              availabilityZone: availabilityZone,
              availableInstanceCount: BuiltValueNullFieldError.checkNotNull(
                  availableInstanceCount,
                  r'ScheduledInstanceAvailability',
                  'availableInstanceCount'),
              firstSlotStartTime: firstSlotStartTime,
              hourlyPrice: hourlyPrice,
              instanceType: instanceType,
              maxTermDurationInDays: BuiltValueNullFieldError.checkNotNull(
                  maxTermDurationInDays,
                  r'ScheduledInstanceAvailability',
                  'maxTermDurationInDays'),
              minTermDurationInDays: BuiltValueNullFieldError.checkNotNull(
                  minTermDurationInDays,
                  r'ScheduledInstanceAvailability',
                  'minTermDurationInDays'),
              networkPlatform: networkPlatform,
              platform: platform,
              purchaseToken: purchaseToken,
              recurrence: _recurrence?.build(),
              slotDurationInHours: BuiltValueNullFieldError.checkNotNull(
                  slotDurationInHours, r'ScheduledInstanceAvailability', 'slotDurationInHours'),
              totalScheduledInstanceHours: BuiltValueNullFieldError.checkNotNull(
                  totalScheduledInstanceHours,
                  r'ScheduledInstanceAvailability',
                  'totalScheduledInstanceHours'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recurrence';
        _recurrence?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ScheduledInstanceAvailability', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
