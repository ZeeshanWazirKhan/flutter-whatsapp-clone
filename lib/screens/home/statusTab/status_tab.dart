import 'package:flutter/material.dart';

class StatusTab extends StatelessWidget {
  List<dynamic> listOfStories = [
    {'name': 'Zeeshan Wazir', 'imgPath': 'pic4.jpg', 'time': 'Today, 12:50 am'},
    {
      'name': 'Yasir Nasir',
      'imgPath': 'pic5.jpeg',
      'time': 'Yesterday, 07:50 pm'
    },
    {'name': 'Awais Ali', 'imgPath': 'pic6.jpeg', 'time': '1 minute ago'},
    {'name': 'Usman Faroqi', 'imgPath': 'pic7.jpeg', 'time': '5 minutes agao'},
    {'name': 'Saqib Jadoon', 'imgPath': 'pic3.jpg', 'time': 'Today, 02:45'},
    {'name': 'Hasan Ali', 'imgPath': 'pic9.jpeg', 'time': 'Yesterday, 09:21'},
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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: SizedBox(
                  height: 70,
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
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    'assets/pic3.jpg',
                                    height: 52,
                                    width: 52,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('My Status',
                                  style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(
                                height: 3,
                              ),
                              Text('Today, 11:31 pm',
                                  style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 12.5))
                            ],
                          )
                        ],
                      ),
                      Icon(Icons.more_horiz, color: Color(0xff128c7e), size: 24)
                    ],
                  ),
                ),
              ),
              statusListBlock('Recent Updates', 5),
              statusListBlock('Muted Updates', 5),
            ],
          ),
        ));
  }

  Widget statusListBlock(title, number) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
          child: Text(title,
              style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 13.5,
                  fontWeight: FontWeight.w500)),
        ),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: number,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff128c7e)),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/${listOfStories[index]['imgPath']}',
                                height: 48,
                                width: 48,
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
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
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                          SizedBox(
                            height: 3,
                          ),
                          Text(listOfStories[index]['time'],
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 12))
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ],
    );
  }
}
