import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/models/search.dart';
import '../data/repository/imdb_repository.dart';
import '../data/state/result_state_notifier.dart';
import 'widgets/loading.dart';
import 'widgets/result_list_view.dart';

final moviesProvider =
    StateNotifierProvider<GetResultRequestsNotifier, ResultState<List<Result>>>(
  (ref) => GetResultRequestsNotifier(ref.watch(imdbRepositoryProvider)),
);

class HomePage extends StatefulHookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // context.read(moviesProvider.notifier).getResults('maze');
  }

  @override
  Widget build(BuildContext context) {
    final _searchController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.w900,
            letterSpacing: 1,
            fontFamily: GoogleFonts.capriola().fontFamily,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: CustomSearchBar(searchController: _searchController),
          ),
          useProvider(moviesProvider).when(
            loading: () => CustomLoading(),
            success: (value) => Expanded(
              child: ResultListView(results: value!),
            ),
            error: (err, stack) => Center(child: Text(err.toString())),
          ),
        ],
      ),
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    Key? key,
    required this.searchController,
  }) : super(key: key);

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.only(left: 15),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  cursorColor: Colors.black,
                  enableSuggestions: true,
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Search for Movies',
                    border: InputBorder.none,
                  ),
                  onSubmitted: (value) async {},
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
