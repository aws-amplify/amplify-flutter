import 'package:worker_bee/worker_bee.dart';

final _workers = <String, WorkerBeeBuilder>{};
void main() => runHive(_workers);
