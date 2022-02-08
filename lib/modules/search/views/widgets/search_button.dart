import 'package:cts_poc/core.dart';
import 'search_type/circular_button.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: CircularButton(
          selected: true,
          icon: Icons.search,
          label: 'search',
          onTap: () {
            try {
              final searchQuery = ref.watch(searchQueryProvider);
              context.goNamed(
                ref.read(searchTypeProvider).name,
                queryParams: Uri(
                  queryParameters: searchQuery.toJson(),
                ).queryParameters,
              );
            } catch (e) {
              debugPrint('error: ' + e.toString());
            }
          },
        ),
      );
    });
  }
}
