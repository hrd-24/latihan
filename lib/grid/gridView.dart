import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
 appBar: AppBar(
        title: const Text('Grid Screen'),
        backgroundColor: Colors.brown,
      ),        body: GridView.count(
          // Create a grid with 2 columns.
          // If you change the scrollDirection to horizontal,
          // this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the list.
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: TextTheme.of(context).headlineSmall,
              
              ),
            );
          }),
        ),
      ),
    );
  }
}
