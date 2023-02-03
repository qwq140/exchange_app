import 'package:exchange_app/provider/exchange_provider.dart';
import 'package:exchange_app/repository/exchange_repository.dart';
import 'package:exchange_app/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  final repository = ExchangeRepository();
  final provider = ExchangeProvider(repository: repository);

  runApp(
    ChangeNotifierProvider(
      create: (_) => provider,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
