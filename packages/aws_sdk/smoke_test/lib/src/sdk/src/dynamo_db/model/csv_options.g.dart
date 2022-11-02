// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.csv_options;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CsvOptions extends CsvOptions {
  @override
  final String? delimiter;
  @override
  final _i2.BuiltList<String>? headerList;

  factory _$CsvOptions([void Function(CsvOptionsBuilder)? updates]) =>
      (new CsvOptionsBuilder()..update(updates))._build();

  _$CsvOptions._({this.delimiter, this.headerList}) : super._();

  @override
  CsvOptions rebuild(void Function(CsvOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CsvOptionsBuilder toBuilder() => new CsvOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CsvOptions &&
        delimiter == other.delimiter &&
        headerList == other.headerList;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, delimiter.hashCode), headerList.hashCode));
  }
}

class CsvOptionsBuilder implements Builder<CsvOptions, CsvOptionsBuilder> {
  _$CsvOptions? _$v;

  String? _delimiter;
  String? get delimiter => _$this._delimiter;
  set delimiter(String? delimiter) => _$this._delimiter = delimiter;

  _i2.ListBuilder<String>? _headerList;
  _i2.ListBuilder<String> get headerList =>
      _$this._headerList ??= new _i2.ListBuilder<String>();
  set headerList(_i2.ListBuilder<String>? headerList) =>
      _$this._headerList = headerList;

  CsvOptionsBuilder() {
    CsvOptions._init(this);
  }

  CsvOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _delimiter = $v.delimiter;
      _headerList = $v.headerList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CsvOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CsvOptions;
  }

  @override
  void update(void Function(CsvOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CsvOptions build() => _build();

  _$CsvOptions _build() {
    _$CsvOptions _$result;
    try {
      _$result = _$v ??
          new _$CsvOptions._(
              delimiter: delimiter, headerList: _headerList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'headerList';
        _headerList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CsvOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
