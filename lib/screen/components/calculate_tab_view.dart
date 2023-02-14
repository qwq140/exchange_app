import 'package:exchange_app/provider/calculate_provider.dart';
import 'package:exchange_app/screen/components/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculateTabView extends StatelessWidget {
  const CalculateTabView({Key? key}) : super(key: key);

  Widget calBtn(String value, {Icon? icon}) {
    return Builder(builder: (context) {
      return Expanded(
        child: GestureDetector(
          onTap: () {
            context.read<CalculateProvider>().insert(value);
          },
          child: Container(
            padding: const EdgeInsets.all(24),
            alignment: Alignment.center,
            color: Colors.transparent,
            child: icon ??
                Text(value,
                    style: TextStyle(fontSize: 24, color: Colors.black)),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Builder(builder: (context) {
          final state = context.watch<CalculateProvider>().state;
          return Padding(
            padding: const EdgeInsets.all(24),
            child: _CurrencyRow(
              onTap: () {},
              unit: state.selectExchange.unit,
              money: state.before,
              useDrop: true,
            ),
          );
        }),
        const Icon(Icons.arrow_downward, size: 40),
        Builder(builder: (context) {
          final state = context.watch<CalculateProvider>().state;
          return Padding(
            padding: EdgeInsets.all(24),
            child: _CurrencyRow(
              unit: 'KRW',
              money: state.after,
            ),
          );
        }),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey[300]!))),
          child: Column(
            children: [
              Row(
                children: [
                  calBtn('7'),
                  calBtn('8'),
                  calBtn('9'),
                ],
              ),
              Row(
                children: [
                  calBtn('4'),
                  calBtn('5'),
                  calBtn('6'),
                ],
              ),
              Row(
                children: [
                  calBtn('1'),
                  calBtn('2'),
                  calBtn('3'),
                ],
              ),
              Row(
                children: [
                  calBtn('.'),
                  calBtn('0'),
                  calBtn('<-', icon: Icon(Icons.backspace)),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _CurrencyRow extends StatelessWidget {
  final String unit;
  final String money;
  final bool useDrop;
  final Function()? onTap;

  const _CurrencyRow(
      {Key? key,
      required this.unit,
      required this.money,
      this.onTap,
      this.useDrop = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CalculateProvider>().state;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        useDrop
            ? Expanded(
              child: CustomDropDown(
                  items: state.exchangeList.map((e) => e.unit).toList(),
                  hint: '',
                  onChange: (value) {
                    context.read<CalculateProvider>().selectExchange(value);
                  },
                  selectedItem: state.selectExchange.unit,
                ),
            )
            : Text(
                unit,
                style: const TextStyle(fontSize: 24),
              ),
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(bottom: 6),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.lightGreen))),
          child: Text(
            money,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
