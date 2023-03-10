// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.records_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecordsEvent extends RecordsEvent {
  @override
  final _i2.Uint8List? payload;

  factory _$RecordsEvent([void Function(RecordsEventBuilder)? updates]) =>
      (new RecordsEventBuilder()..update(updates))._build();

  _$RecordsEvent._({this.payload}) : super._();

  @override
  RecordsEvent rebuild(void Function(RecordsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecordsEventBuilder toBuilder() => new RecordsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecordsEvent && payload == other.payload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RecordsEventBuilder
    implements Builder<RecordsEvent, RecordsEventBuilder> {
  _$RecordsEvent? _$v;

  _i2.Uint8List? _payload;
  _i2.Uint8List? get payload => _$this._payload;
  set payload(_i2.Uint8List? payload) => _$this._payload = payload;

  RecordsEventBuilder() {
    RecordsEvent._init(this);
  }

  RecordsEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecordsEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecordsEvent;
  }

  @override
  void update(void Function(RecordsEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecordsEvent build() => _build();

  _$RecordsEvent _build() {
    final _$result = _$v ?? new _$RecordsEvent._(payload: payload);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
