// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.inventory_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InventoryConfiguration extends InventoryConfiguration {
  @override
  final _i2.InventoryDestination destination;
  @override
  final _i3.InventoryFilter? filter;
  @override
  final String id;
  @override
  final _i4.InventoryIncludedObjectVersions includedObjectVersions;
  @override
  final bool isEnabled;
  @override
  final _i7.BuiltList<_i5.InventoryOptionalField>? optionalFields;
  @override
  final _i6.InventorySchedule schedule;

  factory _$InventoryConfiguration(
          [void Function(InventoryConfigurationBuilder)? updates]) =>
      (new InventoryConfigurationBuilder()..update(updates))._build();

  _$InventoryConfiguration._(
      {required this.destination,
      this.filter,
      required this.id,
      required this.includedObjectVersions,
      required this.isEnabled,
      this.optionalFields,
      required this.schedule})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        destination, r'InventoryConfiguration', 'destination');
    BuiltValueNullFieldError.checkNotNull(id, r'InventoryConfiguration', 'id');
    BuiltValueNullFieldError.checkNotNull(includedObjectVersions,
        r'InventoryConfiguration', 'includedObjectVersions');
    BuiltValueNullFieldError.checkNotNull(
        isEnabled, r'InventoryConfiguration', 'isEnabled');
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
        filter == other.filter &&
        id == other.id &&
        includedObjectVersions == other.includedObjectVersions &&
        isEnabled == other.isEnabled &&
        optionalFields == other.optionalFields &&
        schedule == other.schedule;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, destination.hashCode), filter.hashCode),
                        id.hashCode),
                    includedObjectVersions.hashCode),
                isEnabled.hashCode),
            optionalFields.hashCode),
        schedule.hashCode));
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

  bool? _isEnabled;
  bool? get isEnabled => _$this._isEnabled;
  set isEnabled(bool? isEnabled) => _$this._isEnabled = isEnabled;

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
      _filter = $v.filter?.toBuilder();
      _id = $v.id;
      _includedObjectVersions = $v.includedObjectVersions;
      _isEnabled = $v.isEnabled;
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
              filter: _filter?.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'InventoryConfiguration', 'id'),
              includedObjectVersions: BuiltValueNullFieldError.checkNotNull(
                  includedObjectVersions,
                  r'InventoryConfiguration',
                  'includedObjectVersions'),
              isEnabled: BuiltValueNullFieldError.checkNotNull(
                  isEnabled, r'InventoryConfiguration', 'isEnabled'),
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
