// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_flow_logs_integration_template_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFlowLogsIntegrationTemplateResult
    extends GetFlowLogsIntegrationTemplateResult {
  @override
  final String? result;

  factory _$GetFlowLogsIntegrationTemplateResult(
          [void Function(GetFlowLogsIntegrationTemplateResultBuilder)?
              updates]) =>
      (new GetFlowLogsIntegrationTemplateResultBuilder()..update(updates))
          ._build();

  _$GetFlowLogsIntegrationTemplateResult._({this.result}) : super._();

  @override
  GetFlowLogsIntegrationTemplateResult rebuild(
          void Function(GetFlowLogsIntegrationTemplateResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFlowLogsIntegrationTemplateResultBuilder toBuilder() =>
      new GetFlowLogsIntegrationTemplateResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFlowLogsIntegrationTemplateResult &&
        result == other.result;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetFlowLogsIntegrationTemplateResultBuilder
    implements
        Builder<GetFlowLogsIntegrationTemplateResult,
            GetFlowLogsIntegrationTemplateResultBuilder> {
  _$GetFlowLogsIntegrationTemplateResult? _$v;

  String? _result;
  String? get result => _$this._result;
  set result(String? result) => _$this._result = result;

  GetFlowLogsIntegrationTemplateResultBuilder();

  GetFlowLogsIntegrationTemplateResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _result = $v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFlowLogsIntegrationTemplateResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFlowLogsIntegrationTemplateResult;
  }

  @override
  void update(
      void Function(GetFlowLogsIntegrationTemplateResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetFlowLogsIntegrationTemplateResult build() => _build();

  _$GetFlowLogsIntegrationTemplateResult _build() {
    final _$result =
        _$v ?? new _$GetFlowLogsIntegrationTemplateResult._(result: result);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
