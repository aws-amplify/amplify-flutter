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
    var _$hash = 0;
    _$hash = $jc(_$hash, conformancePackArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
