import 'package:flutter/material.dart';

import '../../data/models/search.dart';

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
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 2,
          child: ListTile(
            leading: Image.network(currentResult.image),
            title: Text(currentResult.title),
            subtitle: Text(currentResult.description),
          ),
        );
      },
    );
  }
}
