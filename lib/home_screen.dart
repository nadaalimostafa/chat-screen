import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          //back icon

          title: Row(
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/person.jpg"),
              ),
              SizedBox(
                width: width * 0.05,
              ),
              const Text(
                "Person",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),

          actions: [
            const Icon(
              Icons.videocam,
              color: Colors.white,
            ),
            SizedBox(width: width * 0.05),
            const Icon(
              Icons.call,
              color: Colors.white,
            ),
            SizedBox(width: width * 0.05),
            const Padding(
              padding: EdgeInsets.only(right: 5),
              child: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Stack(children: [
          //background
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Column(
            children: [
              SizedBox(height: height * 0.05),

              //statrt first message
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.03),
                    child: CircleAvatar(
                      radius: width * 0.06,
                      backgroundImage: AssetImage('assets/person1.jpg'),
                    ),
                  ),
                  SizedBox(width: width * 0.05),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(26),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.1, vertical: width * 0.03),
                      child: const Text(
                        'This Is My First Message',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(
                height: height * 0.05,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(26),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.1,
                        vertical: width * 0.03,
                      ),
                      child: const Text(
                        'This Is My Second Message',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: width * 0.05),
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.03),
                    child: CircleAvatar(
                      radius: width * 0.06,
                      backgroundImage: AssetImage('assets/person2.jpg'),
                    ),
                  ),
                ],
              ),
              //
              // second message

              // SizedBox(height: height * 0.6),
              Spacer(),

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: width * 0.02, bottom: width * 0.01),
                    height: height * 0.065,
                    width: width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: width * 0.02,
                        right: width * 0.02,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(width: width * 0.02),
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Type a Message',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          const Icon(Icons.attach_file, color: Colors.grey),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.mic,
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
            ],
          )
        ]));
  }
}
