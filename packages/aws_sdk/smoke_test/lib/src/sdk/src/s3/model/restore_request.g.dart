// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restore_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreRequest extends RestoreRequest {
  @override
  final int? days;
  @override
  final GlacierJobParameters? glacierJobParameters;
  @override
  final RestoreRequestType? type;
  @override
  final Tier? tier;
  @override
  final String? description;
  @override
  final SelectParameters? selectParameters;
  @override
  final OutputLocation? outputLocation;

  factory _$RestoreRequest([void Function(RestoreRequestBuilder)? updates]) =>
      (new RestoreRequestBuilder()..update(updates))._build();

  _$RestoreRequest._(
      {this.days,
      this.glacierJobParameters,
      this.type,
      this.tier,
      this.description,
      this.selectParameters,
      this.outputLocation})
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
        glacierJobParameters == other.glacierJobParameters &&
        type == other.type &&
        tier == other.tier &&
        description == other.description &&
        selectParameters == other.selectParameters &&
        outputLocation == other.outputLocation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, days.hashCode);
    _$hash = $jc(_$hash, glacierJobParameters.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, tier.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, selectParameters.hashCode);
    _$hash = $jc(_$hash, outputLocation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestoreRequestBuilder
    implements Builder<RestoreRequest, RestoreRequestBuilder> {
  _$RestoreRequest? _$v;

  int? _days;
  int? get days => _$this._days;
  set days(int? days) => _$this._days = days;

  GlacierJobParametersBuilder? _glacierJobParameters;
  GlacierJobParametersBuilder get glacierJobParameters =>
      _$this._glacierJobParameters ??= new GlacierJobParametersBuilder();
  set glacierJobParameters(GlacierJobParametersBuilder? glacierJobParameters) =>
      _$this._glacierJobParameters = glacierJobParameters;

  RestoreRequestType? _type;
  RestoreRequestType? get type => _$this._type;
  set type(RestoreRequestType? type) => _$this._type = type;

  Tier? _tier;
  Tier? get tier => _$this._tier;
  set tier(Tier? tier) => _$this._tier = tier;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  SelectParametersBuilder? _selectParameters;
  SelectParametersBuilder get selectParameters =>
      _$this._selectParameters ??= new SelectParametersBuilder();
  set selectParameters(SelectParametersBuilder? selectParameters) =>
      _$this._selectParameters = selectParameters;

  OutputLocationBuilder? _outputLocation;
  OutputLocationBuilder get outputLocation =>
      _$this._outputLocation ??= new OutputLocationBuilder();
  set outputLocation(OutputLocationBuilder? outputLocation) =>
      _$this._outputLocation = outputLocation;

  RestoreRequestBuilder();

  RestoreRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _days = $v.days;
      _glacierJobParameters = $v.glacierJobParameters?.toBuilder();
      _type = $v.type;
      _tier = $v.tier;
      _description = $v.description;
      _selectParameters = $v.selectParameters?.toBuilder();
      _outputLocation = $v.outputLocation?.toBuilder();
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
              glacierJobParameters: _glacierJobParameters?.build(),
              type: type,
              tier: tier,
              description: description,
              selectParameters: _selectParameters?.build(),
              outputLocation: _outputLocation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'glacierJobParameters';
        _glacierJobParameters?.build();

        _$failedField = 'selectParameters';
        _selectParameters?.build();
        _$failedField = 'outputLocation';
        _outputLocation?.build();
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
