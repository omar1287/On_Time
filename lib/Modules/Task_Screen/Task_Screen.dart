import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:on_time/Modules/Home_Screen/Cubit/HomeCubit.dart';
import 'package:on_time/Modules/Task_Screen/TaskBloc/TaskBloc.dart';
import 'package:on_time/Modules/Task_Screen/TaskBloc/TaskState.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TaskCubit()),
        BlocProvider(create: (context) => HomeCubit())
      ],
      child: BlocConsumer<TaskCubit, TaskState>(
          builder: (context, state) {
            Color buttonColor1 = TaskCubit.get(context).button1
                ? HexColor('#034488')
                : Colors.white;
            Color buttonColor2 = TaskCubit.get(context).button2
                ? HexColor('#034488')
                : Colors.white;

            Color buttonColor3 = TaskCubit.get(context).button3
                ? HexColor('#034488')
                : Colors.white;

            Color buttonColor4 = TaskCubit.get(context).button4
                ? HexColor('#034488')
                : Colors.white;
            Color textColor1 =
                TaskCubit.get(context).button1 ? Colors.white : Colors.black87;
            Color textColor2 =
                TaskCubit.get(context).button2 ? Colors.white : Colors.black87;

            Color textColor3 =
                TaskCubit.get(context).button3 ? Colors.white : Colors.black87;

            Color textColor4 =
                TaskCubit.get(context).button4 ? Colors.white : Colors.black87;

            return Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Sun 08 June",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "You have 03 Tasks today",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: HexColor('#034488')),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      '6',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Fri",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(
                                        width: 0.8,
                                        color: HexColor('#034488'))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      '7',
                                      style: TextStyle(color: Colors.black87),
                                    ),
                                    Text(
                                      "sat",
                                      style: TextStyle(
                                        color: Colors.black87,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(
                                        width: 0.8,
                                        color: HexColor('#034488'))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      '8',
                                      style: TextStyle(color: Colors.black87),
                                    ),
                                    Text(
                                      "sun",
                                      style: TextStyle(
                                        color: Colors.black87,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(
                                        width: 0.8,
                                        color: HexColor('#034488'))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      '9',
                                      style: TextStyle(color: Colors.black87),
                                    ),
                                    Text(
                                      "mon",
                                      style: TextStyle(
                                        color: Colors.black87,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(
                                        width: 0.8,
                                        color: HexColor('#034488'))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      '10',
                                      style: TextStyle(color: Colors.black87),
                                    ),
                                    Text(
                                      "Tue",
                                      style: TextStyle(
                                        color: Colors.black87,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(
                                        width: 0.8,
                                        color: HexColor('#034488'))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      '11',
                                      style: TextStyle(color: Colors.black87),
                                    ),
                                    Text(
                                      "Wed",
                                      style: TextStyle(
                                        color: Colors.black87,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(
                                        width: 0.8,
                                        color: HexColor('#034488'))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      '12',
                                      style: TextStyle(color: Colors.black87),
                                    ),
                                    Text(
                                      "Thu",
                                      style: TextStyle(
                                        color: Colors.black87,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    TaskCubit.get(context).changeColorButton1();
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor1,
                                      shape: const StadiumBorder()),
                                  child: Text(
                                    'All Tasks',
                                    style: TextStyle(color: textColor1),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              SizedBox(
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    TaskCubit.get(context).changeColorButton2();
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor2,
                                      shape: const StadiumBorder()),
                                  child: Text(
                                    'Completed',
                                    style: TextStyle(color: textColor2),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              SizedBox(
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    TaskCubit.get(context).changeColorButton3();
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor3,
                                      shape: const StadiumBorder()),
                                  child: Text(
                                    'Ongoing Tasks',
                                    style: TextStyle(color: textColor3),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              SizedBox(
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    TaskCubit.get(context).changeColorButton4();
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor4,
                                      shape: const StadiumBorder()),
                                  child: Text(
                                    'Upcomig Tasks',
                                    style: TextStyle(color: textColor4),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      if (TaskCubit.get(context).button1)
                        Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  //<-- SEE HERE
                                  side: BorderSide(
                                      color: HexColor('#034488'), width: 1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            'Landing Page',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black87),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: HexColor('#FFAC33')),
                                            height: 35,
                                            width: 80,
                                            child: const Center(
                                              child: Text(
                                                'Design',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          const Spacer(),
                                          const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'Assets/Images/Woman.png'),
                                            radius: 18,
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.watch_later_outlined,
                                            color: Colors.black87,
                                            size: 40,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            '09:00 AM - 11:00 AM',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text(
                                        'Lorem Ipsum is simply dummy text of theprinting and typesetting industry.',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          LinearPercentIndicator(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                150,
                                            animation: true,
                                            lineHeight: 20,
                                            animationDuration: 2500,
                                            percent: 1,
                                            progressColor: Colors.green,
                                            barRadius:
                                                const Radius.circular(20),
                                          ),
                                          const Spacer(),
                                          const Text(
                                            '100.0%',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  //<-- SEE HERE
                                  side: BorderSide(
                                      color: HexColor('#034488'), width: 1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            'Landing Page',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black87),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: HexColor('#FFAC33')),
                                              height: 35,
                                              width: 80,
                                              child: const Center(
                                                child: Text(
                                                  'Design',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Colors.red),
                                              height: 35,
                                              width: 80,
                                              child: const Center(
                                                child: Text(
                                                  'High',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Spacer(),
                                          const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'Assets/Images/Woman.png'),
                                            radius: 18,
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.watch_later_outlined,
                                            color: Colors.black87,
                                            size: 40,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            '09:00 AM - 11:00 AM',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text(
                                        'Lorem Ipsum is simply dummy text of theprinting and typesetting industry.',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          LinearPercentIndicator(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                150,
                                            animation: true,
                                            lineHeight: 20,
                                            animationDuration: 2500,
                                            percent: 1,
                                            progressColor: Colors.green,
                                            barRadius:
                                                const Radius.circular(20),
                                          ),
                                          const Spacer(),
                                          const Text(
                                            '100.0%',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  //<-- SEE HERE
                                  side: BorderSide(
                                      color: HexColor('#034488'), width: 1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            'Landing Page',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black87),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: HexColor('#FFAC33')),
                                            height: 35,
                                            width: 80,
                                            child: const Center(
                                              child: Text(
                                                'Design',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.red),
                                            height: 35,
                                            width: 80,
                                            child: const Center(
                                              child: Text(
                                                'High',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text(
                                        'Lorem Ipsum is simply dummy text of theprinting and typesetting industry.',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        color: Colors.grey,
                                        height: 1,
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.watch_later_outlined,
                                            color: Colors.black87,
                                            size: 40,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            '09:00 AM - 11:00 AM',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.grey),
                                          ),
                                          const Spacer(),
                                          Row(
                                            children: [
                                              Stack(
                                                clipBehavior: Clip.none,
                                                children: const [
                                                  Positioned(
                                                    child: CircleAvatar(
                                                      backgroundImage: AssetImage(
                                                          'Assets/Images/Woman.png'),
                                                      radius: 18,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    right: 20,
                                                    child: CircleAvatar(
                                                      backgroundImage: AssetImage(
                                                          'Assets/Images/Woman.png'),
                                                      radius: 18,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    right: 40,
                                                    child: CircleAvatar(
                                                      backgroundImage: AssetImage(
                                                          'Assets/Images/Woman.png'),
                                                      radius: 18,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    right: 60,
                                                    child: CircleAvatar(
                                                      backgroundImage: AssetImage(
                                                          'Assets/Images/Woman.png'),
                                                      radius: 18,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      if (TaskCubit.get(context).button2)
                        Column(
                          children: [
                            ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {},
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        //<-- SEE HERE
                                        side: BorderSide(
                                            color: HexColor('#034488'),
                                            width: 1),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const Text(
                                                  'Landing Page',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18,
                                                      color: Colors.black87),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color:
                                                          HexColor('#FFAC33')),
                                                  height: 35,
                                                  width: 80,
                                                  child: const Center(
                                                    child: Text(
                                                      'Design',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                                const Spacer(),
                                                const CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      'Assets/Images/Woman.png'),
                                                  radius: 18,
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: const [
                                                Icon(
                                                  Icons.watch_later_outlined,
                                                  color: Colors.black87,
                                                  size: 50,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  '09:00 AM - 11:00 AM',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.grey),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            const Text(
                                              'Lorem Ipsum is simply dummy text of theprinting and typesetting industry.',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                LinearPercentIndicator(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150,
                                                  animation: true,
                                                  lineHeight: 20,
                                                  animationDuration: 2500,
                                                  percent: 1,
                                                  progressColor: Colors.green,
                                                  barRadius:
                                                      const Radius.circular(20),
                                                ),
                                                const Spacer(),
                                                const Text(
                                                  '100.0%',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.green),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(
                                    height: 10,
                                  );
                                },
                                itemCount: 2),
                          ],
                        ),
                      if (TaskCubit.get(context).button3)
                        ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {},
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    //<-- SEE HERE
                                    side: BorderSide(
                                        color: HexColor('#034488'), width: 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              'Landing Page',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Colors.black87),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: HexColor('#FFAC33')),
                                              height: 35,
                                              width: 80,
                                              child: const Center(
                                                child: Text(
                                                  'Design',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Colors.red),
                                              height: 35,
                                              width: 80,
                                              child: const Center(
                                                child: Text(
                                                  'High',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            const Spacer(),
                                            const CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'Assets/Images/Woman.png'),
                                              radius: 18,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.watch_later_outlined,
                                              color: Colors.black87,
                                              size: 40,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '09:00 AM - 11:00 AM',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Text(
                                          'Lorem Ipsum is simply dummy text of theprinting and typesetting industry.',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 15),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            LinearPercentIndicator(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  150,
                                              animation: true,
                                              lineHeight: 20,
                                              animationDuration: 2500,
                                              percent: 1,
                                              progressColor: Colors.green,
                                              barRadius:
                                                  const Radius.circular(20),
                                            ),
                                            const Spacer(),
                                            const Text(
                                              '100.0%',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.green),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                height: 10,
                              );
                            },
                            itemCount: 4),
                      if (TaskCubit.get(context).button4)
                        Column(
                          children: [
                            ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {},
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        //<-- SEE HERE
                                        side: BorderSide(
                                            color: HexColor('#034488'),
                                            width: 1),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const Text(
                                                  'Landing Page',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18,
                                                      color: Colors.black87),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color:
                                                          HexColor('#FFAC33')),
                                                  height: 35,
                                                  width: 80,
                                                  child: const Center(
                                                    child: Text(
                                                      'Design',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.red),
                                                  height: 35,
                                                  width: 80,
                                                  child: const Center(
                                                    child: Text(
                                                      'High',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            const Text(
                                              'Lorem Ipsum is simply dummy text of theprinting and typesetting industry.',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Container(
                                              width: double.infinity,
                                              color: Colors.grey,
                                              height: 1,
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.watch_later_outlined,
                                                  color: Colors.black87,
                                                  size: 40,
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                const Text(
                                                  '09:00 AM - 11:00 AM',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.grey),
                                                ),
                                                const Spacer(),
                                                Row(
                                                  children: [
                                                    Stack(
                                                      clipBehavior: Clip.none,
                                                      children: const [
                                                        Positioned(
                                                          child: CircleAvatar(
                                                            backgroundImage:
                                                                AssetImage(
                                                                    'Assets/Images/Woman.png'),
                                                            radius: 18,
                                                          ),
                                                        ),
                                                        Positioned(
                                                          right: 20,
                                                          child: CircleAvatar(
                                                            backgroundImage:
                                                                AssetImage(
                                                                    'Assets/Images/Woman.png'),
                                                            radius: 18,
                                                          ),
                                                        ),
                                                        Positioned(
                                                          right: 40,
                                                          child: CircleAvatar(
                                                            backgroundImage:
                                                                AssetImage(
                                                                    'Assets/Images/Woman.png'),
                                                            radius: 18,
                                                          ),
                                                        ),
                                                        Positioned(
                                                          right: 60,
                                                          child: CircleAvatar(
                                                            backgroundImage:
                                                                AssetImage(
                                                                    'Assets/Images/Woman.png'),
                                                            radius: 18,
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(
                                    height: 10,
                                  );
                                },
                                itemCount: 2),
                          ],
                        ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          listener: (context, state) {}),
    );
  }
}
