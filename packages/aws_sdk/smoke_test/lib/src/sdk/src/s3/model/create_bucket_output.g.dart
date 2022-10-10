// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.create_bucket_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateBucketOutput extends CreateBucketOutput {
  @override
  final String? location;

  factory _$CreateBucketOutput(
          [void Function(CreateBucketOutputBuilder)? updates]) =>
      (new CreateBucketOutputBuilder()..update(updates))._build();

  _$CreateBucketOutput._({this.location}) : super._();

  @override
  CreateBucketOutput rebuild(
          void Function(CreateBucketOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateBucketOutputBuilder toBuilder() =>
      new CreateBucketOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateBucketOutput && location == other.location;
  }

  @override
  int get hashCode {
    return $jf($jc(0, location.hashCode));
  }
}

class CreateBucketOutputBuilder
    implements Builder<CreateBucketOutput, CreateBucketOutputBuilder> {
  _$CreateBucketOutput? _$v;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  CreateBucketOutputBuilder() {
    CreateBucketOutput._init(this);
  }

  CreateBucketOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateBucketOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateBucketOutput;
  }

  @override
  void update(void Function(CreateBucketOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateBucketOutput build() => _build();

  _$CreateBucketOutput _build() {
    final _$result = _$v ?? new _$CreateBucketOutput._(location: location);
    replace(_$result);
    return _$result;
  }
}

class _$CreateBucketOutputPayload extends CreateBucketOutputPayload {
  factory _$CreateBucketOutputPayload(
          [void Function(CreateBucketOutputPayloadBuilder)? updates]) =>
      (new CreateBucketOutputPayloadBuilder()..update(updates))._build();

  _$CreateBucketOutputPayload._() : super._();

  @override
  CreateBucketOutputPayload rebuild(
          void Function(CreateBucketOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateBucketOutputPayloadBuilder toBuilder() =>
      new CreateBucketOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateBucketOutputPayload;
  }

  @override
  int get hashCode {
    return 242031077;
  }
}

class CreateBucketOutputPayloadBuilder
    implements
        Builder<CreateBucketOutputPayload, CreateBucketOutputPayloadBuilder> {
  _$CreateBucketOutputPayload? _$v;

  CreateBucketOutputPayloadBuilder() {
    CreateBucketOutputPayload._init(this);
  }

  @override
  void replace(CreateBucketOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateBucketOutputPayload;
  }

  @override
  void update(void Function(CreateBucketOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateBucketOutputPayload build() => _build();

  _$CreateBucketOutputPayload _build() {
    final _$result = _$v ?? new _$CreateBucketOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
