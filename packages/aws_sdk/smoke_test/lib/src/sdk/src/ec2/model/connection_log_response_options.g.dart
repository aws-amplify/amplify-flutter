// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_log_response_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConnectionLogResponseOptions extends ConnectionLogResponseOptions {
  @override
  final bool enabled;
  @override
  final String? cloudwatchLogGroup;
  @override
  final String? cloudwatchLogStream;

  factory _$ConnectionLogResponseOptions(
          [void Function(ConnectionLogResponseOptionsBuilder)? updates]) =>
      (new ConnectionLogResponseOptionsBuilder()..update(updates))._build();

  _$ConnectionLogResponseOptions._(
      {required this.enabled,
      this.cloudwatchLogGroup,
      this.cloudwatchLogStream})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'ConnectionLogResponseOptions', 'enabled');
  }

  @override
  ConnectionLogResponseOptions rebuild(
          void Function(ConnectionLogResponseOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConnectionLogResponseOptionsBuilder toBuilder() =>
      new ConnectionLogResponseOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConnectionLogResponseOptions &&
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

class ConnectionLogResponseOptionsBuilder
    implements
        Builder<ConnectionLogResponseOptions,
            ConnectionLogResponseOptionsBuilder> {
  _$ConnectionLogResponseOptions? _$v;

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

  ConnectionLogResponseOptionsBuilder() {
    ConnectionLogResponseOptions._init(this);
  }

  ConnectionLogResponseOptionsBuilder get _$this {
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
  void replace(ConnectionLogResponseOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConnectionLogResponseOptions;
  }

  @override
  void update(void Function(ConnectionLogResponseOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConnectionLogResponseOptions build() => _build();

  _$ConnectionLogResponseOptions _build() {
    final _$result = _$v ??
        new _$ConnectionLogResponseOptions._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'ConnectionLogResponseOptions', 'enabled'),
            cloudwatchLogGroup: cloudwatchLogGroup,
            cloudwatchLogStream: cloudwatchLogStream);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
