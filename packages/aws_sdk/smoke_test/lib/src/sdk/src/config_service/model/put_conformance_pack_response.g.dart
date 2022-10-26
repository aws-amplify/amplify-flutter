// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_conformance_pack_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutConformancePackResponse extends PutConformancePackResponse {
  @override
  final String? conformancePackArn;

  factory _$PutConformancePackResponse(
          [void Function(PutConformancePackResponseBuilder)? updates]) =>
      (new PutConformancePackResponseBuilder()..update(updates))._build();

  _$PutConformancePackResponse._({this.conformancePackArn}) : super._();

  @override
  PutConformancePackResponse rebuild(
          void Function(PutConformancePackResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutConformancePackResponseBuilder toBuilder() =>
      new PutConformancePackResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutConformancePackResponse &&
        conformancePackArn == other.conformancePackArn;
  }

  @override
  int get hashCode {
    return $jf($jc(0, conformancePackArn.hashCode));
  }
}

class PutConformancePackResponseBuilder
    implements
        Builder<PutConformancePackResponse, PutConformancePackResponseBuilder> {
  _$PutConformancePackResponse? _$v;

  String? _conformancePackArn;
  String? get conformancePackArn => _$this._conformancePackArn;
  set conformancePackArn(String? conformancePackArn) =>
      _$this._conformancePackArn = conformancePackArn;

  PutConformancePackResponseBuilder() {
    PutConformancePackResponse._init(this);
  }

  PutConformancePackResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackArn = $v.conformancePackArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutConformancePackResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutConformancePackResponse;
  }

  @override
  void update(void Function(PutConformancePackResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutConformancePackResponse build() => _build();

  _$PutConformancePackResponse _build() {
    final _$result = _$v ??
        new _$PutConformancePackResponse._(
            conformancePackArn: conformancePackArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
