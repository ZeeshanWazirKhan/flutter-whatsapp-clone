import 'package:flutter/material.dart';
import 'dart:math' as math;

class CallsTab extends StatelessWidget {
  List<dynamic> listOfStories = [
    {'name': 'Zeeshan Ali', 'imgPath': 'pic5.jpeg', 'time': 'Today, 11:52 am'},
    {'name': 'Yameen', 'imgPath': 'pic3.jpg', 'time': '1 minute ago'},
    {'name': 'Talha', 'imgPath': 'pic7.jpeg', 'time': '2 days ago'},
    {'name': 'Yasir', 'imgPath': 'pic4.jpg', 'time': 'Today, 09:43 pm'},
    {'name': 'Usman', 'imgPath': 'pic3.jpg', 'time': '20 minutes ago'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21, vertical: 11),
                child: SizedBox(
                  height: 71,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff128c7e)),
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff128c7e)),
                                child: Transform.rotate(
                                  angle: -51 * math.pi / 180,
                                  child: Icon(Icons.link,
                                      color: Colors.white, size: 24),
                                ),
                              )),
                          SizedBox(
                            width: 11,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Create Call Link',
                                  style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(
                                height: 3,
                              ),
                              Text('Share a link for your WhatsApp call',
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 13))
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              callsListBlock('Recent', listOfStories.length)
            ],
          ),
        ));
  }

  Widget callsListBlock(title, number) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 21).copyWith(top: 11),
          child: Text(title,
              style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 13.7,
                  fontWeight: FontWeight.w500)),
        ),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: number,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 21, vertical: 11),
                child: SizedBox(
                  height: 56.1,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/${listOfStories[index]['imgPath']}',
                                height: 48,
                                width: 48,
                                fit: BoxFit.cover,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(listOfStories[index]['name'],
                                  style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontSize: 16.5,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  Transform.rotate(
                                    angle: index.isEven
                                        ? -50 * math.pi / 180
                                        : 140 * math.pi / 180,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 15.1,
                                      color: index.isEven
                                          ? Colors.green
                                          : Colors.red.shade700,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(listOfStories[index]['time'],
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 13.1)),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Icon(Icons.phone, size: 21, color: Color(0xff128c7e)),
                    ],
                  ),
                ),
              );
            }),
      ],
    );
  }
}
