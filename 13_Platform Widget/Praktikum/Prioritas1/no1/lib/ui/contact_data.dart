import 'package:flutter/material.dart';

class WidgetContact extends StatelessWidget {
  final String? name;
  final String? handphone;
  final String? inisial;
  final Color? color;
  const WidgetContact({
    super.key,
    this.name,
    this.handphone,
    this.inisial,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: EdgeInsets.only(top: 5),
      decoration: const BoxDecoration(
        color: Colors.black26,
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.only(
              right: 16,
              left: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: color,
            ),
            child: Center(
                child: Text(
              inisial!,
              style: TextStyle(fontSize: 30),
            )),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name!,
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  handphone!,
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}