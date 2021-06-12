import 'package:flutter/material.dart';
import 'package:travelappbwa/colors.dart';
import 'package:travelappbwa/dummy_data.dart';
import 'package:travelappbwa/fonts.dart';
import 'package:travelappbwa/helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var queryData = MediaQueryApp(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserProfile(),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Let’s enjoy your${'\n'}Vacation',
                    style: poppinHeadline,
                  ),
                ),
                Container(
                  child: InputComponent(),
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Popular Countries', style: poppinHeadline2),
                      Text("See All", style: poppinBody),
                    ],
                  ),
                ),
                Container(
                  height: queryData.querySize.width * 0.3 * 1.5,
                  margin: EdgeInsets.only(bottom: 15, top: 5),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: popularCountries.length,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      itemBuilder: (BuildContext context, int index) {
                        var data = popularCountries[index];
                        var cardWidth = queryData.querySize.width * 0.3;
                        return Card(
                          elevation: 3,
                          margin: EdgeInsets.all(5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            width: cardWidth,
                            decoration: BoxDecoration(
                              color: grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  width: cardWidth,
                                  height: cardWidth * 1.1,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://picsum.photos/id/237/100/110'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                  ),
                                ),
                                Expanded(child: Center(child: Text(data.name))),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Ongoing Event', style: poppinHeadline2),
                      Text("See All", style: poppinBody),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.network('https://picsum.photos/id/237/100/100',
                width: 50, height: 50),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello, User.', style: poppinSubhead),
                Text('Good Morning.', style: poppinBody),
              ],
            ),
          ),
          Spacer(flex: 1),
          Icon(
            Icons.notifications_none,
            color: greyText1,
          ),
        ],
      ),
    );
  }
}

class InputComponent extends StatefulWidget {
  const InputComponent({Key? key}) : super(key: key);

  @override
  _InputComponentState createState() => _InputComponentState();
}

class _InputComponentState extends State<InputComponent> {
  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => setState(() {}),
      controller: inputController,
      decoration: InputDecoration(
        hintText: 'Input your country here...',
        prefixIcon: Icon(Icons.search),
        contentPadding: EdgeInsets.symmetric(vertical: 16),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
