// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v2.json_protocol.model.null_operation_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NullOperationInputOutput extends NullOperationInputOutput {
  @override
  final _i3.BuiltList<String?>? sparseStringList;
  @override
  final _i3.BuiltMap<String, String?>? sparseStringMap;
  @override
  final String? string;

  factory _$NullOperationInputOutput(
          [void Function(NullOperationInputOutputBuilder)? updates]) =>
      (new NullOperationInputOutputBuilder()..update(updates))._build();

  _$NullOperationInputOutput._(
      {this.sparseStringList, this.sparseStringMap, this.string})
      : super._();

  @override
  NullOperationInputOutput rebuild(
          void Function(NullOperationInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NullOperationInputOutputBuilder toBuilder() =>
      new NullOperationInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NullOperationInputOutput &&
        sparseStringList == other.sparseStringList &&
        sparseStringMap == other.sparseStringMap &&
        string == other.string;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, sparseStringList.hashCode), sparseStringMap.hashCode),
        string.hashCode));
  }
}

class NullOperationInputOutputBuilder
    implements
        Builder<NullOperationInputOutput, NullOperationInputOutputBuilder> {
  _$NullOperationInputOutput? _$v;

  _i3.ListBuilder<String?>? _sparseStringList;
  _i3.ListBuilder<String?> get sparseStringList =>
      _$this._sparseStringList ??= new _i3.ListBuilder<String?>();
  set sparseStringList(_i3.ListBuilder<String?>? sparseStringList) =>
      _$this._sparseStringList = sparseStringList;

  _i3.MapBuilder<String, String?>? _sparseStringMap;
  _i3.MapBuilder<String, String?> get sparseStringMap =>
      _$this._sparseStringMap ??= new _i3.MapBuilder<String, String?>();
  set sparseStringMap(_i3.MapBuilder<String, String?>? sparseStringMap) =>
      _$this._sparseStringMap = sparseStringMap;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  NullOperationInputOutputBuilder() {
    NullOperationInputOutput._init(this);
  }

  NullOperationInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sparseStringList = $v.sparseStringList?.toBuilder();
      _sparseStringMap = $v.sparseStringMap?.toBuilder();
      _string = $v.string;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NullOperationInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NullOperationInputOutput;
  }

  @override
  void update(void Function(NullOperationInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NullOperationInputOutput build() => _build();

  _$NullOperationInputOutput _build() {
    _$NullOperationInputOutput _$result;
    try {
      _$result = _$v ??
          new _$NullOperationInputOutput._(
              sparseStringList: _sparseStringList?.build(),
              sparseStringMap: _sparseStringMap?.build(),
              string: string);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sparseStringList';
        _sparseStringList?.build();
        _$failedField = 'sparseStringMap';
        _sparseStringMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NullOperationInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
