// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_instance_market_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateInstanceMarketOptionsRequest
    extends LaunchTemplateInstanceMarketOptionsRequest {
  @override
  final MarketType? marketType;
  @override
  final LaunchTemplateSpotMarketOptionsRequest? spotOptions;

  factory _$LaunchTemplateInstanceMarketOptionsRequest(
          [void Function(LaunchTemplateInstanceMarketOptionsRequestBuilder)?
              updates]) =>
      (new LaunchTemplateInstanceMarketOptionsRequestBuilder()..update(updates))
          ._build();

  _$LaunchTemplateInstanceMarketOptionsRequest._(
      {this.marketType, this.spotOptions})
      : super._();

  @override
  LaunchTemplateInstanceMarketOptionsRequest rebuild(
          void Function(LaunchTemplateInstanceMarketOptionsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateInstanceMarketOptionsRequestBuilder toBuilder() =>
      new LaunchTemplateInstanceMarketOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateInstanceMarketOptionsRequest &&
        marketType == other.marketType &&
        spotOptions == other.spotOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, marketType.hashCode);
    _$hash = $jc(_$hash, spotOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateInstanceMarketOptionsRequestBuilder
    implements
        Builder<LaunchTemplateInstanceMarketOptionsRequest,
            LaunchTemplateInstanceMarketOptionsRequestBuilder> {
  _$LaunchTemplateInstanceMarketOptionsRequest? _$v;

  MarketType? _marketType;
  MarketType? get marketType => _$this._marketType;
  set marketType(MarketType? marketType) => _$this._marketType = marketType;

  LaunchTemplateSpotMarketOptionsRequestBuilder? _spotOptions;
  LaunchTemplateSpotMarketOptionsRequestBuilder get spotOptions =>
      _$this._spotOptions ??=
          new LaunchTemplateSpotMarketOptionsRequestBuilder();
  set spotOptions(LaunchTemplateSpotMarketOptionsRequestBuilder? spotOptions) =>
      _$this._spotOptions = spotOptions;

  LaunchTemplateInstanceMarketOptionsRequestBuilder();

  LaunchTemplateInstanceMarketOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _marketType = $v.marketType;
      _spotOptions = $v.spotOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateInstanceMarketOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateInstanceMarketOptionsRequest;
  }

  @override
  void update(
      void Function(LaunchTemplateInstanceMarketOptionsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateInstanceMarketOptionsRequest build() => _build();

  _$LaunchTemplateInstanceMarketOptionsRequest _build() {
    _$LaunchTemplateInstanceMarketOptionsRequest _$result;
    try {
      _$result = _$v ??
          new _$LaunchTemplateInstanceMarketOptionsRequest._(
              marketType: marketType, spotOptions: _spotOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spotOptions';
        _spotOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LaunchTemplateInstanceMarketOptionsRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
