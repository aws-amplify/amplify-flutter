// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluation_mode_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EvaluationModeConfiguration extends EvaluationModeConfiguration {
  @override
  final _i2.EvaluationMode? mode;

  factory _$EvaluationModeConfiguration(
          [void Function(EvaluationModeConfigurationBuilder)? updates]) =>
      (new EvaluationModeConfigurationBuilder()..update(updates))._build();

  _$EvaluationModeConfiguration._({this.mode}) : super._();

  @override
  EvaluationModeConfiguration rebuild(
          void Function(EvaluationModeConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EvaluationModeConfigurationBuilder toBuilder() =>
      new EvaluationModeConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EvaluationModeConfiguration && mode == other.mode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EvaluationModeConfigurationBuilder
    implements
        Builder<EvaluationModeConfiguration,
            EvaluationModeConfigurationBuilder> {
  _$EvaluationModeConfiguration? _$v;

  _i2.EvaluationMode? _mode;
  _i2.EvaluationMode? get mode => _$this._mode;
  set mode(_i2.EvaluationMode? mode) => _$this._mode = mode;

  EvaluationModeConfigurationBuilder() {
    EvaluationModeConfiguration._init(this);
  }

  EvaluationModeConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mode = $v.mode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EvaluationModeConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EvaluationModeConfiguration;
  }

  @override
  void update(void Function(EvaluationModeConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EvaluationModeConfiguration build() => _build();

  _$EvaluationModeConfiguration _build() {
    final _$result = _$v ?? new _$EvaluationModeConfiguration._(mode: mode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
