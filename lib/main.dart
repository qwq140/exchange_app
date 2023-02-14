import 'package:exchange_app/provider/calculate_provider.dart';
import 'package:exchange_app/provider/exchange_provider.dart';
import 'package:exchange_app/repository/exchange_repository.dart';
import 'package:exchange_app/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ExchangeProvider>(
          create: (_) => ExchangeProvider(
            repository: ExchangeRepository(),
          ),
        ),
        ChangeNotifierProxyProvider<ExchangeProvider, CalculateProvider>(
          create: (context) => CalculateProvider(
            exchangeList: context.read<ExchangeProvider>().state.exchangeList,
          ),
          update: (context, value, previous) => previous!..update(value),
        ),
      ],
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
