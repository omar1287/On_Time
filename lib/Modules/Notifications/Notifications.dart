import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#034488'),
        elevation: 0,
        title:const  Padding(
          padding:  EdgeInsets.only(right: 15),
          child: Center(

            child: Image(
              image: AssetImage('Assets/Images/ON_White.png'),
              width: 120,
              height: 26,
            ),
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_sharp,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Today',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey
              ),),
              const SizedBox(
                height: 15,
              ),
              Card(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage('Assets/Images/Man.png'),
                                radius: 35,
                              ),
                              const SizedBox(
                                  width: 15,

                              ),
                              Column(
                                children: const [

                                     Text('Mohamed Salah',style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black87
                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text('Lorem Ipsum is simply dummy text of the type setting industry.Lorem Ipsum is simply dummy text of the printing and typesetting.',style: TextStyle(
                            color: Colors.black54,
                            fontSize: 17

                          ),)
                        ],
                      ),



                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage('Assets/Images/Man.png'),
                            radius: 35,
                          ),
                          const SizedBox(
                            width: 15,

                          ),
                          Column(
                            children: const [

                              Text('Mohamed Salah',style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87
                              ),
                              ),

                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text('Lorem Ipsum is simply dummy text of the type setting industry.Lorem Ipsum is simply dummy text of the printing and typesetting.',style: TextStyle(
                          color: Colors.black54,
                          fontSize: 17

                      ),)
                    ],
                  ),



                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Yesterday',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
              ),),
              const SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage('Assets/Images/Man.png'),
                            radius: 35,
                          ),
                          const SizedBox(
                            width: 15,

                          ),
                          Column(
                            children: const [

                              Text('Mohamed Salah',style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87
                              ),
                              ),

                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text('Lorem Ipsum is simply dummy text of the type setting industry.Lorem Ipsum is simply dummy text of the printing and typesetting.',style: TextStyle(
                          color: Colors.black54,
                          fontSize: 17

                      ),)
                    ],
                  ),



                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage('Assets/Images/Man.png'),
                            radius: 35,
                          ),
                          const SizedBox(
                            width: 15,

                          ),
                          Column(
                            children: const [

                              Text('Mohamed Salah',style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87
                              ),
                              ),

                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text('Lorem Ipsum is simply dummy text of the type setting industry.Lorem Ipsum is simply dummy text of the printing and typesetting.',style: TextStyle(
                          color: Colors.black54,
                          fontSize: 17

                      ),)
                    ],
                  ),



                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
