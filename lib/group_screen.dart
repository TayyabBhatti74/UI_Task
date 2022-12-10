import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({Key? key}) : super(key: key);

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(Icons.arrow_back),
                    SizedBox(width: 100,),
                    Text('Create Group', style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 16),),
                  ],
                ),
                SizedBox(height: 20,),
                Text('Group Description', style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 16,color: Color(0xff797C7B)),),
                Text('Make Group\nfor Team Work',style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 40),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xff20a09014),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(child: Text('Group work')),
                    ),
                    SizedBox(width: 25,),
                    Container(
                      height: 35,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color(0xff20a09014),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(child: Text('Team relationship')),
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Text('Group Admin', style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 16,color: Color(0xff797C7B)),),
                ListTile(
                  leading: Image(image: AssetImage('assets/home_pic.png'),),
                  title: Text('Designer_kishan'),
                  subtitle: Text('Group Admin'),
                ),
                SizedBox(height: 10,),
                Text('Invited Members', style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 16,color: Color(0xff797C7B)),),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/m1.png'),
                      radius: 40,
                    ),
                    CustomMember(imageName: 'assets/m2.png'),
                    CustomMember(imageName: 'assets/m3.png'),
                    CustomMember(imageName: 'assets/m4.png'),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    CustomMember(imageName: 'assets/m5.png'),
                    SizedBox(width: 11,),
                    CustomMember(imageName: 'assets/m6.png'),
                    SizedBox(width: 11,),
                    DottedBorder(
                      color: Colors.grey,
                      borderType: BorderType.Circle,
                      dashPattern: [10,5],
                        child: CircleAvatar(
                          backgroundColor: Color(0xffFFFFFF),
                          child: Icon(Icons.add, color: Colors.grey,),
                          radius: 40,
                        ),),
                  ],
                ),
                SizedBox(height: 80,),
                Center(
                  child: Container(
                    height: 48,
                    width: 327,
                    decoration: BoxDecoration(
                      color: Color(0xff05028F),
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Center(child: Text('Create', style: TextStyle(fontFamily: 'PoppinsBold',fontSize: 16, color: Colors.white),)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomMember extends StatelessWidget {
  String imageName;
   CustomMember({required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imageName),
          radius: 40,
        ),
        Positioned(
            left: 58,
            top: 56,
            child: CircleAvatar(
              backgroundColor: Color(0xffF0F3F5),
              radius: 10,
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 20,
              ),
            )),
      ],
    );
  }
}

