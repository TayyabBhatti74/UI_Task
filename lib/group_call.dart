import 'package:flutter/material.dart';

class GroupCallScreen extends StatefulWidget {
  const GroupCallScreen({Key? key}) : super(key: key);

  @override
  State<GroupCallScreen> createState() => _GroupCallScreenState();
}

class _GroupCallScreenState extends State<GroupCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/bg.png',
                ),
                SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'Meeting With\nLora Adom',
                          style: TextStyle(
                              fontFamily: 'PoppinsBold',
                              fontSize: 40,
                              color: Colors.white),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset('assets/lora.png'),
                        title: Text(
                          'Lora Adom',
                          style: TextStyle(
                              fontFamily: 'PoppinsBold',
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        subtitle: Text(
                          'Meeting Organizer',
                          style: TextStyle(
                              fontFamily: 'PoppinsMedium',
                              fontSize: 13,
                              color: Color(0xffDFE6F3)),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                      ),
                      ListTile(
                        leading: Image.asset('assets/dean.png'),
                        title: Text(
                          'Dean Ronload',
                          style: TextStyle(
                              fontFamily: 'PoppinsBold',
                              fontSize: 16,
                              color: Color(0xffBCC2CC)),
                        ),
                        subtitle: Text(
                          'Sounds Resonable',
                          style: TextStyle(
                              fontFamily: 'PoppinsMedium',
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset('assets/annei.png'),
                        title: Text(
                          'Annei Ellison',
                          style: TextStyle(
                              fontFamily: 'PoppinsBold',
                              fontSize: 16,
                              color: Color(0xffBCC2CC)),
                        ),
                        subtitle: Text(
                          'What about our profit?',
                          style: TextStyle(
                              fontFamily: 'PoppinsMedium',
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset('assets/john.png'),
                        title: Text(
                          'John Borino',
                          style: TextStyle(
                              fontFamily: 'PoppinsBold',
                              fontSize: 16,
                              color: Color(0xffBCC2CC)),
                        ),
                        subtitle: Text(
                          'What led you to this thought?',
                          style: TextStyle(
                              fontFamily: 'PoppinsMedium',
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/mic.png',
                            ),
                            Image.asset(
                              'assets/speaker.png',
                            ),
                            Image.asset(
                              'assets/video.png',
                            ),
                            Image.asset(
                              'assets/chat.png',
                            ),
                            Image.asset(
                              'assets/close.png',
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/mute.png'),
                            Image.asset('assets/unmute.png'),
                            Image.asset('assets/muteg.png'),
                            Image.asset('assets/muteg2.png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
