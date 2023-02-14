import 'package:flutter/material.dart';
import 'dart:math';

class CustomDropDown extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final double itemHeight;
  final List<String> items;
  final String? selectedItem;
  final String hint;
  final Function(String value) onChange;

  const CustomDropDown({
    Key? key,
    this.padding,
    this.itemHeight = 38,
    required this.items,
    this.selectedItem,
    required this.hint,
    required this.onChange,
  }) : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  bool isOpen = false;

  final GlobalKey _key = GlobalKey();

  Widget _item(String text, {bool isIcon = false}) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.zero,
      child: Row(
        children: [
          Expanded(child: Text(text, style: const TextStyle(fontSize: 24),)),
          if (isIcon)
            Transform.rotate(
              angle: (isOpen ? 90 : 270) * pi / 180,
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 16,
              ),
            ),
        ],
      ),
    );
  }

  Widget _popupItem(String text) {
    return GestureDetector(
      onTap: () {
        widget.onChange(text);
        Navigator.pop(context);
      },
      child: SizedBox(height: widget.itemHeight, child: _item(text, isIcon: false)),
    );
  }

  void _showDropDown() async {
    // 드롭다운 버튼의 사이즈, 위치 등등
    final RenderBox renderBox =
        _key.currentContext?.findRenderObject() as RenderBox;

    // 위치
    Offset pos = renderBox.localToGlobal(Offset.zero);
    // 크기
    Size size = renderBox.size;

    print('pos : $pos');
    print('size : $size');

    await showDialog(
      context: _key.currentContext!,
      barrierColor: Colors.transparent,
      useSafeArea: false,
      barrierDismissible: true,
      builder: (context) {
        return Stack(
          children: [
            Positioned(
              left: pos.dx,
              top: pos.dy + widget.itemHeight + 2,
              child: Container(
                width: size.width,
                height: widget.items.length > 6
                    ? widget.itemHeight * 6
                    : widget.itemHeight * widget.items.length,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Colors.lightGreen)
                ),
                child: ListView.builder(
                  itemCount: widget.items.length,
                  padding: EdgeInsets.zero,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      _popupItem(widget.items[index]),
                ),
              ),
            ),
          ],
        );
      },
    );
    setState(() {
      isOpen = !isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: _key,
      onTap: () {
        setState(() {
          isOpen = !isOpen;
        });
        _showDropDown();
      },
      child: Container(
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.white,
        ),
        child: widget.selectedItem == null ? _item(widget.hint, isIcon: true) : _item(widget.selectedItem!, isIcon: true),
      ),
    );
  }
}
