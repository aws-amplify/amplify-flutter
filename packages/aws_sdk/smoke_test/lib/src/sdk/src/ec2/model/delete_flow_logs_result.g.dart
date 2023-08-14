// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_flow_logs_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteFlowLogsResult extends DeleteFlowLogsResult {
  @override
  final _i2.BuiltList<UnsuccessfulItem>? unsuccessful;

  factory _$DeleteFlowLogsResult(
          [void Function(DeleteFlowLogsResultBuilder)? updates]) =>
      (new DeleteFlowLogsResultBuilder()..update(updates))._build();

  _$DeleteFlowLogsResult._({this.unsuccessful}) : super._();

  @override
  DeleteFlowLogsResult rebuild(
          void Function(DeleteFlowLogsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteFlowLogsResultBuilder toBuilder() =>
      new DeleteFlowLogsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteFlowLogsResult && unsuccessful == other.unsuccessful;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unsuccessful.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteFlowLogsResultBuilder
    implements Builder<DeleteFlowLogsResult, DeleteFlowLogsResultBuilder> {
  _$DeleteFlowLogsResult? _$v;

  _i2.ListBuilder<UnsuccessfulItem>? _unsuccessful;
  _i2.ListBuilder<UnsuccessfulItem> get unsuccessful =>
      _$this._unsuccessful ??= new _i2.ListBuilder<UnsuccessfulItem>();
  set unsuccessful(_i2.ListBuilder<UnsuccessfulItem>? unsuccessful) =>
      _$this._unsuccessful = unsuccessful;

  DeleteFlowLogsResultBuilder();

  DeleteFlowLogsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unsuccessful = $v.unsuccessful?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteFlowLogsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteFlowLogsResult;
  }

  @override
  void update(void Function(DeleteFlowLogsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteFlowLogsResult build() => _build();

  _$DeleteFlowLogsResult _build() {
    _$DeleteFlowLogsResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteFlowLogsResult._(unsuccessful: _unsuccessful?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'unsuccessful';
        _unsuccessful?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteFlowLogsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
