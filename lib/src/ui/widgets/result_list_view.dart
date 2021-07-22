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
        var rating = currentResult.vote_average;

        final genres = <String>[];
        for (var id in currentResult.genre_ids) {
          genres.add(Constants.genres[id]!);
        }

        late Color ratingColor;
        if (rating >= 7) {
          ratingColor = Colors.green;
        } else if (rating > 4) {
          ratingColor = Colors.blueAccent;
        } else {
          ratingColor = Colors.redAccent;
        }

        return Card(
          margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 3,
          child: Container(
            height: 150,
            child: ListTile(
              // leading: currentResult.poster_path == null
              //     ? Text('No Poster')
              //     : Container(
              //         height: 200,
              //         child: Image.network(
              //           Constants.BACKDROP_BASE_URL +
              //               currentResult.poster_path!,
              //         ),
              //       ),
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
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: ratingColor,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                    child: Text(
                      '$rating IMDB',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
