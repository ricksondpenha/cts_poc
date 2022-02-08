import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchService extends ConsumerWidget {
  final String strSearchTitle;
  const SearchService({Key? key, required this.strSearchTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Wrap(
      direction: Axis.horizontal,
      runSpacing: 10,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          child: InkWell(
            onTap: () {
              // Mobile Location Logical Here
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 45,
              color: const Color(0xff49B7D8),
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    alignment: Alignment.center,
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: [
                        Text(
                          strSearchTitle,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
