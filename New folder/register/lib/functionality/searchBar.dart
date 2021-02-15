import 'dart:ui';

import 'package:flutter/material.dart';

class Search extends SearchDelegate<String> {
  final List<String> global = ['home', 'A', 'B', 'C', 'D', 'E'];
  final List<String> temp = ['A', 'B', 'C'];

  @override
  List<Widget> buildActions(BuildContext context) {
    //actions for app bar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon of the search bar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null); //provided with searchDelegate
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Card(
      child: Text('Helo'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something
    final List<String> suggestions = query.isEmpty
        ? temp
        : global
            .where((p) => p.startsWith(query))
            .toList(); //where needs a temp variable that iterates over global.
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.location_city),
        title: RichText(
          text: TextSpan(
              text: suggestions[index].substring(0, query.length),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                    text: suggestions[index].substring(query.length),
                    style: TextStyle(color: Colors.grey))
              ]),
        ),
        onTap: () {
          showResults(context);
        },
      ),
    );
  }
}
