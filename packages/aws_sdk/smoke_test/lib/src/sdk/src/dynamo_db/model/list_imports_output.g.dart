// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.list_imports_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListImportsOutput extends ListImportsOutput {
  @override
  final _i3.BuiltList<_i2.ImportSummary>? importSummaryList;
  @override
  final String? nextToken;

  factory _$ListImportsOutput(
          [void Function(ListImportsOutputBuilder)? updates]) =>
      (new ListImportsOutputBuilder()..update(updates))._build();

  _$ListImportsOutput._({this.importSummaryList, this.nextToken}) : super._();

  @override
  ListImportsOutput rebuild(void Function(ListImportsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListImportsOutputBuilder toBuilder() =>
      new ListImportsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListImportsOutput &&
        importSummaryList == other.importSummaryList &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, importSummaryList.hashCode), nextToken.hashCode));
  }
}

class ListImportsOutputBuilder
    implements Builder<ListImportsOutput, ListImportsOutputBuilder> {
  _$ListImportsOutput? _$v;

  _i3.ListBuilder<_i2.ImportSummary>? _importSummaryList;
  _i3.ListBuilder<_i2.ImportSummary> get importSummaryList =>
      _$this._importSummaryList ??= new _i3.ListBuilder<_i2.ImportSummary>();
  set importSummaryList(
          _i3.ListBuilder<_i2.ImportSummary>? importSummaryList) =>
      _$this._importSummaryList = importSummaryList;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListImportsOutputBuilder() {
    ListImportsOutput._init(this);
  }

  ListImportsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _importSummaryList = $v.importSummaryList?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListImportsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListImportsOutput;
  }

  @override
  void update(void Function(ListImportsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListImportsOutput build() => _build();

  _$ListImportsOutput _build() {
    _$ListImportsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListImportsOutput._(
              importSummaryList: _importSummaryList?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'importSummaryList';
        _importSummaryList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListImportsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
