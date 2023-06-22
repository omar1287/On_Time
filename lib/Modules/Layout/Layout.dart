import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:on_time/Modules/Layout/Bloc_Layout/Bloc.dart';
import 'package:on_time/Modules/Layout/Bloc_Layout/State.dart';
import 'package:on_time/Modules/Notifications/Notifications.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayerBloc(),
      child: BlocConsumer<LayerBloc, LayoutState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: HexColor('#034488'),
                elevation: 0,
                title: const Center(
                    child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Image(
                    image: AssetImage('Assets/Images/ON_White.png'),
                    width: 120,
                    height: 26,
                  ),
                )),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Notifications()));
                      },
                      icon: const Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                      ))
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white,
                  currentIndex: LayerBloc.get(context).currentIndex,
                  onTap: (index) {
                    LayerBloc.get(context).changeCurrentIndex(index);
                  },
                  backgroundColor: HexColor('#034488'),
                  type: BottomNavigationBarType.fixed,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home_rounded,
                        color: Colors.white,
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.chat_bubble_rounded,
                            color: Colors.white),
                        label: 'Chat'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.task, color: Colors.white),
                        label: 'Task'),
                    BottomNavigationBarItem(
                        icon:
                            Icon(Icons.date_range_rounded, color: Colors.white),
                        label: 'Attendance'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.more_horiz, color: Colors.white),
                        label: 'More'),
                  ]),
              body: LayerBloc.get(context)
                  .screens[LayerBloc.get(context).currentIndex],
            );
          },
          listener: (context, state) {}),
    );
  }
}
