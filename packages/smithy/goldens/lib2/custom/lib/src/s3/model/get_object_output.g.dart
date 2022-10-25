// GENERATED CODE - DO NOT MODIFY BY HAND

part of custom_v2.s3.model.get_object_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectOutput extends GetObjectOutput {
  @override
  final _i3.Stream<List<int>>? body;
  @override
  final int? contentLength;
  @override
  final String? contentRange;

  factory _$GetObjectOutput([void Function(GetObjectOutputBuilder)? updates]) =>
      (new GetObjectOutputBuilder()..update(updates))._build();

  _$GetObjectOutput._({this.body, this.contentLength, this.contentRange})
      : super._();

  @override
  GetObjectOutput rebuild(void Function(GetObjectOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectOutputBuilder toBuilder() =>
      new GetObjectOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectOutput &&
        body == other.body &&
        contentLength == other.contentLength &&
        contentRange == other.contentRange;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, body.hashCode), contentLength.hashCode),
        contentRange.hashCode));
  }
}

class GetObjectOutputBuilder
    implements Builder<GetObjectOutput, GetObjectOutputBuilder> {
  _$GetObjectOutput? _$v;

  _i3.Stream<List<int>>? _body;
  _i3.Stream<List<int>>? get body => _$this._body;
  set body(_i3.Stream<List<int>>? body) => _$this._body = body;

  int? _contentLength;
  int? get contentLength => _$this._contentLength;
  set contentLength(int? contentLength) =>
      _$this._contentLength = contentLength;

  String? _contentRange;
  String? get contentRange => _$this._contentRange;
  set contentRange(String? contentRange) => _$this._contentRange = contentRange;

  GetObjectOutputBuilder() {
    GetObjectOutput._init(this);
  }

  GetObjectOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body;
      _contentLength = $v.contentLength;
      _contentRange = $v.contentRange;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectOutput;
  }

  @override
  void update(void Function(GetObjectOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectOutput build() => _build();

  _$GetObjectOutput _build() {
    final _$result = _$v ??
        new _$GetObjectOutput._(
            body: body,
            contentLength: contentLength,
            contentRange: contentRange);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
