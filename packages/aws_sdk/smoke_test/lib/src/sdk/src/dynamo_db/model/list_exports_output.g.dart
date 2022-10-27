// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.list_exports_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListExportsOutput extends ListExportsOutput {
  @override
  final _i3.BuiltList<_i2.ExportSummary>? exportSummaries;
  @override
  final String? nextToken;

  factory _$ListExportsOutput(
          [void Function(ListExportsOutputBuilder)? updates]) =>
      (new ListExportsOutputBuilder()..update(updates))._build();

  _$ListExportsOutput._({this.exportSummaries, this.nextToken}) : super._();

  @override
  ListExportsOutput rebuild(void Function(ListExportsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListExportsOutputBuilder toBuilder() =>
      new ListExportsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListExportsOutput &&
        exportSummaries == other.exportSummaries &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, exportSummaries.hashCode), nextToken.hashCode));
  }
}

class ListExportsOutputBuilder
    implements Builder<ListExportsOutput, ListExportsOutputBuilder> {
  _$ListExportsOutput? _$v;

  _i3.ListBuilder<_i2.ExportSummary>? _exportSummaries;
  _i3.ListBuilder<_i2.ExportSummary> get exportSummaries =>
      _$this._exportSummaries ??= new _i3.ListBuilder<_i2.ExportSummary>();
  set exportSummaries(_i3.ListBuilder<_i2.ExportSummary>? exportSummaries) =>
      _$this._exportSummaries = exportSummaries;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListExportsOutputBuilder() {
    ListExportsOutput._init(this);
  }

  ListExportsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exportSummaries = $v.exportSummaries?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListExportsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListExportsOutput;
  }

  @override
  void update(void Function(ListExportsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListExportsOutput build() => _build();

  _$ListExportsOutput _build() {
    _$ListExportsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListExportsOutput._(
              exportSummaries: _exportSummaries?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exportSummaries';
        _exportSummaries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListExportsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
