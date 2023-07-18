
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/TextButton.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  String id = 'homepage';
  double boxsize = 1.0;
  double boxsizeheader = 35;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'دليل الصالحين',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 75,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.room_preferences),
                          Text('المرجعيات'),
                        ],
                      ),
                      SizedBox(
                        width: boxsizeheader,
                      ),
                      Column(
                        children: [
                          Icon(Icons.note_alt_sharp),
                          Text('الملاحظات'),
                        ],
                      ),
                      SizedBox(
                        width: boxsizeheader,
                      ),
                      Column(
                        children: [Icon(Icons.ac_unit), Text('الاجزاء')],
                      ),
                      SizedBox(
                        width: boxsizeheader,
                      ),
                    ],
                  ),
                ),
              ),

            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                ButtonField(
                  text: 'الإخـــــــــــــــلاصُ',
                ),
                SizedBox(
                  height: boxsize,
                ),
                ButtonField(
                  text: 'التوبة',
                ),
                SizedBox(
                  height: boxsize,
                ),
                ButtonField(
                  text: 'الصبرُ',
                ),
                SizedBox(
                  height: boxsize,
                ),
                ButtonField(
                  text: 'الصدقُ',
                ),
                SizedBox(
                  height: boxsize,
                ),
                ButtonField(
                  text: 'المُرَاقَبَةُ',
                ),
                SizedBox(
                  height: boxsize,
                ),
                ButtonField(
                  text: 'التَّقْوى',
                ),
                SizedBox(
                  height: boxsize,
                ),
                ButtonField(
                  text: ' اليقينِ والتَّوكُّلِ',
                ),
                SizedBox(
                  height: boxsize,
                ),
                ButtonField(
                  text: 'المُرَاقَبَةُ',
                ),
                SizedBox(
                  height: boxsize,
                ),
                ButtonField(
                  text: 'الاستقامةُ',
                ),
                SizedBox(
                  height: boxsize,
                ),
                ButtonField(
                  text: 'المجاهدة',
                ),
                SizedBox(
                  height: boxsize,
                ),
                ButtonField(
                  text: 'كَثْرةُ طُرُقِ الخيرِ',
                ),
                SizedBox(
                  height: boxsize,
                ),
                ButtonField(
                  text: 'الاقتصادُ في العبادةِ',
                ),
                SizedBox(
                  height: boxsize,
                ),
                ButtonField(
                  text: 'الرُّخَصُ الشرعيَّة: أحكامُها وضوابِطُها',
                ),
                SizedBox(
                  height: boxsize,
                ),
                ButtonField(
                  text: 'السُّنَّة النبوية الشريفة',
                ),
                SizedBox(
                  height: boxsize,
                ),
                ButtonField(
                  text: 'المُرَاقَبَةُ',
                ),
                SizedBox(
                  height: boxsize,
                ),
                ButtonField(
                  text: 'أقسام الحكم التكليفي للأمة',
                ),
                SizedBox(
                  height: boxsize,
                ),

              ],


            ),

          ],
        ),

      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'الفهرس',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ButtonField(
            text: 'الإخـــــــــــــــلاصُ',
          ),
          SizedBox(
            height: boxsize,
          ),
          ButtonField(
            text: 'التوبة',
          ),
          SizedBox(
            height: boxsize,
          ),
          ButtonField(
            text: 'الصبرُ',
          ),
          SizedBox(
            height: boxsize,
          ),
          ButtonField(
            text: 'الصدقُ',
          ),
          SizedBox(
            height: boxsize,
          ),
          ButtonField(
            text: 'المُرَاقَبَةُ',
          ),
          SizedBox(
            height: boxsize,
          ),
          ButtonField(
            text: 'التَّقْوى',
          ),
          SizedBox(
            height: boxsize,
          ),
          ButtonField(
            text: ' اليقينِ والتَّوكُّلِ',
          ),
          SizedBox(
            height: boxsize,
          ),
          ButtonField(
            text: 'المُرَاقَبَةُ',
          ),
          SizedBox(
            height: boxsize,
          ),
          ButtonField(
            text: 'الاستقامةُ',
          ),
          SizedBox(
            height: boxsize,
          ),
          ButtonField(
            text: 'المجاهدة',
          ),
          SizedBox(
            height: boxsize,
          ),
          ButtonField(
            text: 'كَثْرةُ طُرُقِ الخيرِ',
          ),
          SizedBox(
            height: boxsize,
          ),
          ButtonField(
            text: 'الاقتصادُ في العبادةِ',
          ),
          SizedBox(
            height: boxsize,
          ),
          ButtonField(
            text: 'الرُّخَصُ الشرعيَّة: أحكامُها وضوابِطُها',
          ),
          SizedBox(
            height: boxsize,
          ),
          ButtonField(
            text: 'السُّنَّة النبوية الشريفة',
          ),
          SizedBox(
            height: boxsize,
          ),
          ButtonField(
            text: 'المُرَاقَبَةُ',
          ),
          SizedBox(
            height: boxsize,
          ),
          ButtonField(
            text: 'أقسام الحكم التكليفي للأمة',
          ),
          SizedBox(
            height: boxsize,
          ),
          ButtonField(
            text: 'التعاون على البر والتقوى',
          ),
          SizedBox(
            height: boxsize,
          ),
        ],
      ),
    );
  }
}
