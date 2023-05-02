// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_type_versions_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListTypeVersionsOutput extends ListTypeVersionsOutput {
  @override
  final _i3.BuiltList<_i2.TypeVersionSummary>? typeVersionSummaries;
  @override
  final String? nextToken;

  factory _$ListTypeVersionsOutput(
          [void Function(ListTypeVersionsOutputBuilder)? updates]) =>
      (new ListTypeVersionsOutputBuilder()..update(updates))._build();

  _$ListTypeVersionsOutput._({this.typeVersionSummaries, this.nextToken})
      : super._();

  @override
  ListTypeVersionsOutput rebuild(
          void Function(ListTypeVersionsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTypeVersionsOutputBuilder toBuilder() =>
      new ListTypeVersionsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListTypeVersionsOutput &&
        typeVersionSummaries == other.typeVersionSummaries &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, typeVersionSummaries.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListTypeVersionsOutputBuilder
    implements Builder<ListTypeVersionsOutput, ListTypeVersionsOutputBuilder> {
  _$ListTypeVersionsOutput? _$v;

  _i3.ListBuilder<_i2.TypeVersionSummary>? _typeVersionSummaries;
  _i3.ListBuilder<_i2.TypeVersionSummary> get typeVersionSummaries =>
      _$this._typeVersionSummaries ??=
          new _i3.ListBuilder<_i2.TypeVersionSummary>();
  set typeVersionSummaries(
          _i3.ListBuilder<_i2.TypeVersionSummary>? typeVersionSummaries) =>
      _$this._typeVersionSummaries = typeVersionSummaries;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListTypeVersionsOutputBuilder() {
    ListTypeVersionsOutput._init(this);
  }

  ListTypeVersionsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeVersionSummaries = $v.typeVersionSummaries?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListTypeVersionsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListTypeVersionsOutput;
  }

  @override
  void update(void Function(ListTypeVersionsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListTypeVersionsOutput build() => _build();

  _$ListTypeVersionsOutput _build() {
    _$ListTypeVersionsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListTypeVersionsOutput._(
              typeVersionSummaries: _typeVersionSummaries?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'typeVersionSummaries';
        _typeVersionSummaries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListTypeVersionsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
