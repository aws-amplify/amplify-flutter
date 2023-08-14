// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'processor_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProcessorInfo extends ProcessorInfo {
  @override
  final _i2.BuiltList<ArchitectureType>? supportedArchitectures;
  @override
  final double? sustainedClockSpeedInGhz;
  @override
  final _i2.BuiltList<SupportedAdditionalProcessorFeature>? supportedFeatures;

  factory _$ProcessorInfo([void Function(ProcessorInfoBuilder)? updates]) =>
      (new ProcessorInfoBuilder()..update(updates))._build();

  _$ProcessorInfo._(
      {this.supportedArchitectures,
      this.sustainedClockSpeedInGhz,
      this.supportedFeatures})
      : super._();

  @override
  ProcessorInfo rebuild(void Function(ProcessorInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProcessorInfoBuilder toBuilder() => new ProcessorInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProcessorInfo &&
        supportedArchitectures == other.supportedArchitectures &&
        sustainedClockSpeedInGhz == other.sustainedClockSpeedInGhz &&
        supportedFeatures == other.supportedFeatures;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, supportedArchitectures.hashCode);
    _$hash = $jc(_$hash, sustainedClockSpeedInGhz.hashCode);
    _$hash = $jc(_$hash, supportedFeatures.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ProcessorInfoBuilder
    implements Builder<ProcessorInfo, ProcessorInfoBuilder> {
  _$ProcessorInfo? _$v;

  _i2.ListBuilder<ArchitectureType>? _supportedArchitectures;
  _i2.ListBuilder<ArchitectureType> get supportedArchitectures =>
      _$this._supportedArchitectures ??=
          new _i2.ListBuilder<ArchitectureType>();
  set supportedArchitectures(
          _i2.ListBuilder<ArchitectureType>? supportedArchitectures) =>
      _$this._supportedArchitectures = supportedArchitectures;

  double? _sustainedClockSpeedInGhz;
  double? get sustainedClockSpeedInGhz => _$this._sustainedClockSpeedInGhz;
  set sustainedClockSpeedInGhz(double? sustainedClockSpeedInGhz) =>
      _$this._sustainedClockSpeedInGhz = sustainedClockSpeedInGhz;

  _i2.ListBuilder<SupportedAdditionalProcessorFeature>? _supportedFeatures;
  _i2.ListBuilder<SupportedAdditionalProcessorFeature> get supportedFeatures =>
      _$this._supportedFeatures ??=
          new _i2.ListBuilder<SupportedAdditionalProcessorFeature>();
  set supportedFeatures(
          _i2.ListBuilder<SupportedAdditionalProcessorFeature>?
              supportedFeatures) =>
      _$this._supportedFeatures = supportedFeatures;

  ProcessorInfoBuilder();

  ProcessorInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _supportedArchitectures = $v.supportedArchitectures?.toBuilder();
      _sustainedClockSpeedInGhz = $v.sustainedClockSpeedInGhz;
      _supportedFeatures = $v.supportedFeatures?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProcessorInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProcessorInfo;
  }

  @override
  void update(void Function(ProcessorInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProcessorInfo build() => _build();

  _$ProcessorInfo _build() {
    _$ProcessorInfo _$result;
    try {
      _$result = _$v ??
          new _$ProcessorInfo._(
              supportedArchitectures: _supportedArchitectures?.build(),
              sustainedClockSpeedInGhz: sustainedClockSpeedInGhz,
              supportedFeatures: _supportedFeatures?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'supportedArchitectures';
        _supportedArchitectures?.build();

        _$failedField = 'supportedFeatures';
        _supportedFeatures?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProcessorInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
