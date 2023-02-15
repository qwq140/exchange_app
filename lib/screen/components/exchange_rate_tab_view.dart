import 'package:exchange_app/provider/exchange_provider.dart';
import 'package:exchange_app/provider/exchange_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExchangeRateTabView extends StatelessWidget {
  const ExchangeRateTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final state = context.watch<ExchangeProvider>().state;

    if(state is ExchangeLoading) return const Center(child: CircularProgressIndicator(color: Colors.lightGreen));

    if(state is ExchangeError) return Center(child: Text(state.message));

    final list = (state as ExchangeData).exchangeList;

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      children: [
        const SizedBox(height: 12),
        ...List.generate(
          list.length,
              (index) => Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                  ),
                ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(list[index].curName),
                Text(list[index].amount),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
