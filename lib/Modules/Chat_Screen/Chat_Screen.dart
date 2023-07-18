import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_time/Modules/Chat_Screen/chat_individual.dart';
import 'package:on_time/Modules/Chat_Screen/model/chat_model.dart';
import 'package:on_time/core/utils/app_styles.dart';

import '../Attendance_Screen/widgets/custom_button.dart';
import '../Task_Screen/details_screen/manager/details_cubit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> titles = [
      ChatModel(
          title: 'Profile Name', desc: 'Lorem Ipsum is simply dummy text o'),
      ChatModel(
          title: 'Profile Name', desc: 'Lorem Ipsum is simply dummy text o'),
      ChatModel(
          title: 'Profile Name', desc: 'Lorem Ipsum is simply dummy text o'),
      ChatModel(
          title: 'Profile Name', desc: 'Lorem Ipsum is simply dummy text o'),
      ChatModel(
          title: 'Profile Name', desc: 'Lorem Ipsum is simply dummy text o'),
    ];
    int currentIndex = 0;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: ContainedTabBarView(
            initialIndex: currentIndex,
            tabBarProperties: TabBarProperties(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              indicator: BoxDecoration(
                color: const Color(
                    0xff034488), // change the color of the selected tab
                borderRadius: BorderRadius.circular(50),
              ),
              labelStyle: const TextStyle(
                fontSize: 16,
              ),
            ),
            tabs: const [
              CustomButton(
                text: 'Individual chats',
              ),
              CustomButton(
                text: 'Group Chat',
              ),
            ],
            views: [
              ListView(
                children: [
                  DetailsCubit().buildSizedBox(16),
                  Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Recent Chats',
                            style: AppStyles.textStyle16,
                          ),
                          Spacer(),
                          Icon(
                            FontAwesomeIcons.search,
                            size: 24,
                            color: Color(0xff292D32),
                          )
                        ],
                      ),
                      DetailsCubit().buildSizedBox(16),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.62.h,
                        child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            itemCount: titles.length,
                            separatorBuilder: (context, index) {
                              return const Divider();
                            },
                            itemBuilder: (context, index) {
                              final item = titles[index].title;
                              return Dismissible(
                                key: Key(item),
                                direction: DismissDirection.endToStart,
                                background: Container(
                                  color: Colors.red,
                                  child: const Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Icon(Icons.delete,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                onDismissed: (direction) {
                                  setState(() {
                                    titles.removeAt(index);
                                  });
                                },
                                child: Card(
                                  child: ListTile(
                                    title: Text(
                                      titles[index].title,
                                      style: AppStyles.textStyle14,
                                    ),
                                    subtitle: Text(
                                      titles[index].desc,
                                      style: AppStyles.textStyle12.copyWith(
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ChatIndividual(),
                                        ),
                                      );
                                    },
                                    trailing: const Text('01:30'),
                                    leading: Stack(
                                      children: [
                                        Image.asset(
                                          'Assets/Images/Man.png',
                                          width: 35,
                                          height: 35,
                                        ),
                                        Positioned(
                                            left: 25,
                                            bottom: 0,
                                            child: Container(
                                              width: 10,
                                              height: 10,
                                              decoration: const ShapeDecoration(
                                                color: Color(0xFF4CE416),
                                                shape: OvalBorder(
                                                  side: BorderSide(
                                                      width: 1,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ],
              ),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number of columns in the grid
                  mainAxisSpacing: 10, // spacing between rows
                  crossAxisSpacing: 10, // spacing between columns
                  childAspectRatio: 0.8, // aspect ratio of each grid item
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 0.50, color: Color(0x66034488)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: GridTile(
                        footer: Container(
                          width: 50.w,
                          height: 58.h,
                          decoration: const BoxDecoration(color: Colors.white),
                          child: const Center(
                            child: Text('Flutter Developer'),
                          ),
                        ),
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // number of columns in the grid
                            mainAxisSpacing: 10, // spacing between rows
                            crossAxisSpacing: 10, // spacing between columns
                            childAspectRatio:
                                0.8, // aspect ratio of each grid item
                          ),
                          itemCount: 4,
                          itemBuilder: (context, index) => Container(
                            width: 102.w,
                            height: 102.w,
                            decoration: const ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage("Assets/Images/Man.png"),
                                fit: BoxFit.fill,
                              ),
                              shape: OvalBorder(
                                side: BorderSide(
                                    width: 0.50, color: Colors.white),
                              ),
                            ),
                          ),
                        )),
                  );
                },
              ),
            ],
            onChange: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
