
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../Widgets/TextButton.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  String id = 'homepage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

//   Future<List<dynamic>> getdata() async{
//
//    final _sections  = await Supabase.instance.client.from('Book').select('sections').order('id', ascending: false);
//
//    return _sections;
//
//
// }
  

  //select<List<Map<String, dynamic>>>


  @override
  void initState() {

    print( isDataReturned());

    super.initState();

  }



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
                 
                  text:'islam',
                ),
                SizedBox(
                  height: boxsize,
                ),
                // ButtonField(
                //  
                //   text: 'التوبة',
                // ),
                // SizedBox(
                //   height: boxsize,
                // ),
                // ButtonField(
                //  
                //   text: 'الصبرُ',
                // ),
                // SizedBox(
                //   height: boxsize,
                // ),
                // ButtonField(
                //  
                //   text: 'الصدقُ',
                // ),
                // SizedBox(
                //   height: boxsize,
                // ),
                // ButtonField(
                //  
                //   text: 'المُرَاقَبَةُ',
                // ),
                // SizedBox(
                //   height: boxsize,
                // ),
                // ButtonField(
                //  
                //   text: 'التَّقْوى',
                // ),
                // SizedBox(
                //   height: boxsize,
                // ),
                // ButtonField(
                //  
                //   text: ' اليقينِ والتَّوكُّلِ',
                // ),
                // SizedBox(
                //   height: boxsize,
                // ),
                // ButtonField(
                // 
                //   text: 'المُرَاقَبَةُ',
                // ),
                // SizedBox(
                //   height: boxsize,
                // ),
                // ButtonField(
                //  
                //   text: 'الاستقامةُ',
                // ),
                // SizedBox(
                //   height: boxsize,
                // ),
                // ButtonField(
                //  
                //   text: 'المجاهدة',
                // ),
                // SizedBox(
                //   height: boxsize,
                // ),
                // ButtonField(
                //   onPressed: (){},
                //   text: 'كَثْرةُ طُرُقِ الخيرِ',
                // ),
                // SizedBox(
                //   height: boxsize,
                // ),
                // ButtonField(
                //   onPressed: (){},
                //   text: 'الاقتصادُ في العبادةِ',
                // ),
                // SizedBox(
                //   height: boxsize,
                // ),
                // ButtonField(
                //   onPressed: (){},
                //   text: 'الرُّخَصُ الشرعيَّة: أحكامُها وضوابِطُها',
                // ),
                // SizedBox(
                //   height: boxsize,
                // ),
                // ButtonField(
                //   onPressed: (){},
                //   text: 'السُّنَّة النبوية الشريفة',
                // ),
                // SizedBox(
                //   height: boxsize,
                // ),
                // ButtonField(
                //   onPressed: (){},
                //   text: 'المُرَاقَبَةُ',
                // ),
                // SizedBox(
                //   height: boxsize,
                // ),
                // ButtonField(
                //   onPressed: (){},
                //   text: 'أقسام الحكم التكليفي للأمة',
                // ),
                // SizedBox(
                //   height: boxsize,
                // ),

              ],


            ),
            FutureBuilder<List<Map<String, dynamic>>>(
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                final data = snapshot.data!;
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: ((context, index) {
                    final sections_data = data[index];
                    return Expanded(child: ButtonField(text: sections_data['sections']));
                  }),
                );
              },
            ),

          ],
        ),

      ),
      body:Scaffold(),
    );
  }
}
