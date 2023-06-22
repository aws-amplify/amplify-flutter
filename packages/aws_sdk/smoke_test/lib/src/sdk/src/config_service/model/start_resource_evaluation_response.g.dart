// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_resource_evaluation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartResourceEvaluationResponse
    extends StartResourceEvaluationResponse {
  @override
  final String? resourceEvaluationId;

  factory _$StartResourceEvaluationResponse(
          [void Function(StartResourceEvaluationResponseBuilder)? updates]) =>
      (new StartResourceEvaluationResponseBuilder()..update(updates))._build();

  _$StartResourceEvaluationResponse._({this.resourceEvaluationId}) : super._();

  @override
  StartResourceEvaluationResponse rebuild(
          void Function(StartResourceEvaluationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartResourceEvaluationResponseBuilder toBuilder() =>
      new StartResourceEvaluationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartResourceEvaluationResponse &&
        resourceEvaluationId == other.resourceEvaluationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceEvaluationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StartResourceEvaluationResponseBuilder
    implements
        Builder<StartResourceEvaluationResponse,
            StartResourceEvaluationResponseBuilder> {
  _$StartResourceEvaluationResponse? _$v;

  String? _resourceEvaluationId;
  String? get resourceEvaluationId => _$this._resourceEvaluationId;
  set resourceEvaluationId(String? resourceEvaluationId) =>
      _$this._resourceEvaluationId = resourceEvaluationId;

  StartResourceEvaluationResponseBuilder() {
    StartResourceEvaluationResponse._init(this);
  }

  StartResourceEvaluationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceEvaluationId = $v.resourceEvaluationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartResourceEvaluationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartResourceEvaluationResponse;
  }

  @override
  void update(void Function(StartResourceEvaluationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartResourceEvaluationResponse build() => _build();

  _$StartResourceEvaluationResponse _build() {
    final _$result = _$v ??
        new _$StartResourceEvaluationResponse._(
            resourceEvaluationId: resourceEvaluationId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
