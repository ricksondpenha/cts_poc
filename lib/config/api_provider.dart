import '../core.dart';

final apiProvider = Provider<ApiProvider>((ref) {
  return ApiProvider(ref);
});

class ApiProvider {
  final Ref ref;
  ApiProvider(this.ref) {
    baseUrl = 'evolve.cloudapis.net';
  }
  late final String baseUrl;

  String getHttpEndpoint() => 'https://$baseUrl';

  String getWsUrl() => baseUrl.isNotEmpty ? 'ws://$baseUrl' : '';
}
