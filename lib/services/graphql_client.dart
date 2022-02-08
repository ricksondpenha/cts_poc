import 'package:graphql/client.dart';
import 'package:cts_poc/core.dart';

final graphqlClient =
    Provider.family.autoDispose<GraphQLClient, String>((ref, path) {
  final _httpUrl = ref.read(apiProvider).getHttpEndpoint() + '/$path';
  final _wsUrl = ref.read(apiProvider).getWsUrl();
  final HttpLink _httpLink = HttpLink(_httpUrl, defaultHeaders: {});
  late AuthLink _authLink;
  late Link _link;
  _authLink = AuthLink(
    getToken: () async {
      String userToken = '';
      return userToken.isEmpty ? '' : 'Bearer $userToken';
    },
  );
  _link = _authLink.concat(_httpLink);
  if (_wsUrl.isNotEmpty) {
    final _wsLink = WebSocketLink(_wsUrl + '/$path');
    _link = Link.split((request) => request.isSubscription, _wsLink, _link);
  }
  GraphQLClient _client = GraphQLClient(
    cache: GraphQLCache(),
    link: _link,
  );
  return _client;
});
