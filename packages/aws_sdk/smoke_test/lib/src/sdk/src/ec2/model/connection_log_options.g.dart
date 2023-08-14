// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_log_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConnectionLogOptions extends ConnectionLogOptions {
  @override
  final bool enabled;
  @override
  final String? cloudwatchLogGroup;
  @override
  final String? cloudwatchLogStream;

  factory _$ConnectionLogOptions(
          [void Function(ConnectionLogOptionsBuilder)? updates]) =>
      (new ConnectionLogOptionsBuilder()..update(updates))._build();

  _$ConnectionLogOptions._(
      {required this.enabled,
      this.cloudwatchLogGroup,
      this.cloudwatchLogStream})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'ConnectionLogOptions', 'enabled');
  }

  @override
  ConnectionLogOptions rebuild(
          void Function(ConnectionLogOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConnectionLogOptionsBuilder toBuilder() =>
      new ConnectionLogOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConnectionLogOptions &&
        enabled == other.enabled &&
        cloudwatchLogGroup == other.cloudwatchLogGroup &&
        cloudwatchLogStream == other.cloudwatchLogStream;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, cloudwatchLogGroup.hashCode);
    _$hash = $jc(_$hash, cloudwatchLogStream.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConnectionLogOptionsBuilder
    implements Builder<ConnectionLogOptions, ConnectionLogOptionsBuilder> {
  _$ConnectionLogOptions? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _cloudwatchLogGroup;
  String? get cloudwatchLogGroup => _$this._cloudwatchLogGroup;
  set cloudwatchLogGroup(String? cloudwatchLogGroup) =>
      _$this._cloudwatchLogGroup = cloudwatchLogGroup;

  String? _cloudwatchLogStream;
  String? get cloudwatchLogStream => _$this._cloudwatchLogStream;
  set cloudwatchLogStream(String? cloudwatchLogStream) =>
      _$this._cloudwatchLogStream = cloudwatchLogStream;

  ConnectionLogOptionsBuilder() {
    ConnectionLogOptions._init(this);
  }

  ConnectionLogOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _cloudwatchLogGroup = $v.cloudwatchLogGroup;
      _cloudwatchLogStream = $v.cloudwatchLogStream;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConnectionLogOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConnectionLogOptions;
  }

  @override
  void update(void Function(ConnectionLogOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConnectionLogOptions build() => _build();

  _$ConnectionLogOptions _build() {
    final _$result = _$v ??
        new _$ConnectionLogOptions._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'ConnectionLogOptions', 'enabled'),
            cloudwatchLogGroup: cloudwatchLogGroup,
            cloudwatchLogStream: cloudwatchLogStream);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
