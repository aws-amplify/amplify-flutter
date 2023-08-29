// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_console_output_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetConsoleOutputResult extends GetConsoleOutputResult {
  @override
  final String? instanceId;
  @override
  final String? output;
  @override
  final DateTime? timestamp;

  factory _$GetConsoleOutputResult(
          [void Function(GetConsoleOutputResultBuilder)? updates]) =>
      (new GetConsoleOutputResultBuilder()..update(updates))._build();

  _$GetConsoleOutputResult._({this.instanceId, this.output, this.timestamp})
      : super._();

  @override
  GetConsoleOutputResult rebuild(
          void Function(GetConsoleOutputResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetConsoleOutputResultBuilder toBuilder() =>
      new GetConsoleOutputResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetConsoleOutputResult &&
        instanceId == other.instanceId &&
        output == other.output &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetConsoleOutputResultBuilder
    implements Builder<GetConsoleOutputResult, GetConsoleOutputResultBuilder> {
  _$GetConsoleOutputResult? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _output;
  String? get output => _$this._output;
  set output(String? output) => _$this._output = output;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  GetConsoleOutputResultBuilder();

  GetConsoleOutputResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _output = $v.output;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetConsoleOutputResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetConsoleOutputResult;
  }

  @override
  void update(void Function(GetConsoleOutputResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetConsoleOutputResult build() => _build();

  _$GetConsoleOutputResult _build() {
    final _$result = _$v ??
        new _$GetConsoleOutputResult._(
            instanceId: instanceId, output: output, timestamp: timestamp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
