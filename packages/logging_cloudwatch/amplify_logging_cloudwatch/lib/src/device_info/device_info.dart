export 'device_info.stub.dart'
    if (dart.library.io) 'device_info.vm.dart'
    if (dart.library.html) 'device_info.web.dart';
