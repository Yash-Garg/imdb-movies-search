import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../data/models/search.dart';
import '../../theme/app_theme.dart';

class ResultListView extends StatelessWidget {
  final List<Result> results;

  const ResultListView({Key? key, required this.results}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: results.length,
      itemBuilder: (context, index) {
        var currentResult = results[index];
        final genres = <String>[];
        for (var id in currentResult.genre_ids) {
          genres.add(Constants.genres[id]!);
        }

        return Card(
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 3,
          child: Container(
            height: 150,
            child: ListTile(
              leading: currentResult.poster_path == null
                  // TODO: Add a placeholder image asset
                  ? Text('No Poster')
                  // TODO: Fix the alignment and size of image
                  : Container(
                      height: 200,
                      child: Image.network(
                        Constants.BACKDROP_BASE_URL +
                            currentResult.poster_path!,
                        fit: BoxFit.cover,
                      ),
                    ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    currentResult.title,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 5),
                  Text(
                    genres.join(' | '),
                    style: TextStyle(fontSize: 13, color: mildWhite),
                  ),
                  SizedBox(height: 5),
                  // TODO: Add a rounded button below the rating
                  Text('${currentResult.vote_average} IMDB'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
