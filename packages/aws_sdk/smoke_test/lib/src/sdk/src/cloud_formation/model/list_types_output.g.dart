// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_types_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListTypesOutput extends ListTypesOutput {
  @override
  final _i3.BuiltList<_i2.TypeSummary>? typeSummaries;
  @override
  final String? nextToken;

  factory _$ListTypesOutput([void Function(ListTypesOutputBuilder)? updates]) =>
      (new ListTypesOutputBuilder()..update(updates))._build();

  _$ListTypesOutput._({this.typeSummaries, this.nextToken}) : super._();

  @override
  ListTypesOutput rebuild(void Function(ListTypesOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTypesOutputBuilder toBuilder() =>
      new ListTypesOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListTypesOutput &&
        typeSummaries == other.typeSummaries &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, typeSummaries.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListTypesOutputBuilder
    implements Builder<ListTypesOutput, ListTypesOutputBuilder> {
  _$ListTypesOutput? _$v;

  _i3.ListBuilder<_i2.TypeSummary>? _typeSummaries;
  _i3.ListBuilder<_i2.TypeSummary> get typeSummaries =>
      _$this._typeSummaries ??= new _i3.ListBuilder<_i2.TypeSummary>();
  set typeSummaries(_i3.ListBuilder<_i2.TypeSummary>? typeSummaries) =>
      _$this._typeSummaries = typeSummaries;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListTypesOutputBuilder() {
    ListTypesOutput._init(this);
  }

  ListTypesOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeSummaries = $v.typeSummaries?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListTypesOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListTypesOutput;
  }

  @override
  void update(void Function(ListTypesOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListTypesOutput build() => _build();

  _$ListTypesOutput _build() {
    _$ListTypesOutput _$result;
    try {
      _$result = _$v ??
          new _$ListTypesOutput._(
              typeSummaries: _typeSummaries?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'typeSummaries';
        _typeSummaries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListTypesOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
