// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'execute_transaction_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExecuteTransactionOutput extends ExecuteTransactionOutput {
  @override
  final _i2.BuiltList<ItemResponse>? responses;
  @override
  final _i2.BuiltList<ConsumedCapacity>? consumedCapacity;

  factory _$ExecuteTransactionOutput(
          [void Function(ExecuteTransactionOutputBuilder)? updates]) =>
      (new ExecuteTransactionOutputBuilder()..update(updates))._build();

  _$ExecuteTransactionOutput._({this.responses, this.consumedCapacity})
      : super._();

  @override
  ExecuteTransactionOutput rebuild(
          void Function(ExecuteTransactionOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExecuteTransactionOutputBuilder toBuilder() =>
      new ExecuteTransactionOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExecuteTransactionOutput &&
        responses == other.responses &&
        consumedCapacity == other.consumedCapacity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, responses.hashCode);
    _$hash = $jc(_$hash, consumedCapacity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExecuteTransactionOutputBuilder
    implements
        Builder<ExecuteTransactionOutput, ExecuteTransactionOutputBuilder> {
  _$ExecuteTransactionOutput? _$v;

  _i2.ListBuilder<ItemResponse>? _responses;
  _i2.ListBuilder<ItemResponse> get responses =>
      _$this._responses ??= new _i2.ListBuilder<ItemResponse>();
  set responses(_i2.ListBuilder<ItemResponse>? responses) =>
      _$this._responses = responses;

  _i2.ListBuilder<ConsumedCapacity>? _consumedCapacity;
  _i2.ListBuilder<ConsumedCapacity> get consumedCapacity =>
      _$this._consumedCapacity ??= new _i2.ListBuilder<ConsumedCapacity>();
  set consumedCapacity(_i2.ListBuilder<ConsumedCapacity>? consumedCapacity) =>
      _$this._consumedCapacity = consumedCapacity;

  ExecuteTransactionOutputBuilder();

  ExecuteTransactionOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responses = $v.responses?.toBuilder();
      _consumedCapacity = $v.consumedCapacity?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExecuteTransactionOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExecuteTransactionOutput;
  }

  @override
  void update(void Function(ExecuteTransactionOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExecuteTransactionOutput build() => _build();

  _$ExecuteTransactionOutput _build() {
    _$ExecuteTransactionOutput _$result;
    try {
      _$result = _$v ??
          new _$ExecuteTransactionOutput._(
              responses: _responses?.build(),
              consumedCapacity: _consumedCapacity?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'responses';
        _responses?.build();
        _$failedField = 'consumedCapacity';
        _consumedCapacity?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExecuteTransactionOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
