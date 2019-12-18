import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:velib_app/services/bike_services/bike_service.dart';

import 'pages/home/presentations/home_page.dart';

final BikeService bikeService = BikeService();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<BikeService>(
      create: (_) => bikeService,
      child: MaterialApp(
        title: "Vélo'v",
        home: HomePage(),
      ),
    );
  }
}
