class DeviceException implements Exception {
  final String message;

  DeviceException({required this.message});
}

class CacheException implements Exception {
  final String message;

  CacheException({required this.message});
}
