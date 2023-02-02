// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.stream;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Stream extends Stream {
  @override
  final String? streamArn;
  @override
  final String? streamLabel;
  @override
  final String? tableName;

  factory _$Stream([void Function(StreamBuilder)? updates]) =>
      (new StreamBuilder()..update(updates))._build();

  _$Stream._({this.streamArn, this.streamLabel, this.tableName}) : super._();

  @override
  Stream rebuild(void Function(StreamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreamBuilder toBuilder() => new StreamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Stream &&
        streamArn == other.streamArn &&
        streamLabel == other.streamLabel &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, streamArn.hashCode);
    _$hash = $jc(_$hash, streamLabel.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StreamBuilder implements Builder<Stream, StreamBuilder> {
  _$Stream? _$v;

  String? _streamArn;
  String? get streamArn => _$this._streamArn;
  set streamArn(String? streamArn) => _$this._streamArn = streamArn;

  String? _streamLabel;
  String? get streamLabel => _$this._streamLabel;
  set streamLabel(String? streamLabel) => _$this._streamLabel = streamLabel;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  StreamBuilder() {
    Stream._init(this);
  }

  StreamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streamArn = $v.streamArn;
      _streamLabel = $v.streamLabel;
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Stream other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Stream;
  }

  @override
  void update(void Function(StreamBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Stream build() => _build();

  _$Stream _build() {
    final _$result = _$v ??
        new _$Stream._(
            streamArn: streamArn,
            streamLabel: streamLabel,
            tableName: tableName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
