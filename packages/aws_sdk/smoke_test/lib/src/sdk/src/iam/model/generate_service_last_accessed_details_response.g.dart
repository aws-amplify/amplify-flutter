// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.generate_service_last_accessed_details_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GenerateServiceLastAccessedDetailsResponse
    extends GenerateServiceLastAccessedDetailsResponse {
  @override
  final String? jobId;

  factory _$GenerateServiceLastAccessedDetailsResponse(
          [void Function(GenerateServiceLastAccessedDetailsResponseBuilder)?
              updates]) =>
      (new GenerateServiceLastAccessedDetailsResponseBuilder()..update(updates))
          ._build();

  _$GenerateServiceLastAccessedDetailsResponse._({this.jobId}) : super._();

  @override
  GenerateServiceLastAccessedDetailsResponse rebuild(
          void Function(GenerateServiceLastAccessedDetailsResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenerateServiceLastAccessedDetailsResponseBuilder toBuilder() =>
      new GenerateServiceLastAccessedDetailsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenerateServiceLastAccessedDetailsResponse &&
        jobId == other.jobId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GenerateServiceLastAccessedDetailsResponseBuilder
    implements
        Builder<GenerateServiceLastAccessedDetailsResponse,
            GenerateServiceLastAccessedDetailsResponseBuilder> {
  _$GenerateServiceLastAccessedDetailsResponse? _$v;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(String? jobId) => _$this._jobId = jobId;

  GenerateServiceLastAccessedDetailsResponseBuilder() {
    GenerateServiceLastAccessedDetailsResponse._init(this);
  }

  GenerateServiceLastAccessedDetailsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobId = $v.jobId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenerateServiceLastAccessedDetailsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GenerateServiceLastAccessedDetailsResponse;
  }

  @override
  void update(
      void Function(GenerateServiceLastAccessedDetailsResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GenerateServiceLastAccessedDetailsResponse build() => _build();

  _$GenerateServiceLastAccessedDetailsResponse _build() {
    final _$result =
        _$v ?? new _$GenerateServiceLastAccessedDetailsResponse._(jobId: jobId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
