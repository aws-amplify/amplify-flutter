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
    var _$hash = 0;
    _$hash = $jc(_$hash, importSummaryList.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
