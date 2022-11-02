// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.restore_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreRequest extends RestoreRequest {
  @override
  final int? days;
  @override
  final String? description;
  @override
  final _i2.GlacierJobParameters? glacierJobParameters;
  @override
  final _i3.OutputLocation? outputLocation;
  @override
  final _i4.SelectParameters? selectParameters;
  @override
  final _i5.Tier? tier;
  @override
  final _i6.RestoreRequestType? type;

  factory _$RestoreRequest([void Function(RestoreRequestBuilder)? updates]) =>
      (new RestoreRequestBuilder()..update(updates))._build();

  _$RestoreRequest._(
      {this.days,
      this.description,
      this.glacierJobParameters,
      this.outputLocation,
      this.selectParameters,
      this.tier,
      this.type})
      : super._();

  @override
  RestoreRequest rebuild(void Function(RestoreRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreRequestBuilder toBuilder() =>
      new RestoreRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreRequest &&
        days == other.days &&
        description == other.description &&
        glacierJobParameters == other.glacierJobParameters &&
        outputLocation == other.outputLocation &&
        selectParameters == other.selectParameters &&
        tier == other.tier &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, days.hashCode), description.hashCode),
                        glacierJobParameters.hashCode),
                    outputLocation.hashCode),
                selectParameters.hashCode),
            tier.hashCode),
        type.hashCode));
  }
}

class RestoreRequestBuilder
    implements Builder<RestoreRequest, RestoreRequestBuilder> {
  _$RestoreRequest? _$v;

  int? _days;
  int? get days => _$this._days;
  set days(int? days) => _$this._days = days;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.GlacierJobParametersBuilder? _glacierJobParameters;
  _i2.GlacierJobParametersBuilder get glacierJobParameters =>
      _$this._glacierJobParameters ??= new _i2.GlacierJobParametersBuilder();
  set glacierJobParameters(
          _i2.GlacierJobParametersBuilder? glacierJobParameters) =>
      _$this._glacierJobParameters = glacierJobParameters;

  _i3.OutputLocationBuilder? _outputLocation;
  _i3.OutputLocationBuilder get outputLocation =>
      _$this._outputLocation ??= new _i3.OutputLocationBuilder();
  set outputLocation(_i3.OutputLocationBuilder? outputLocation) =>
      _$this._outputLocation = outputLocation;

  _i4.SelectParametersBuilder? _selectParameters;
  _i4.SelectParametersBuilder get selectParameters =>
      _$this._selectParameters ??= new _i4.SelectParametersBuilder();
  set selectParameters(_i4.SelectParametersBuilder? selectParameters) =>
      _$this._selectParameters = selectParameters;

  _i5.Tier? _tier;
  _i5.Tier? get tier => _$this._tier;
  set tier(_i5.Tier? tier) => _$this._tier = tier;

  _i6.RestoreRequestType? _type;
  _i6.RestoreRequestType? get type => _$this._type;
  set type(_i6.RestoreRequestType? type) => _$this._type = type;

  RestoreRequestBuilder() {
    RestoreRequest._init(this);
  }

  RestoreRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _days = $v.days;
      _description = $v.description;
      _glacierJobParameters = $v.glacierJobParameters?.toBuilder();
      _outputLocation = $v.outputLocation?.toBuilder();
      _selectParameters = $v.selectParameters?.toBuilder();
      _tier = $v.tier;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreRequest;
  }

  @override
  void update(void Function(RestoreRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreRequest build() => _build();

  _$RestoreRequest _build() {
    _$RestoreRequest _$result;
    try {
      _$result = _$v ??
          new _$RestoreRequest._(
              days: days,
              description: description,
              glacierJobParameters: _glacierJobParameters?.build(),
              outputLocation: _outputLocation?.build(),
              selectParameters: _selectParameters?.build(),
              tier: tier,
              type: type);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'glacierJobParameters';
        _glacierJobParameters?.build();
        _$failedField = 'outputLocation';
        _outputLocation?.build();
        _$failedField = 'selectParameters';
        _selectParameters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RestoreRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
