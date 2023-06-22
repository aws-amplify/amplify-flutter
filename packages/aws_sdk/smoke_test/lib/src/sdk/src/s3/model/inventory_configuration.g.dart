// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InventoryConfiguration extends InventoryConfiguration {
  @override
  final _i2.InventoryDestination destination;
  @override
  final bool? isEnabled;
  @override
  final _i3.InventoryFilter? filter;
  @override
  final String id;
  @override
  final _i4.InventoryIncludedObjectVersions includedObjectVersions;
  @override
  final _i7.BuiltList<_i5.InventoryOptionalField>? optionalFields;
  @override
  final _i6.InventorySchedule schedule;

  factory _$InventoryConfiguration(
          [void Function(InventoryConfigurationBuilder)? updates]) =>
      (new InventoryConfigurationBuilder()..update(updates))._build();

  _$InventoryConfiguration._(
      {required this.destination,
      this.isEnabled,
      this.filter,
      required this.id,
      required this.includedObjectVersions,
      this.optionalFields,
      required this.schedule})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        destination, r'InventoryConfiguration', 'destination');
    BuiltValueNullFieldError.checkNotNull(id, r'InventoryConfiguration', 'id');
    BuiltValueNullFieldError.checkNotNull(includedObjectVersions,
        r'InventoryConfiguration', 'includedObjectVersions');
    BuiltValueNullFieldError.checkNotNull(
        schedule, r'InventoryConfiguration', 'schedule');
  }

  @override
  InventoryConfiguration rebuild(
          void Function(InventoryConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InventoryConfigurationBuilder toBuilder() =>
      new InventoryConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InventoryConfiguration &&
        destination == other.destination &&
        isEnabled == other.isEnabled &&
        filter == other.filter &&
        id == other.id &&
        includedObjectVersions == other.includedObjectVersions &&
        optionalFields == other.optionalFields &&
        schedule == other.schedule;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, isEnabled.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, includedObjectVersions.hashCode);
    _$hash = $jc(_$hash, optionalFields.hashCode);
    _$hash = $jc(_$hash, schedule.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InventoryConfigurationBuilder
    implements Builder<InventoryConfiguration, InventoryConfigurationBuilder> {
  _$InventoryConfiguration? _$v;

  _i2.InventoryDestinationBuilder? _destination;
  _i2.InventoryDestinationBuilder get destination =>
      _$this._destination ??= new _i2.InventoryDestinationBuilder();
  set destination(_i2.InventoryDestinationBuilder? destination) =>
      _$this._destination = destination;

  bool? _isEnabled;
  bool? get isEnabled => _$this._isEnabled;
  set isEnabled(bool? isEnabled) => _$this._isEnabled = isEnabled;

  _i3.InventoryFilterBuilder? _filter;
  _i3.InventoryFilterBuilder get filter =>
      _$this._filter ??= new _i3.InventoryFilterBuilder();
  set filter(_i3.InventoryFilterBuilder? filter) => _$this._filter = filter;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i4.InventoryIncludedObjectVersions? _includedObjectVersions;
  _i4.InventoryIncludedObjectVersions? get includedObjectVersions =>
      _$this._includedObjectVersions;
  set includedObjectVersions(
          _i4.InventoryIncludedObjectVersions? includedObjectVersions) =>
      _$this._includedObjectVersions = includedObjectVersions;

  _i7.ListBuilder<_i5.InventoryOptionalField>? _optionalFields;
  _i7.ListBuilder<_i5.InventoryOptionalField> get optionalFields =>
      _$this._optionalFields ??=
          new _i7.ListBuilder<_i5.InventoryOptionalField>();
  set optionalFields(
          _i7.ListBuilder<_i5.InventoryOptionalField>? optionalFields) =>
      _$this._optionalFields = optionalFields;

  _i6.InventoryScheduleBuilder? _schedule;
  _i6.InventoryScheduleBuilder get schedule =>
      _$this._schedule ??= new _i6.InventoryScheduleBuilder();
  set schedule(_i6.InventoryScheduleBuilder? schedule) =>
      _$this._schedule = schedule;

  InventoryConfigurationBuilder() {
    InventoryConfiguration._init(this);
  }

  InventoryConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destination = $v.destination.toBuilder();
      _isEnabled = $v.isEnabled;
      _filter = $v.filter?.toBuilder();
      _id = $v.id;
      _includedObjectVersions = $v.includedObjectVersions;
      _optionalFields = $v.optionalFields?.toBuilder();
      _schedule = $v.schedule.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InventoryConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InventoryConfiguration;
  }

  @override
  void update(void Function(InventoryConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InventoryConfiguration build() => _build();

  _$InventoryConfiguration _build() {
    _$InventoryConfiguration _$result;
    try {
      _$result = _$v ??
          new _$InventoryConfiguration._(
              destination: destination.build(),
              isEnabled: isEnabled,
              filter: _filter?.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'InventoryConfiguration', 'id'),
              includedObjectVersions: BuiltValueNullFieldError.checkNotNull(
                  includedObjectVersions,
                  r'InventoryConfiguration',
                  'includedObjectVersions'),
              optionalFields: _optionalFields?.build(),
              schedule: schedule.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'destination';
        destination.build();

        _$failedField = 'filter';
        _filter?.build();

        _$failedField = 'optionalFields';
        _optionalFields?.build();
        _$failedField = 'schedule';
        schedule.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InventoryConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
