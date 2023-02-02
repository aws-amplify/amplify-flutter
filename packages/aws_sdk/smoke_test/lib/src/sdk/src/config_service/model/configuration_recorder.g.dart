// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.configuration_recorder;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigurationRecorder extends ConfigurationRecorder {
  @override
  final String? name;
  @override
  final _i2.RecordingGroup? recordingGroup;
  @override
  final String? roleArn;

  factory _$ConfigurationRecorder(
          [void Function(ConfigurationRecorderBuilder)? updates]) =>
      (new ConfigurationRecorderBuilder()..update(updates))._build();

  _$ConfigurationRecorder._({this.name, this.recordingGroup, this.roleArn})
      : super._();

  @override
  ConfigurationRecorder rebuild(
          void Function(ConfigurationRecorderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigurationRecorderBuilder toBuilder() =>
      new ConfigurationRecorderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigurationRecorder &&
        name == other.name &&
        recordingGroup == other.recordingGroup &&
        roleArn == other.roleArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, recordingGroup.hashCode);
    _$hash = $jc(_$hash, roleArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfigurationRecorderBuilder
    implements Builder<ConfigurationRecorder, ConfigurationRecorderBuilder> {
  _$ConfigurationRecorder? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i2.RecordingGroupBuilder? _recordingGroup;
  _i2.RecordingGroupBuilder get recordingGroup =>
      _$this._recordingGroup ??= new _i2.RecordingGroupBuilder();
  set recordingGroup(_i2.RecordingGroupBuilder? recordingGroup) =>
      _$this._recordingGroup = recordingGroup;

  String? _roleArn;
  String? get roleArn => _$this._roleArn;
  set roleArn(String? roleArn) => _$this._roleArn = roleArn;

  ConfigurationRecorderBuilder() {
    ConfigurationRecorder._init(this);
  }

  ConfigurationRecorderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _recordingGroup = $v.recordingGroup?.toBuilder();
      _roleArn = $v.roleArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigurationRecorder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfigurationRecorder;
  }

  @override
  void update(void Function(ConfigurationRecorderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigurationRecorder build() => _build();

  _$ConfigurationRecorder _build() {
    _$ConfigurationRecorder _$result;
    try {
      _$result = _$v ??
          new _$ConfigurationRecorder._(
              name: name,
              recordingGroup: _recordingGroup?.build(),
              roleArn: roleArn);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recordingGroup';
        _recordingGroup?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConfigurationRecorder', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
