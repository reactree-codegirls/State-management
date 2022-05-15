import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/firstScreen.dart';
import 'package:state_management/providers/namesProvider.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NamesProvider>(create: (_) => NamesProvider())
      ],
      builder: (ctx, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstScreen(),
      ),
    );
  }
}
