import 'package:flutter/material.dart';
import 'package:master_class/constants/color_constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 14.0,
            ),
            child: Column(
              children: [
                header(),
                subHeader(),
                exploreSection(context),
                categorySection(context),
                careerSection(context),
                registerSection(context),
                bundleSection(context),
                studentReview(context),
              ]
            ) 
          ),
        ) 
      )
    );
  }

  Widget header () {
    return (

      Padding(
        padding: EdgeInsets.only(
          top: 5.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                boxShadow: [
                  BoxShadow(
                    color: offBlackColor.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Image(
                image: AssetImage('assets/icons/hamburger_menu.png')
              )
            ),
            Text(
              'HELLO, RIA.',
              style: TextStyle(
                color: whiteColor,
                fontSize: 24,
                fontFamily: 'LemonMilk',
                fontWeight: FontWeight.bold
              ),
            ),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                boxShadow: [
                  BoxShadow(
                    color: offBlackColor.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Image(
                image: AssetImage('assets/icons/cart_icon.png')
              )
            ),
          ],
        )
      )
    );
  }

  Widget subHeader() {
    return(
      Padding(
        padding: EdgeInsets.only(top:5),
        child: Text(
          'What would you like to learn today?',
          style: TextStyle(
            color: greyColor,
            fontSize: 12,
            fontFamily: 'LemonMilklight',
            letterSpacing: 0.6
          ),
        )
      )
    );
  }

  Widget exploreSection(BuildContext context) {
    return (
      Padding(
        padding: EdgeInsets.only(
          top: 20.0,
          bottom: 20.0
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: 10.0,
            ),
            child: Text(
                'EXPLORE whiz COURSES',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 16,
                  fontFamily: 'LemonMilk',
                  letterSpacing: 0.6
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 260.0,
                viewportFraction: 0.9,
                reverse: false,
                initialPage: 0,
                enableInfiniteScroll: false,
              ),
              items: [1,2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    if(i==2) {
                      return Padding(
                        padding: EdgeInsets.only(
                          right: 30
                        ),
                        child: exploreTile(
                          "Rohit & rahul", 
                          "4.5/5", 
                          "Fashion Designing",
                          AssetImage('assets/images/image2.jpg'),
                        )
                      );
                    }
                    return Padding(
                      padding: EdgeInsets.only(
                        right: 30
                      ),
                      child: exploreTile(
                        "PRIYANK SUKHIJA", 
                        "4.7/5", 
                        "Create Your Restaurant Empire.",
                        AssetImage('assets/images/image1.jpg'),
                      )
                    );
                  },
                );
              }).toList(),
            ),
          ],
        )
      )
    );
  }

  Widget exploreTile(String name, String rating, String description, AssetImage image) {
    return (
      Container(
        decoration: BoxDecoration( 
          borderRadius: BorderRadius.circular(8.0),
          color: veryLightGreyColor 
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children:[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),  
                  ),
                  child: Image(
                    height: 182,
                    width: 280,
                    image: image,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 22,
                    width: 66,
                    decoration: BoxDecoration(
                      color: yellowColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      )
                    ),
                    child: Text(
                      'New',
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 12,
                        fontFamily: 'LemonMilk',
                        letterSpacing: 0.6
                      ),
                    ),
                  )
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15,
                left: 5,
                right: 5
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [ 
                  Container(
                    child: Text(
                      name,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontFamily: 'LemonMilklight',
                        letterSpacing: 0.6
                      ),
                    )
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20.0,
                      ),
                      Container(
                        child: Text(
                          rating,
                          style: TextStyle(
                            color: greyColor,
                            fontSize: 14,
                            fontFamily: 'LemonMilklight',
                            letterSpacing: 0.6
                          ),
                        ),
                      ),
                    ],
                  ),
                ]
              ),
            ),
            SizedBox(
              height: 5
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 5,
                    right: 5
                  ),
                  child: Text(
                    description,
                    style: TextStyle(
                      color: greyColor,
                      fontSize: 13,
                      fontFamily: 'LemonMilklight',
                      letterSpacing: 0.6
                    ),
                  )
                )
              ]
            )
          ],
        ),
      )
    );
  }

  Widget categorySection(BuildContext context) {
    return (
      Padding(
        padding: EdgeInsets.only(
          top: 20.0,
          bottom: 10.0
        ),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [ 
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'EXPLORE whiz categories',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontFamily: 'LemonMilk',
                          letterSpacing: 0.6
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'View All',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 12,
                          fontFamily: 'LemonMilklight',
                          letterSpacing: 0.6
                        ),
                      ),
                    ],
                  ),
                ),
              ]
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 210.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  categoryTile(
                    "CULINARY ARTS", 
                    Image.asset('assets/images/category_img1.jpg'),
                    context
                  ),
                  categoryTile(
                    "FASHION STYLING", 
                    Image.asset('assets/images/category_img2.jpg'),
                    context
                  ),
                ],
              ),
            )
          ]
        )
      )
    );
  }

  Widget categoryTile (String title, Image image, BuildContext context) {
    return (
      Padding(
        padding: EdgeInsets.only(
          right: 20
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .70,
                  height: 170,
                  child: FittedBox(
                    child: image,
                    fit: BoxFit.fill,
                  )
                ),
                InkResponse(
                  onTap: (){},
                  child: new Container(
                    width: 50,
                    height: 50,
                    decoration: new BoxDecoration(
                      color: blackColor.withOpacity(0.7),
                      shape: BoxShape.circle,
                    ),
                    child: Image(
                      image: AssetImage('assets/icons/play_btn.png')
                    )
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 14,
                  fontFamily: 'LemonMilklight',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              )
            )
          ],
        )
      )
    );
  }

  Widget careerSection(BuildContext context) {
    return (
      Padding(
        padding: EdgeInsets.only(
          top: 5,
          bottom: 20,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [ 
            Container(
              width: MediaQuery.of(context).size.width * .90,
              height: 230,
              child: FittedBox(
                child: Image(
                  image: AssetImage('assets/images/wlpad_banner.jpg')
                ),
                fit: BoxFit.fill,
              )
            ),
            Column(
              children: [
                Text(
                  'GET ACCESS TO',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 16,
                    fontFamily: 'LemonMilklight',
                    letterSpacing: 0.6
                  ),
                ),
                Text(
                  'WHIZ LAUNCH PAD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 40,
                    fontFamily: 'LemonMilklight',
                    letterSpacing: 0.6
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: InkResponse(
                    onTap: (){},
                    child: new Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 30,
                      decoration: new BoxDecoration(
                        color: yellowColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'LAUNCH YOUR CAREER NOW',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 12,
                          fontFamily: 'LemonMilklight',
                          letterSpacing: 0.6
                        ),
                      )
                    ),
                  ),
                )
              ]
            )
          ]
        )
      )
    );
  }

  Widget registerSection(BuildContext context) {
    return (
      Padding(
        padding: EdgeInsets.only(
          top: 10.0,
          bottom: 20.0
        ),
        child: Column (
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'STEPS TO REGISTER',
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 16,
                      fontFamily: 'LemonMilk',
                      letterSpacing: 0.6
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 210.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  registerTile(
                    "REGSITER", 
                    "Register to launch your career with Whiz Launch Pad",
                    Image.asset('assets/icons/register_icon.png'),
                    context
                  ),
                  registerTile(
                    "SUBMISSION", 
                    "Submit your assignment or audition as per the details of the Whiz Launchpad task",
                    Image.asset('assets/icons/register_icon.png'),
                    context
                  ),
                ],
              ),
            )
          ]
        )
      )
    );
  }

  Widget registerTile(String title, String subTitle, Image image, BuildContext context) {
    return (
      Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * .70,
              height: 200,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: greyColor.withOpacity(0.1),
                    spreadRadius: 7,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30
                    ),
                    Image(
                      image: AssetImage('assets/icons/register_icon.png')
                    ),
                    SizedBox(
                      height: 5 
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        color: yellowColor,
                        fontSize: 16,
                        fontFamily: 'LemonMilklight',
                        letterSpacing: 0.6
                      ),
                    ),
                    SizedBox(
                      height: 10 
                    ),
                    Text(
                      subTitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 14,
                        fontFamily: 'LemonMilklight',
                        letterSpacing: 0.6
                      ),
                    ),
                  ]
                )
              )
            )
          ),
          Container(
            height: 20,
            width: MediaQuery.of(context).size.width * .70,
            decoration: BoxDecoration(
              color: yellowColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              )
            ),
          )
        ],
      )
    );
  }

  Widget bundleSection(BuildContext context) {
    return (
      Padding(
        padding: EdgeInsets.only(
          top: 5.0,
          bottom: 10.0
        ),
        child: Column (
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [ 
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'WHIZ BUNDLES',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontFamily: 'LemonMilk',
                          letterSpacing: 0.6
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'View All',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 12,
                          fontFamily: 'LemonMilklight',
                          letterSpacing: 0.6
                        ),
                      ),
                    ],
                  ),
                ),
              ]
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 430.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  bundleTile(
                    "PRIYANK SUKHIJA & RESTAURANT EXPERTS",
                    "Complete Restaurant Guide",
                    "₹5500",
                    "₹7500",
                    "Buy now and save 20%",
                    Image.asset('assets/images/bundleimg_1.jpg'),
                    context
                  ),
                  bundleTile(
                    "RAHUL ROHIT & DESIGN EXPERTS", 
                    "Complete Fashion Guide",
                    "₹8500",
                    "₹9500",
                    "Buy now and save 10%",
                    Image.asset('assets/images/bundleimg_2.jpg'),
                    context
                  ),
                ],
              ),
            )
          ]
        )
      )
    );
  }

  Widget bundleTile (String title, String subTitle, String price, String actualPrice, String discount, Image image, BuildContext context) {
    return (
      Padding(
        padding: EdgeInsets.only(
          right: 20
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * .70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .70,
                height: 220,
                child: FittedBox(
                  child: image,
                  fit: BoxFit.fill,
                )
              ),
              SizedBox(
                height: 15
              ),
              Text(
                title,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 16,
                  fontFamily: 'LemonMilklight',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.6
                ),
              ),
              SizedBox(
                height: 10
              ),
              Text(
                subTitle,
                style: TextStyle(
                  color: greyColor,
                  fontSize: 14,
                  fontFamily: 'LemonMilklight',
                  letterSpacing: 0.6
                ),
              ),
              SizedBox(
                height: 10
              ),
              Row(
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 24,
                      fontFamily: 'LemonMilklight',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.6
                    ),
                  ),
                  SizedBox(
                    width: 5
                  ),
                  Text(
                    actualPrice,
                    style: TextStyle(
                      color: greyColor,
                      fontSize: 16,
                      fontFamily: 'LemonMilklight',
                      letterSpacing: 0.6,
                      decoration: TextDecoration.lineThrough
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5
              ),
              Text(
                discount,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 12,
                  fontFamily: 'LemonMilklight',
                  letterSpacing: 0.6
                ),
              ),
              SizedBox(
                height: 30
              ),
              InkResponse(
                onTap: (){},
                child: new Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 30,
                  decoration: new BoxDecoration(
                    color: yellowColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 12,
                      fontFamily: 'LemonMilk',
                      letterSpacing: 0.6
                    ),
                  )
                ),
              ),
            ],
          )
        )
      )
    );
  }

  Widget studentReview(BuildContext context) {
    return (
      Padding(
        padding: EdgeInsets.only(
          top: 5.0,
          bottom: 10.0
        ),
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    'STUDENT REVIEWS',
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 16,
                      fontFamily: 'LemonMilk',
                      letterSpacing: 0.6
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 300.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    reviewTile(
                      "Shivraj Singh Dhakkad",
                      "02/11/2020",
                      "Really liked everything about it, even the exercises are quite helpful and informative",
                      AssetImage('assets/images/student_1.jpg'),
                      context
                    ),
                    reviewTile(
                      "Harshita Negi", 
                      "02/11/2020",
                      "Whiz League teaches us how to live–with passion, grit, and with a process that makes our life journeys something to savor instead.",
                      AssetImage('assets/images/student_2.jpg'),
                      context
                    ),
                  ],
                ),
              )
            )
          ]
        )
      )
    );
  }

  Widget reviewTile(String name, String date, String content, AssetImage image, BuildContext context) {
    return(
      Padding(
        padding: EdgeInsets.only(
          bottom: 20,
        ),
        child: Container(
          height: 125,
          width: MediaQuery.of(context).size.width * .70,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
            boxShadow: [
              BoxShadow(
                color: greyColor.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15
                ),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(18.0),
                        child: Image(
                          image: image
                        ),
                      )
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          name,
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 12,
                            fontFamily: 'LemonMilklight',
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.6
                          ),
                        ),
                        SizedBox(
                          height: 5
                        ),
                        Text(
                          date,
                          style: TextStyle(
                            color: greyColor,
                            fontSize: 12,
                            fontFamily: 'LemonMilklight',
                            letterSpacing: 0.6
                          ),
                        ),
                      ]
                    )
                  ], 
                ),
                SizedBox(
                  height: 15
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Text(
                    content,
                    style: TextStyle(
                      color: greyColor,
                      fontSize: 12,
                      fontFamily: 'LemonMilklight',
                      letterSpacing: 0.6
                    ),
                  ),
                )
              ],
            )
          )
        )
      )
    );
  }
}
