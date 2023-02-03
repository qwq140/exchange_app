import 'package:flutter/material.dart';

class CalculateTabView extends StatelessWidget {
  const CalculateTabView({Key? key}) : super(key: key);

  Widget calBtn(String value, {Icon? icon}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(24),
          alignment: Alignment.center,
          child: icon ??
              Text(value, style: TextStyle(fontSize: 24, color: Colors.black)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: _CurrencyRow(onTap: (){}, unit: 'USD', money: '1,111'),
        ),
        const Icon(Icons.arrow_downward, size: 40),
        const Padding(
          padding: EdgeInsets.all(24),
          child: _CurrencyRow(unit: 'KRW', money: '1,111',),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey[300]!))
          ),
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
                  calBtn('', icon: Icon(Icons.backspace)),
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
  final Function()? onTap;

  const _CurrencyRow({Key? key, required this.unit, required this.money, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Text(
            unit,
            style: const TextStyle(fontSize: 24),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(bottom: 6),
          decoration: const BoxDecoration(
              border:
              Border(bottom: BorderSide(color: Colors.lightGreen))),
          child: Text(
            money,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}