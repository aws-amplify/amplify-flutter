// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_flow_logs_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFlowLogsResult extends DescribeFlowLogsResult {
  @override
  final _i2.BuiltList<FlowLog>? flowLogs;
  @override
  final String? nextToken;

  factory _$DescribeFlowLogsResult(
          [void Function(DescribeFlowLogsResultBuilder)? updates]) =>
      (new DescribeFlowLogsResultBuilder()..update(updates))._build();

  _$DescribeFlowLogsResult._({this.flowLogs, this.nextToken}) : super._();

  @override
  DescribeFlowLogsResult rebuild(
          void Function(DescribeFlowLogsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFlowLogsResultBuilder toBuilder() =>
      new DescribeFlowLogsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFlowLogsResult &&
        flowLogs == other.flowLogs &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, flowLogs.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeFlowLogsResultBuilder
    implements Builder<DescribeFlowLogsResult, DescribeFlowLogsResultBuilder> {
  _$DescribeFlowLogsResult? _$v;

  _i2.ListBuilder<FlowLog>? _flowLogs;
  _i2.ListBuilder<FlowLog> get flowLogs =>
      _$this._flowLogs ??= new _i2.ListBuilder<FlowLog>();
  set flowLogs(_i2.ListBuilder<FlowLog>? flowLogs) =>
      _$this._flowLogs = flowLogs;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeFlowLogsResultBuilder();

  DescribeFlowLogsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _flowLogs = $v.flowLogs?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeFlowLogsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFlowLogsResult;
  }

  @override
  void update(void Function(DescribeFlowLogsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFlowLogsResult build() => _build();

  _$DescribeFlowLogsResult _build() {
    _$DescribeFlowLogsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeFlowLogsResult._(
              flowLogs: _flowLogs?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'flowLogs';
        _flowLogs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeFlowLogsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
