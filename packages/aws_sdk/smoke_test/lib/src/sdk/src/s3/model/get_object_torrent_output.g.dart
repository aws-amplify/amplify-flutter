// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_torrent_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectTorrentOutput extends GetObjectTorrentOutput {
  @override
  final _i3.Stream<List<int>>? body;
  @override
  final _i4.RequestCharged? requestCharged;

  factory _$GetObjectTorrentOutput(
          [void Function(GetObjectTorrentOutputBuilder)? updates]) =>
      (new GetObjectTorrentOutputBuilder()..update(updates))._build();

  _$GetObjectTorrentOutput._({this.body, this.requestCharged}) : super._();

  @override
  GetObjectTorrentOutput rebuild(
          void Function(GetObjectTorrentOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectTorrentOutputBuilder toBuilder() =>
      new GetObjectTorrentOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectTorrentOutput &&
        body == other.body &&
        requestCharged == other.requestCharged;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, body.hashCode), requestCharged.hashCode));
  }
}

class GetObjectTorrentOutputBuilder
    implements Builder<GetObjectTorrentOutput, GetObjectTorrentOutputBuilder> {
  _$GetObjectTorrentOutput? _$v;

  _i3.Stream<List<int>>? _body;
  _i3.Stream<List<int>>? get body => _$this._body;
  set body(_i3.Stream<List<int>>? body) => _$this._body = body;

  _i4.RequestCharged? _requestCharged;
  _i4.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i4.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  GetObjectTorrentOutputBuilder() {
    GetObjectTorrentOutput._init(this);
  }

  GetObjectTorrentOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body;
      _requestCharged = $v.requestCharged;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectTorrentOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectTorrentOutput;
  }

  @override
  void update(void Function(GetObjectTorrentOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectTorrentOutput build() => _build();

  _$GetObjectTorrentOutput _build() {
    final _$result = _$v ??
        new _$GetObjectTorrentOutput._(
            body: body, requestCharged: requestCharged);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
