// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_spot_market_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateSpotMarketOptionsRequest
    extends LaunchTemplateSpotMarketOptionsRequest {
  @override
  final String? maxPrice;
  @override
  final SpotInstanceType? spotInstanceType;
  @override
  final int blockDurationMinutes;
  @override
  final DateTime? validUntil;
  @override
  final InstanceInterruptionBehavior? instanceInterruptionBehavior;

  factory _$LaunchTemplateSpotMarketOptionsRequest(
          [void Function(LaunchTemplateSpotMarketOptionsRequestBuilder)?
              updates]) =>
      (new LaunchTemplateSpotMarketOptionsRequestBuilder()..update(updates))
          ._build();

  _$LaunchTemplateSpotMarketOptionsRequest._(
      {this.maxPrice,
      this.spotInstanceType,
      required this.blockDurationMinutes,
      this.validUntil,
      this.instanceInterruptionBehavior})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(blockDurationMinutes,
        r'LaunchTemplateSpotMarketOptionsRequest', 'blockDurationMinutes');
  }

  @override
  LaunchTemplateSpotMarketOptionsRequest rebuild(
          void Function(LaunchTemplateSpotMarketOptionsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateSpotMarketOptionsRequestBuilder toBuilder() =>
      new LaunchTemplateSpotMarketOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateSpotMarketOptionsRequest &&
        maxPrice == other.maxPrice &&
        spotInstanceType == other.spotInstanceType &&
        blockDurationMinutes == other.blockDurationMinutes &&
        validUntil == other.validUntil &&
        instanceInterruptionBehavior == other.instanceInterruptionBehavior;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxPrice.hashCode);
    _$hash = $jc(_$hash, spotInstanceType.hashCode);
    _$hash = $jc(_$hash, blockDurationMinutes.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, instanceInterruptionBehavior.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateSpotMarketOptionsRequestBuilder
    implements
        Builder<LaunchTemplateSpotMarketOptionsRequest,
            LaunchTemplateSpotMarketOptionsRequestBuilder> {
  _$LaunchTemplateSpotMarketOptionsRequest? _$v;

  String? _maxPrice;
  String? get maxPrice => _$this._maxPrice;
  set maxPrice(String? maxPrice) => _$this._maxPrice = maxPrice;

  SpotInstanceType? _spotInstanceType;
  SpotInstanceType? get spotInstanceType => _$this._spotInstanceType;
  set spotInstanceType(SpotInstanceType? spotInstanceType) =>
      _$this._spotInstanceType = spotInstanceType;

  int? _blockDurationMinutes;
  int? get blockDurationMinutes => _$this._blockDurationMinutes;
  set blockDurationMinutes(int? blockDurationMinutes) =>
      _$this._blockDurationMinutes = blockDurationMinutes;

  DateTime? _validUntil;
  DateTime? get validUntil => _$this._validUntil;
  set validUntil(DateTime? validUntil) => _$this._validUntil = validUntil;

  InstanceInterruptionBehavior? _instanceInterruptionBehavior;
  InstanceInterruptionBehavior? get instanceInterruptionBehavior =>
      _$this._instanceInterruptionBehavior;
  set instanceInterruptionBehavior(
          InstanceInterruptionBehavior? instanceInterruptionBehavior) =>
      _$this._instanceInterruptionBehavior = instanceInterruptionBehavior;

  LaunchTemplateSpotMarketOptionsRequestBuilder() {
    LaunchTemplateSpotMarketOptionsRequest._init(this);
  }

  LaunchTemplateSpotMarketOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxPrice = $v.maxPrice;
      _spotInstanceType = $v.spotInstanceType;
      _blockDurationMinutes = $v.blockDurationMinutes;
      _validUntil = $v.validUntil;
      _instanceInterruptionBehavior = $v.instanceInterruptionBehavior;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateSpotMarketOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateSpotMarketOptionsRequest;
  }

  @override
  void update(
      void Function(LaunchTemplateSpotMarketOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateSpotMarketOptionsRequest build() => _build();

  _$LaunchTemplateSpotMarketOptionsRequest _build() {
    final _$result = _$v ??
        new _$LaunchTemplateSpotMarketOptionsRequest._(
            maxPrice: maxPrice,
            spotInstanceType: spotInstanceType,
            blockDurationMinutes: BuiltValueNullFieldError.checkNotNull(
                blockDurationMinutes,
                r'LaunchTemplateSpotMarketOptionsRequest',
                'blockDurationMinutes'),
            validUntil: validUntil,
            instanceInterruptionBehavior: instanceInterruptionBehavior);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
