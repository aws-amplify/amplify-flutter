// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.import_stacks_to_stack_set_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportStacksToStackSetOutput extends ImportStacksToStackSetOutput {
  @override
  final String? operationId;

  factory _$ImportStacksToStackSetOutput(
          [void Function(ImportStacksToStackSetOutputBuilder)? updates]) =>
      (new ImportStacksToStackSetOutputBuilder()..update(updates))._build();

  _$ImportStacksToStackSetOutput._({this.operationId}) : super._();

  @override
  ImportStacksToStackSetOutput rebuild(
          void Function(ImportStacksToStackSetOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportStacksToStackSetOutputBuilder toBuilder() =>
      new ImportStacksToStackSetOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportStacksToStackSetOutput &&
        operationId == other.operationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportStacksToStackSetOutputBuilder
    implements
        Builder<ImportStacksToStackSetOutput,
            ImportStacksToStackSetOutputBuilder> {
  _$ImportStacksToStackSetOutput? _$v;

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  ImportStacksToStackSetOutputBuilder() {
    ImportStacksToStackSetOutput._init(this);
  }

  ImportStacksToStackSetOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operationId = $v.operationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportStacksToStackSetOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportStacksToStackSetOutput;
  }

  @override
  void update(void Function(ImportStacksToStackSetOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportStacksToStackSetOutput build() => _build();

  _$ImportStacksToStackSetOutput _build() {
    final _$result =
        _$v ?? new _$ImportStacksToStackSetOutput._(operationId: operationId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
