// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_flow_logs_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateFlowLogsResult extends CreateFlowLogsResult {
  @override
  final String? clientToken;
  @override
  final _i2.BuiltList<String>? flowLogIds;
  @override
  final _i2.BuiltList<UnsuccessfulItem>? unsuccessful;

  factory _$CreateFlowLogsResult(
          [void Function(CreateFlowLogsResultBuilder)? updates]) =>
      (new CreateFlowLogsResultBuilder()..update(updates))._build();

  _$CreateFlowLogsResult._(
      {this.clientToken, this.flowLogIds, this.unsuccessful})
      : super._();

  @override
  CreateFlowLogsResult rebuild(
          void Function(CreateFlowLogsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateFlowLogsResultBuilder toBuilder() =>
      new CreateFlowLogsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateFlowLogsResult &&
        clientToken == other.clientToken &&
        flowLogIds == other.flowLogIds &&
        unsuccessful == other.unsuccessful;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, flowLogIds.hashCode);
    _$hash = $jc(_$hash, unsuccessful.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateFlowLogsResultBuilder
    implements Builder<CreateFlowLogsResult, CreateFlowLogsResultBuilder> {
  _$CreateFlowLogsResult? _$v;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  _i2.ListBuilder<String>? _flowLogIds;
  _i2.ListBuilder<String> get flowLogIds =>
      _$this._flowLogIds ??= new _i2.ListBuilder<String>();
  set flowLogIds(_i2.ListBuilder<String>? flowLogIds) =>
      _$this._flowLogIds = flowLogIds;

  _i2.ListBuilder<UnsuccessfulItem>? _unsuccessful;
  _i2.ListBuilder<UnsuccessfulItem> get unsuccessful =>
      _$this._unsuccessful ??= new _i2.ListBuilder<UnsuccessfulItem>();
  set unsuccessful(_i2.ListBuilder<UnsuccessfulItem>? unsuccessful) =>
      _$this._unsuccessful = unsuccessful;

  CreateFlowLogsResultBuilder();

  CreateFlowLogsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientToken = $v.clientToken;
      _flowLogIds = $v.flowLogIds?.toBuilder();
      _unsuccessful = $v.unsuccessful?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateFlowLogsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateFlowLogsResult;
  }

  @override
  void update(void Function(CreateFlowLogsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateFlowLogsResult build() => _build();

  _$CreateFlowLogsResult _build() {
    _$CreateFlowLogsResult _$result;
    try {
      _$result = _$v ??
          new _$CreateFlowLogsResult._(
              clientToken: clientToken,
              flowLogIds: _flowLogIds?.build(),
              unsuccessful: _unsuccessful?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'flowLogIds';
        _flowLogIds?.build();
        _$failedField = 'unsuccessful';
        _unsuccessful?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateFlowLogsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
