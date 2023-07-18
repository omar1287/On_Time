import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:on_time/Modules/Home_Screen/Cubit/HomeCubit.dart';
import 'package:on_time/Modules/Home_Screen/Cubit/HomeState.dart';
import 'package:on_time/Modules/Layout/Bloc_Layout/Bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeCubit()),
        BlocProvider(create: (context) => LayerBloc())
      ],
      child: BlocConsumer<HomeCubit, HomeState>(
          builder: (context, state) {
            return Scaffold(
                body: Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Attendance',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black87),
                                ),
                                Spacer(),
                                Text(
                                  'Sun 20 June ',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black87),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              '08: 50:05 AM',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black87),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: const [
                                Image(
                                  image: AssetImage('Assets/Images/Sun.png'),
                                  height: 25,
                                  width: 25,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    'Good Morning Ahmed, You Haven’t Check in yet. Have a good day',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black87),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Center(
                              child: SizedBox(
                                width: double.infinity,
                                height: 55,
                                child: ElevatedButton(
                                  onPressed: () {
                                    HomeCubit.get(context).changeColor();
                                    if (HomeCubit.get(context).checkOutDate &&
                                        HomeCubit.get(context).count <= 2) {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (context) => Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Confirm Check Out',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18,
                                                      color: Colors.black87),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                const Text(
                                                  'Today total',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12,
                                                      color: Colors.grey),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Text(
                                                  '08:00:00 hrs',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18,
                                                      color: Colors.black87),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Text(
                                                  'Overtime',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12,
                                                      color: Colors.grey),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Text(
                                                  'N/A',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18,
                                                      color: Colors.black87),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Text(
                                                  'Add notes (optional)',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12,
                                                      color: Colors.grey),
                                                ),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                Container(
                                                  color: Colors.grey[200],
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          const EdgeInsets
                                                                  .symmetric(
                                                              vertical: 60.0,
                                                              horizontal: 10.0),
                                                      hintText:
                                                          'Please add your note',
                                                      hintStyle:
                                                          const TextStyle(
                                                              fontSize: 16,
                                                              color:
                                                                  Colors.grey),

                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          color: Colors.white,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                      ),
                                                      //when i see field

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          color: Colors.white,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                      ), //when i click on fields
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                                backgroundColor:
                                                                    HexColor(
                                                                        '#034488')),
                                                        child: const Text(
                                                            'Cancel'),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Expanded(
                                                      child: ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                                backgroundColor:
                                                                    HexColor(
                                                                        '#034488')),
                                                        child: const Text(
                                                            'confirm'),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: (HomeCubit.get(context)
                                              .changeColorButtonChick)
                                          ? HexColor('#034488')
                                          : HexColor('#D80027')),
                                  child: (HomeCubit.get(context)
                                          .changeColorButtonChick)
                                      ? const Text(
                                          'Check in',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        )
                                      : const Text(
                                          'Check out',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            if (HomeCubit.get(context).checkInDate)
                              Row(
                                children: [
                                  const Icon(Icons.input_sharp),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  const Text(
                                    "Check In",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                  ),
                                  const Spacer(),
                                  Text(
                                      '${HomeCubit.get(context).date?.hour}:${HomeCubit.get(context).date?.minute} '),
                                ],
                              ),
                            const SizedBox(
                              height: 10,
                            ),
                            if (HomeCubit.get(context).checkOutDate)
                              Row(
                                children: [
                                  const Icon(Icons.output),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  const Text(
                                    "Check out",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Text(
                                          ' ${HomeCubit.get(context).date2?.hour}:${HomeCubit.get(context).date2?.minute} '),
                                      // if(HomeCubit.get(context).checkInDate && HomeCubit.get(context).checkOutDate)
                                    ],
                                  )
                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 110,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(
                                      color: HexColor('#034488'), width: 0.8)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            'Assets/Images/Date.png'),
                                        height: 85,
                                        width: 80,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Attendance',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: HexColor('#034488')),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            height: 110,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(
                                      color: HexColor('#034488'), width: 0.8)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            'Assets/Images/Task.png'),
                                        height: 85,
                                        width: 80,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Task',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: HexColor('#034488')),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            height: 110,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(
                                      color: HexColor('#034488'), width: 0.8)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            'Assets/Images/People.png'),
                                        height: 85,
                                        width: 80,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Sessions',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: HexColor('#034488')),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Task Progress',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
                                        color: HexColor('#034488'), width: 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: const [
                                            Text(
                                              'Website Development',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Colors.black87),
                                            ),
                                            Spacer(),
                                            CircleAvatar(
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
                                          children: [
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
                                              width: 10,
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
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
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
                                          height: 20,
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
                                              percent: 0.5,
                                              progressColor:
                                                  HexColor('#034488'),
                                              barRadius:
                                                  const Radius.circular(20),
                                            ),
                                            const Spacer(),
                                            Text(
                                              '50.0%',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: HexColor('#034488')),
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
                                height: 15,
                              );
                            },
                            itemCount: 3),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Current Schedule',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black87),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Card(
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
                                            'Web Design',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black87),
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
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text(
                                        'Lorem Ipsum is simply dummy text of theprinting and typesetting industry.',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const SizedBox(
                                        height: 12,
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
                                            '11:00 AM',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
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
                                            percent: 0.8,
                                            progressColor: HexColor('#034488'),
                                            barRadius:
                                                const Radius.circular(20),
                                          ),
                                          const Spacer(),
                                          Text(
                                            '80.0%',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: HexColor('#034488')),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                height: 15,
                              );
                            },
                            itemCount: 3),
                      ],
                    ),
                  ],
                ),
              ),
            ));
          },
          listener: (context, state) {}),
    );
  }
}
