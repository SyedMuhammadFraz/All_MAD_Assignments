import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        initialData: [],
        future: _loadJournals(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return !snapshot.hasData
              ? Center(child: CircularProgressIndicator())
              : _buildListViewSeparated(snapshot);
        },
      ),
        Location.centerDocked.
        bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
    child: Padding(padding: const EdgeInsets.all(24.0)),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }
}
