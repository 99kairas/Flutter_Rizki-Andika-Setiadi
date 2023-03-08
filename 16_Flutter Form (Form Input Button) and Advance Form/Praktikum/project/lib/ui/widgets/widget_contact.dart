import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetContact extends StatelessWidget {
  List<String> _datas = [];
  WidgetContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: EdgeInsets.only(top: 5, left: 17, right: 17),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.only(
              right: 16,
              left: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color(0xffEADDFF),
            ),
            child: Center(
                child: Text(
              'A',
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),
            )),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rizki Andika Setiadi',
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w400),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '+62123456781',
                  style: GoogleFonts.roboto(fontSize: 13, color: Colors.grey),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 24,
                  height: 20,
                  margin: EdgeInsets.only(right: 23),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/icon_pen.png",
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 24,
                  height: 20,
                  margin: EdgeInsets.only(right: 28),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/icon_garbage.png",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
