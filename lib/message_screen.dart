import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 2),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Color(0xff00ffffff),
                      child: Image.asset('assets/search.png'),
                    ),
                  ),
                  Text('Home',style: TextStyle(fontFamily: 'PoppinsMedium',fontSize: 20,color: Colors.white),),
                  Image.asset('assets/home_pic.png'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          DottedBorder(
                            color: Colors.grey,
                            borderType: BorderType.Circle,
                            dashPattern: [30,2],
                            child: CircleAvatar(
                              child: Image.asset('assets/bm.png'),
                              radius: 26,
                            ),),
                          Positioned(
                              left: 44,
                              top: 40,
                              child: CircleAvatar(
                                backgroundColor: Color(0xffF0F3F5),
                                radius: 6,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 10,
                                ),
                              )),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text('My Status', style: TextStyle(fontSize: 14,color: Colors.white),),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow,width: 2),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/ym.png'),
                      ),
                      SizedBox(height: 10,),
                      Text('Adil', style: TextStyle(fontSize: 14,color: Colors.white),),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.pinkAccent,width: 2),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/pf.png'),
                      ),
                      SizedBox(height: 10,),
                      Text('Marina', style: TextStyle(fontSize: 14,color: Colors.white),),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightBlueAccent,width: 2),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/cm.png'),
                      ),
                      SizedBox(height: 10,),
                      Text('Dean', style: TextStyle(fontSize: 14,color: Colors.white),),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellowAccent,width: 2),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/max.png'),
                      ),
                      SizedBox(height: 10,),
                      Text('Max', style: TextStyle(fontSize: 14,color: Colors.white),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 493,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35))
              ),
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                return ListTile(
                  leading: Image.asset('assets/bm.png'),
                  title: Text('Alex',style: TextStyle(fontFamily: 'PoppinsMedium',fontSize: 20),),
                  subtitle: Text('How are you today?',style: TextStyle(fontFamily: 'PoppinsMedium',fontSize: 12),),
                  trailing: Text('2 min ago',style: TextStyle(fontFamily: 'PoppinsMedium',fontSize: 12),),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
