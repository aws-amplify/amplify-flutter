// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_instance_market_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateInstanceMarketOptions
    extends LaunchTemplateInstanceMarketOptions {
  @override
  final MarketType? marketType;
  @override
  final LaunchTemplateSpotMarketOptions? spotOptions;

  factory _$LaunchTemplateInstanceMarketOptions(
          [void Function(LaunchTemplateInstanceMarketOptionsBuilder)?
              updates]) =>
      (new LaunchTemplateInstanceMarketOptionsBuilder()..update(updates))
          ._build();

  _$LaunchTemplateInstanceMarketOptions._({this.marketType, this.spotOptions})
      : super._();

  @override
  LaunchTemplateInstanceMarketOptions rebuild(
          void Function(LaunchTemplateInstanceMarketOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateInstanceMarketOptionsBuilder toBuilder() =>
      new LaunchTemplateInstanceMarketOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateInstanceMarketOptions &&
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

class LaunchTemplateInstanceMarketOptionsBuilder
    implements
        Builder<LaunchTemplateInstanceMarketOptions,
            LaunchTemplateInstanceMarketOptionsBuilder> {
  _$LaunchTemplateInstanceMarketOptions? _$v;

  MarketType? _marketType;
  MarketType? get marketType => _$this._marketType;
  set marketType(MarketType? marketType) => _$this._marketType = marketType;

  LaunchTemplateSpotMarketOptionsBuilder? _spotOptions;
  LaunchTemplateSpotMarketOptionsBuilder get spotOptions =>
      _$this._spotOptions ??= new LaunchTemplateSpotMarketOptionsBuilder();
  set spotOptions(LaunchTemplateSpotMarketOptionsBuilder? spotOptions) =>
      _$this._spotOptions = spotOptions;

  LaunchTemplateInstanceMarketOptionsBuilder();

  LaunchTemplateInstanceMarketOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _marketType = $v.marketType;
      _spotOptions = $v.spotOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateInstanceMarketOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateInstanceMarketOptions;
  }

  @override
  void update(
      void Function(LaunchTemplateInstanceMarketOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateInstanceMarketOptions build() => _build();

  _$LaunchTemplateInstanceMarketOptions _build() {
    _$LaunchTemplateInstanceMarketOptions _$result;
    try {
      _$result = _$v ??
          new _$LaunchTemplateInstanceMarketOptions._(
              marketType: marketType, spotOptions: _spotOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spotOptions';
        _spotOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LaunchTemplateInstanceMarketOptions',
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
