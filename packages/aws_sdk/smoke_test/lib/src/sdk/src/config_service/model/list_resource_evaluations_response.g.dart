// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_resource_evaluations_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListResourceEvaluationsResponse
    extends ListResourceEvaluationsResponse {
  @override
  final _i3.BuiltList<_i2.ResourceEvaluation>? resourceEvaluations;
  @override
  final String? nextToken;

  factory _$ListResourceEvaluationsResponse(
          [void Function(ListResourceEvaluationsResponseBuilder)? updates]) =>
      (new ListResourceEvaluationsResponseBuilder()..update(updates))._build();

  _$ListResourceEvaluationsResponse._(
      {this.resourceEvaluations, this.nextToken})
      : super._();

  @override
  ListResourceEvaluationsResponse rebuild(
          void Function(ListResourceEvaluationsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListResourceEvaluationsResponseBuilder toBuilder() =>
      new ListResourceEvaluationsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListResourceEvaluationsResponse &&
        resourceEvaluations == other.resourceEvaluations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceEvaluations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListResourceEvaluationsResponseBuilder
    implements
        Builder<ListResourceEvaluationsResponse,
            ListResourceEvaluationsResponseBuilder> {
  _$ListResourceEvaluationsResponse? _$v;

  _i3.ListBuilder<_i2.ResourceEvaluation>? _resourceEvaluations;
  _i3.ListBuilder<_i2.ResourceEvaluation> get resourceEvaluations =>
      _$this._resourceEvaluations ??=
          new _i3.ListBuilder<_i2.ResourceEvaluation>();
  set resourceEvaluations(
          _i3.ListBuilder<_i2.ResourceEvaluation>? resourceEvaluations) =>
      _$this._resourceEvaluations = resourceEvaluations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListResourceEvaluationsResponseBuilder() {
    ListResourceEvaluationsResponse._init(this);
  }

  ListResourceEvaluationsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceEvaluations = $v.resourceEvaluations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListResourceEvaluationsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListResourceEvaluationsResponse;
  }

  @override
  void update(void Function(ListResourceEvaluationsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListResourceEvaluationsResponse build() => _build();

  _$ListResourceEvaluationsResponse _build() {
    _$ListResourceEvaluationsResponse _$result;
    try {
      _$result = _$v ??
          new _$ListResourceEvaluationsResponse._(
              resourceEvaluations: _resourceEvaluations?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceEvaluations';
        _resourceEvaluations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListResourceEvaluationsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
