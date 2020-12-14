import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@module
abstract class ThirdPartyPackagesInjectableModule {
  @lazySingleton
  Uuid get uuid => Uuid();
}