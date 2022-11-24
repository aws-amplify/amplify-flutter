// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.stream_specification;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StreamSpecification extends StreamSpecification {
  @override
  final bool streamEnabled;
  @override
  final _i2.StreamViewType? streamViewType;

  factory _$StreamSpecification(
          [void Function(StreamSpecificationBuilder)? updates]) =>
      (new StreamSpecificationBuilder()..update(updates))._build();

  _$StreamSpecification._({required this.streamEnabled, this.streamViewType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        streamEnabled, r'StreamSpecification', 'streamEnabled');
  }

  @override
  StreamSpecification rebuild(
          void Function(StreamSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreamSpecificationBuilder toBuilder() =>
      new StreamSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreamSpecification &&
        streamEnabled == other.streamEnabled &&
        streamViewType == other.streamViewType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, streamEnabled.hashCode), streamViewType.hashCode));
  }
}

class StreamSpecificationBuilder
    implements Builder<StreamSpecification, StreamSpecificationBuilder> {
  _$StreamSpecification? _$v;

  bool? _streamEnabled;
  bool? get streamEnabled => _$this._streamEnabled;
  set streamEnabled(bool? streamEnabled) =>
      _$this._streamEnabled = streamEnabled;

  _i2.StreamViewType? _streamViewType;
  _i2.StreamViewType? get streamViewType => _$this._streamViewType;
  set streamViewType(_i2.StreamViewType? streamViewType) =>
      _$this._streamViewType = streamViewType;

  StreamSpecificationBuilder() {
    StreamSpecification._init(this);
  }

  StreamSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streamEnabled = $v.streamEnabled;
      _streamViewType = $v.streamViewType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreamSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StreamSpecification;
  }

  @override
  void update(void Function(StreamSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StreamSpecification build() => _build();

  _$StreamSpecification _build() {
    final _$result = _$v ??
        new _$StreamSpecification._(
            streamEnabled: BuiltValueNullFieldError.checkNotNull(
                streamEnabled, r'StreamSpecification', 'streamEnabled'),
            streamViewType: streamViewType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
