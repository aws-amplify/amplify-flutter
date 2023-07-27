// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lambda_function_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LambdaFunctionConfiguration extends LambdaFunctionConfiguration {
  @override
  final String? id;
  @override
  final String lambdaFunctionArn;
  @override
  final _i4.BuiltList<_i2.Event> events;
  @override
  final _i3.NotificationConfigurationFilter? filter;

  factory _$LambdaFunctionConfiguration(
          [void Function(LambdaFunctionConfigurationBuilder)? updates]) =>
      (new LambdaFunctionConfigurationBuilder()..update(updates))._build();

  _$LambdaFunctionConfiguration._(
      {this.id,
      required this.lambdaFunctionArn,
      required this.events,
      this.filter})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        lambdaFunctionArn, r'LambdaFunctionConfiguration', 'lambdaFunctionArn');
    BuiltValueNullFieldError.checkNotNull(
        events, r'LambdaFunctionConfiguration', 'events');
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
        id == other.id &&
        lambdaFunctionArn == other.lambdaFunctionArn &&
        events == other.events &&
        filter == other.filter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, lambdaFunctionArn.hashCode);
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LambdaFunctionConfigurationBuilder
    implements
        Builder<LambdaFunctionConfiguration,
            LambdaFunctionConfigurationBuilder> {
  _$LambdaFunctionConfiguration? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _lambdaFunctionArn;
  String? get lambdaFunctionArn => _$this._lambdaFunctionArn;
  set lambdaFunctionArn(String? lambdaFunctionArn) =>
      _$this._lambdaFunctionArn = lambdaFunctionArn;

  _i4.ListBuilder<_i2.Event>? _events;
  _i4.ListBuilder<_i2.Event> get events =>
      _$this._events ??= new _i4.ListBuilder<_i2.Event>();
  set events(_i4.ListBuilder<_i2.Event>? events) => _$this._events = events;

  _i3.NotificationConfigurationFilterBuilder? _filter;
  _i3.NotificationConfigurationFilterBuilder get filter =>
      _$this._filter ??= new _i3.NotificationConfigurationFilterBuilder();
  set filter(_i3.NotificationConfigurationFilterBuilder? filter) =>
      _$this._filter = filter;

  LambdaFunctionConfigurationBuilder();

  LambdaFunctionConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _lambdaFunctionArn = $v.lambdaFunctionArn;
      _events = $v.events.toBuilder();
      _filter = $v.filter?.toBuilder();
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
              id: id,
              lambdaFunctionArn: BuiltValueNullFieldError.checkNotNull(
                  lambdaFunctionArn,
                  r'LambdaFunctionConfiguration',
                  'lambdaFunctionArn'),
              events: events.build(),
              filter: _filter?.build());
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
