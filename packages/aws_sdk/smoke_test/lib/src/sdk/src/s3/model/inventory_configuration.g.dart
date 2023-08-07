// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InventoryConfiguration extends InventoryConfiguration {
  @override
  final InventoryDestination destination;
  @override
  final bool? isEnabled;
  @override
  final InventoryFilter? filter;
  @override
  final String id;
  @override
  final InventoryIncludedObjectVersions includedObjectVersions;
  @override
  final _i2.BuiltList<InventoryOptionalField>? optionalFields;
  @override
  final InventorySchedule schedule;

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

  InventoryDestinationBuilder? _destination;
  InventoryDestinationBuilder get destination =>
      _$this._destination ??= new InventoryDestinationBuilder();
  set destination(InventoryDestinationBuilder? destination) =>
      _$this._destination = destination;

  bool? _isEnabled;
  bool? get isEnabled => _$this._isEnabled;
  set isEnabled(bool? isEnabled) => _$this._isEnabled = isEnabled;

  InventoryFilterBuilder? _filter;
  InventoryFilterBuilder get filter =>
      _$this._filter ??= new InventoryFilterBuilder();
  set filter(InventoryFilterBuilder? filter) => _$this._filter = filter;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  InventoryIncludedObjectVersions? _includedObjectVersions;
  InventoryIncludedObjectVersions? get includedObjectVersions =>
      _$this._includedObjectVersions;
  set includedObjectVersions(
          InventoryIncludedObjectVersions? includedObjectVersions) =>
      _$this._includedObjectVersions = includedObjectVersions;

  _i2.ListBuilder<InventoryOptionalField>? _optionalFields;
  _i2.ListBuilder<InventoryOptionalField> get optionalFields =>
      _$this._optionalFields ??= new _i2.ListBuilder<InventoryOptionalField>();
  set optionalFields(_i2.ListBuilder<InventoryOptionalField>? optionalFields) =>
      _$this._optionalFields = optionalFields;

  InventoryScheduleBuilder? _schedule;
  InventoryScheduleBuilder get schedule =>
      _$this._schedule ??= new InventoryScheduleBuilder();
  set schedule(InventoryScheduleBuilder? schedule) =>
      _$this._schedule = schedule;

  InventoryConfigurationBuilder();

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
