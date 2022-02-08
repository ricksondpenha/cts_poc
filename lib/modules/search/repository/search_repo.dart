import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

import '../../../services/graphql_client.dart';

final searchRepository =
    Provider.autoDispose<SearchRepository>((ref) => SearchRepository(ref));

class SearchRepository {
  final ProviderRef ref;

  SearchRepository(this.ref);

  Future<Map<String, dynamic>?> locations() async {
    const String searchLocationsQuery = r'''
query location{
  locations(
    type:all

  ){id name type}
}
''';
    try {
      final QueryResult result = await ref.read(graphqlClient('vr')).query(
            QueryOptions(
              document: gql(searchLocationsQuery),
            ),
          );
      if (result.hasException) {
        debugPrint('GQL ERROR:' + result.exception.toString());
        throw Exception(result.exception!.graphqlErrors[0].toString());
      }
      return result.data;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<Map<String, dynamic>>> contents({
    required String locationId,
    required List<String> hotelIds,
    required String type,
  }) async {
    try {
      const String searchHotelQuery = r'''
query Contents($locationid: String, $hotelIds: [String]) {
  contents(locationid: $locationid, hotelIds: $hotelIds) {
    id
    name
    heroImage
    starRating
    geoCode {
      lat
      long
    }
    descriptions {
      type
      text
    }
    contact {
      address {
        line1
        city {
          name
        }
        state {
          code
          name
        }
        country {
          code
          name
        }
        postalCode
      }
      phones
      fax
    }
  }
}''';

      final QueryResult result = await ref.read(graphqlClient(type)).query(
            QueryOptions(
              document: gql(searchHotelQuery),
              variables: {
                'locationid': locationId,
                'hotelIds': hotelIds,
              },
            ),
          );
      if (result.hasException) {
        debugPrint('GQL ERROR:' + result.exception.toString());
        throw Exception(result.exception.toString());
      }
      return List<Map<String, dynamic>>.from(result.data!['contents']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Map<String, dynamic>> content({
    required String hotelId,
    required String type,
  }) async {
    try {
      const String hotelContent = r'''
query Content($type: ContentType!, $hotelid: String!) {
  content(type: $type, hotelid: $hotelid) {
    id
    name
    descriptions {
      text
    }
    contact {
      address {
        line1
        city {
          name
        }
        state {
          code
          name
        }
        country {
          code
          name
        }
        postalCode
      }
      phones
      fax
    }
    images {
      links {
        size
        url
      }
      caption
    }
    facilities {
      id
      groupId
      name
    }
    policies {
      type
      text
    }
    reviews {
      provider
      count
      rating
    }
  }
}''';

      final QueryResult result = await ref.read(graphqlClient(type)).query(
            QueryOptions(
              document: gql(hotelContent),
              variables: {
                'type': 'ALL',
                'hotelid': hotelId,
              },
            ),
          );
      if (result.hasException) {
        debugPrint('GQL ERROR:' + result.exception.toString());
        throw Exception(result.exception.toString());
      }
      return result.data?['content'] ?? {};
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Map<String, dynamic>> hotel(
      {required Map<String, dynamic> query}) async {
    try {
      const String hotelContent = r'''
query Hotel($filter: FilterHotel) {
  hotel(filter: $filter) {
    id
    groups {
      id
      name
      images {
        caption
        links {
          size
          url
        }
      }
      rooms {
        id
        name
        description
        smokingAllowed
        beds {
          type
          count
        }
        rate {
          id
          availability
          needsPriceCheck
        }
      }
    }
  }
}''';

      final QueryResult result =
          await ref.read(graphqlClient(query['type'])).query(
                QueryOptions(
                  document: gql(hotelContent),
                  variables: {
                    'filter': query..removeWhere((key, value) => key == 'type'),
                  },
                ),
              );
      if (result.hasException) {
        debugPrint('GQL ERROR:' + result.exception.toString());
        throw Exception(result.exception.toString());
      }
      return result.data?['hotel'] ?? {};
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
