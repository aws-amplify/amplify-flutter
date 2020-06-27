part of amplify_flutter_platform_interface;

const MethodChannel _channel = MethodChannel('com.amazonaws.amplify/core');

/// An implementation of [AmplifyCorePlugin] that uses method channels.
class MethodChannelAmplifyCore extends AmplifyCorePlugin {
  @override
  Future<bool> configure(String configuration) {
    return _channel.invokeMethod<bool>(
      'configure',
      <String, Object>{
        'configuration': configuration,
      },
    );
  }
}
