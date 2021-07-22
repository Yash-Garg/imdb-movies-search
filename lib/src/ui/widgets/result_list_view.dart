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

        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: Container(
                    height: 150,
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.4,
                    ),
                    child: Column(
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
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 3,
                          ),
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
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Container(
                    height: 170,
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        child: currentResult.poster_path == null
                            ? Image.asset(
                                'assets/placeholder.png',
                                fit: BoxFit.cover,
                              )
                            : Image.network(
                                Constants.BACKDROP_BASE_URL +
                                    currentResult.poster_path!,
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
