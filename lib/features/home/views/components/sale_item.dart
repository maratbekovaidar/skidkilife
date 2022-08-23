
import 'package:flutter/material.dart';

class SaleItem extends StatefulWidget {
  const SaleItem({Key? key}) : super(key: key);

  @override
  State<SaleItem> createState() => _SaleItemState();
}

class _SaleItemState extends State<SaleItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg"
          )
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text(
            "Vegetables",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 5)
              ]
            ),
          )
        ],
      ),
    );
  }
}
