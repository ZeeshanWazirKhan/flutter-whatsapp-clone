import 'package:appbar/screens/home/chatsTab/chats_tab.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff128c7e),
            title: Text(
              'Whatsapp',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 21),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  constraints: BoxConstraints(maxWidth: 30),
                  icon: Icon(Icons.search)),
              IconButton(
                  onPressed: () {},
                  constraints: BoxConstraints(maxWidth: 40),
                  icon: Icon(Icons.more_vert))
            ],
            bottom:
                TabBar(isScrollable: true, indicatorColor: Colors.white, tabs: [
              SizedBox(
                width: screenWidth * .02,
                child: Tab(
                    child: Icon(
                  Icons.camera_alt,
                  size: 18,
                )),
              ),
              SizedBox(
                width: screenWidth * .22,
                child: Tab(
                  child: Text(
                    'CHATS',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * .22,
                child: Tab(
                  child: Text(
                    'STATUS',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * .22,
                child: Tab(
                  child: Text(
                    'CALLS',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                ),
              ),
            ]),
          ),
          body: TabBarView(children: [
            Container(),
            ChatsTab(),
            Container(),
            Container(),
          ]),
        ),
      ),
    );
  }
}
