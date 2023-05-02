// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.estimate_template_cost_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EstimateTemplateCostOutput extends EstimateTemplateCostOutput {
  @override
  final String? url;

  factory _$EstimateTemplateCostOutput(
          [void Function(EstimateTemplateCostOutputBuilder)? updates]) =>
      (new EstimateTemplateCostOutputBuilder()..update(updates))._build();

  _$EstimateTemplateCostOutput._({this.url}) : super._();

  @override
  EstimateTemplateCostOutput rebuild(
          void Function(EstimateTemplateCostOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EstimateTemplateCostOutputBuilder toBuilder() =>
      new EstimateTemplateCostOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EstimateTemplateCostOutput && url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EstimateTemplateCostOutputBuilder
    implements
        Builder<EstimateTemplateCostOutput, EstimateTemplateCostOutputBuilder> {
  _$EstimateTemplateCostOutput? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  EstimateTemplateCostOutputBuilder() {
    EstimateTemplateCostOutput._init(this);
  }

  EstimateTemplateCostOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EstimateTemplateCostOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EstimateTemplateCostOutput;
  }

  @override
  void update(void Function(EstimateTemplateCostOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EstimateTemplateCostOutput build() => _build();

  _$EstimateTemplateCostOutput _build() {
    final _$result = _$v ?? new _$EstimateTemplateCostOutput._(url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
