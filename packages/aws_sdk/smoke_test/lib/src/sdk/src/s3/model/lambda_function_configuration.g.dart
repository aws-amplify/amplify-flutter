// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.lambda_function_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LambdaFunctionConfiguration extends LambdaFunctionConfiguration {
  @override
  final _i4.BuiltList<_i2.Event> events;
  @override
  final _i3.NotificationConfigurationFilter? filter;
  @override
  final String? id;
  @override
  final String lambdaFunctionArn;

  factory _$LambdaFunctionConfiguration(
          [void Function(LambdaFunctionConfigurationBuilder)? updates]) =>
      (new LambdaFunctionConfigurationBuilder()..update(updates))._build();

  _$LambdaFunctionConfiguration._(
      {required this.events,
      this.filter,
      this.id,
      required this.lambdaFunctionArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        events, r'LambdaFunctionConfiguration', 'events');
    BuiltValueNullFieldError.checkNotNull(
        lambdaFunctionArn, r'LambdaFunctionConfiguration', 'lambdaFunctionArn');
  }

  @override
  LambdaFunctionConfiguration rebuild(
          void Function(LambdaFunctionConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LambdaFunctionConfigurationBuilder toBuilder() =>
      new LambdaFunctionConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LambdaFunctionConfiguration &&
        events == other.events &&
        filter == other.filter &&
        id == other.id &&
        lambdaFunctionArn == other.lambdaFunctionArn;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, events.hashCode), filter.hashCode), id.hashCode),
        lambdaFunctionArn.hashCode));
  }
}

class LambdaFunctionConfigurationBuilder
    implements
        Builder<LambdaFunctionConfiguration,
            LambdaFunctionConfigurationBuilder> {
  _$LambdaFunctionConfiguration? _$v;

  _i4.ListBuilder<_i2.Event>? _events;
  _i4.ListBuilder<_i2.Event> get events =>
      _$this._events ??= new _i4.ListBuilder<_i2.Event>();
  set events(_i4.ListBuilder<_i2.Event>? events) => _$this._events = events;

  _i3.NotificationConfigurationFilterBuilder? _filter;
  _i3.NotificationConfigurationFilterBuilder get filter =>
      _$this._filter ??= new _i3.NotificationConfigurationFilterBuilder();
  set filter(_i3.NotificationConfigurationFilterBuilder? filter) =>
      _$this._filter = filter;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _lambdaFunctionArn;
  String? get lambdaFunctionArn => _$this._lambdaFunctionArn;
  set lambdaFunctionArn(String? lambdaFunctionArn) =>
      _$this._lambdaFunctionArn = lambdaFunctionArn;

  LambdaFunctionConfigurationBuilder() {
    LambdaFunctionConfiguration._init(this);
  }

  LambdaFunctionConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _events = $v.events.toBuilder();
      _filter = $v.filter?.toBuilder();
      _id = $v.id;
      _lambdaFunctionArn = $v.lambdaFunctionArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LambdaFunctionConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LambdaFunctionConfiguration;
  }

  @override
  void update(void Function(LambdaFunctionConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LambdaFunctionConfiguration build() => _build();

  _$LambdaFunctionConfiguration _build() {
    _$LambdaFunctionConfiguration _$result;
    try {
      _$result = _$v ??
          new _$LambdaFunctionConfiguration._(
              events: events.build(),
              filter: _filter?.build(),
              id: id,
              lambdaFunctionArn: BuiltValueNullFieldError.checkNotNull(
                  lambdaFunctionArn,
                  r'LambdaFunctionConfiguration',
                  'lambdaFunctionArn'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'events';
        events.build();
        _$failedField = 'filter';
        _filter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LambdaFunctionConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
