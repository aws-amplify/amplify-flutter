// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_instance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledInstance extends ScheduledInstance {
  @override
  final String? availabilityZone;
  @override
  final DateTime? createDate;
  @override
  final String? hourlyPrice;
  @override
  final int instanceCount;
  @override
  final String? instanceType;
  @override
  final String? networkPlatform;
  @override
  final DateTime? nextSlotStartTime;
  @override
  final String? platform;
  @override
  final DateTime? previousSlotEndTime;
  @override
  final ScheduledInstanceRecurrence? recurrence;
  @override
  final String? scheduledInstanceId;
  @override
  final int slotDurationInHours;
  @override
  final DateTime? termEndDate;
  @override
  final DateTime? termStartDate;
  @override
  final int totalScheduledInstanceHours;

  factory _$ScheduledInstance(
          [void Function(ScheduledInstanceBuilder)? updates]) =>
      (new ScheduledInstanceBuilder()..update(updates))._build();

  _$ScheduledInstance._(
      {this.availabilityZone,
      this.createDate,
      this.hourlyPrice,
      required this.instanceCount,
      this.instanceType,
      this.networkPlatform,
      this.nextSlotStartTime,
      this.platform,
      this.previousSlotEndTime,
      this.recurrence,
      this.scheduledInstanceId,
      required this.slotDurationInHours,
      this.termEndDate,
      this.termStartDate,
      required this.totalScheduledInstanceHours})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        instanceCount, r'ScheduledInstance', 'instanceCount');
    BuiltValueNullFieldError.checkNotNull(
        slotDurationInHours, r'ScheduledInstance', 'slotDurationInHours');
    BuiltValueNullFieldError.checkNotNull(totalScheduledInstanceHours,
        r'ScheduledInstance', 'totalScheduledInstanceHours');
  }

  @override
  ScheduledInstance rebuild(void Function(ScheduledInstanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledInstanceBuilder toBuilder() =>
      new ScheduledInstanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledInstance &&
        availabilityZone == other.availabilityZone &&
        createDate == other.createDate &&
        hourlyPrice == other.hourlyPrice &&
        instanceCount == other.instanceCount &&
        instanceType == other.instanceType &&
        networkPlatform == other.networkPlatform &&
        nextSlotStartTime == other.nextSlotStartTime &&
        platform == other.platform &&
        previousSlotEndTime == other.previousSlotEndTime &&
        recurrence == other.recurrence &&
        scheduledInstanceId == other.scheduledInstanceId &&
        slotDurationInHours == other.slotDurationInHours &&
        termEndDate == other.termEndDate &&
        termStartDate == other.termStartDate &&
        totalScheduledInstanceHours == other.totalScheduledInstanceHours;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, hourlyPrice.hashCode);
    _$hash = $jc(_$hash, instanceCount.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, networkPlatform.hashCode);
    _$hash = $jc(_$hash, nextSlotStartTime.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, previousSlotEndTime.hashCode);
    _$hash = $jc(_$hash, recurrence.hashCode);
    _$hash = $jc(_$hash, scheduledInstanceId.hashCode);
    _$hash = $jc(_$hash, slotDurationInHours.hashCode);
    _$hash = $jc(_$hash, termEndDate.hashCode);
    _$hash = $jc(_$hash, termStartDate.hashCode);
    _$hash = $jc(_$hash, totalScheduledInstanceHours.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ScheduledInstanceBuilder
    implements Builder<ScheduledInstance, ScheduledInstanceBuilder> {
  _$ScheduledInstance? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  String? _hourlyPrice;
  String? get hourlyPrice => _$this._hourlyPrice;
  set hourlyPrice(String? hourlyPrice) => _$this._hourlyPrice = hourlyPrice;

  int? _instanceCount;
  int? get instanceCount => _$this._instanceCount;
  set instanceCount(int? instanceCount) =>
      _$this._instanceCount = instanceCount;

  String? _instanceType;
  String? get instanceType => _$this._instanceType;
  set instanceType(String? instanceType) => _$this._instanceType = instanceType;

  String? _networkPlatform;
  String? get networkPlatform => _$this._networkPlatform;
  set networkPlatform(String? networkPlatform) =>
      _$this._networkPlatform = networkPlatform;

  DateTime? _nextSlotStartTime;
  DateTime? get nextSlotStartTime => _$this._nextSlotStartTime;
  set nextSlotStartTime(DateTime? nextSlotStartTime) =>
      _$this._nextSlotStartTime = nextSlotStartTime;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  DateTime? _previousSlotEndTime;
  DateTime? get previousSlotEndTime => _$this._previousSlotEndTime;
  set previousSlotEndTime(DateTime? previousSlotEndTime) =>
      _$this._previousSlotEndTime = previousSlotEndTime;

  ScheduledInstanceRecurrenceBuilder? _recurrence;
  ScheduledInstanceRecurrenceBuilder get recurrence =>
      _$this._recurrence ??= new ScheduledInstanceRecurrenceBuilder();
  set recurrence(ScheduledInstanceRecurrenceBuilder? recurrence) =>
      _$this._recurrence = recurrence;

  String? _scheduledInstanceId;
  String? get scheduledInstanceId => _$this._scheduledInstanceId;
  set scheduledInstanceId(String? scheduledInstanceId) =>
      _$this._scheduledInstanceId = scheduledInstanceId;

  int? _slotDurationInHours;
  int? get slotDurationInHours => _$this._slotDurationInHours;
  set slotDurationInHours(int? slotDurationInHours) =>
      _$this._slotDurationInHours = slotDurationInHours;

  DateTime? _termEndDate;
  DateTime? get termEndDate => _$this._termEndDate;
  set termEndDate(DateTime? termEndDate) => _$this._termEndDate = termEndDate;

  DateTime? _termStartDate;
  DateTime? get termStartDate => _$this._termStartDate;
  set termStartDate(DateTime? termStartDate) =>
      _$this._termStartDate = termStartDate;

  int? _totalScheduledInstanceHours;
  int? get totalScheduledInstanceHours => _$this._totalScheduledInstanceHours;
  set totalScheduledInstanceHours(int? totalScheduledInstanceHours) =>
      _$this._totalScheduledInstanceHours = totalScheduledInstanceHours;

  ScheduledInstanceBuilder() {
    ScheduledInstance._init(this);
  }

  ScheduledInstanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _createDate = $v.createDate;
      _hourlyPrice = $v.hourlyPrice;
      _instanceCount = $v.instanceCount;
      _instanceType = $v.instanceType;
      _networkPlatform = $v.networkPlatform;
      _nextSlotStartTime = $v.nextSlotStartTime;
      _platform = $v.platform;
      _previousSlotEndTime = $v.previousSlotEndTime;
      _recurrence = $v.recurrence?.toBuilder();
      _scheduledInstanceId = $v.scheduledInstanceId;
      _slotDurationInHours = $v.slotDurationInHours;
      _termEndDate = $v.termEndDate;
      _termStartDate = $v.termStartDate;
      _totalScheduledInstanceHours = $v.totalScheduledInstanceHours;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledInstance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduledInstance;
  }

  @override
  void update(void Function(ScheduledInstanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledInstance build() => _build();

  _$ScheduledInstance _build() {
    _$ScheduledInstance _$result;
    try {
      _$result = _$v ??
          new _$ScheduledInstance._(
              availabilityZone: availabilityZone,
              createDate: createDate,
              hourlyPrice: hourlyPrice,
              instanceCount: BuiltValueNullFieldError.checkNotNull(
                  instanceCount, r'ScheduledInstance', 'instanceCount'),
              instanceType: instanceType,
              networkPlatform: networkPlatform,
              nextSlotStartTime: nextSlotStartTime,
              platform: platform,
              previousSlotEndTime: previousSlotEndTime,
              recurrence: _recurrence?.build(),
              scheduledInstanceId: scheduledInstanceId,
              slotDurationInHours: BuiltValueNullFieldError.checkNotNull(
                  slotDurationInHours,
                  r'ScheduledInstance',
                  'slotDurationInHours'),
              termEndDate: termEndDate,
              termStartDate: termStartDate,
              totalScheduledInstanceHours:
                  BuiltValueNullFieldError.checkNotNull(
                      totalScheduledInstanceHours,
                      r'ScheduledInstance',
                      'totalScheduledInstanceHours'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recurrence';
        _recurrence?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ScheduledInstance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
