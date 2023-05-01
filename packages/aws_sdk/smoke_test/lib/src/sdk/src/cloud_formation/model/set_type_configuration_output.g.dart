// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.set_type_configuration_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetTypeConfigurationOutput extends SetTypeConfigurationOutput {
  @override
  final String? configurationArn;

  factory _$SetTypeConfigurationOutput(
          [void Function(SetTypeConfigurationOutputBuilder)? updates]) =>
      (new SetTypeConfigurationOutputBuilder()..update(updates))._build();

  _$SetTypeConfigurationOutput._({this.configurationArn}) : super._();

  @override
  SetTypeConfigurationOutput rebuild(
          void Function(SetTypeConfigurationOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetTypeConfigurationOutputBuilder toBuilder() =>
      new SetTypeConfigurationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetTypeConfigurationOutput &&
        configurationArn == other.configurationArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SetTypeConfigurationOutputBuilder
    implements
        Builder<SetTypeConfigurationOutput, SetTypeConfigurationOutputBuilder> {
  _$SetTypeConfigurationOutput? _$v;

  String? _configurationArn;
  String? get configurationArn => _$this._configurationArn;
  set configurationArn(String? configurationArn) =>
      _$this._configurationArn = configurationArn;

  SetTypeConfigurationOutputBuilder() {
    SetTypeConfigurationOutput._init(this);
  }

  SetTypeConfigurationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationArn = $v.configurationArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetTypeConfigurationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetTypeConfigurationOutput;
  }

  @override
  void update(void Function(SetTypeConfigurationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetTypeConfigurationOutput build() => _build();

  _$SetTypeConfigurationOutput _build() {
    final _$result = _$v ??
        new _$SetTypeConfigurationOutput._(configurationArn: configurationArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
