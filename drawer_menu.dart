import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_hub/Core/Custom/container.dart';
import 'package:food_hub/Core/Custom/text.dart';
import 'package:food_hub/Core/Extension/extension.dart';
import 'package:food_hub/Core/Utils/Theme/app_color.dart';
import 'package:food_hub/Core/Utils/app_images.dart';
import 'package:food_hub/Model/drawer_model.dart';
import 'package:food_hub/View/Add%20Adress/add_new_adress.dart';
import 'package:food_hub/View/Auth/loing.dart';
import 'package:food_hub/View/Auth/signup.dart';
import 'package:food_hub/View/Home/Profile/profile.dart';
import 'package:food_hub/View/Home/home_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// ignore: must_be_immutable
class DrawerMenu extends StatelessWidget {
  List sidebar = [
    DrawerModel(
      image: AppImages.My_order,
      title: "My Orders",
      func: (context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignUp()),
      ),
    ),
    DrawerModel(
        image: AppImages.Profile,
        title: "My Profile",
        func: (context) => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            )),
    DrawerModel(
        image: AppImages.Location,
        title: "Delivery Address",
        func: (context) => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewAdress()),
            )),
    DrawerModel(
        image: AppImages.Payment,
        title: "Payment Methods",
        func: (context) => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            )),
    DrawerModel(
        image: AppImages.Cntect,
        title: "Contact Us",
        func: (context) => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            )),
    DrawerModel(
        image: AppImages.Secting,
        title: "Settings",
        func: (context) => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            )),
    DrawerModel(
        image: AppImages.Vector,
        title: "Helps & FAQs",
        func: (context) => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            ))
  ];
  DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 65.w,
      backgroundColor: AppColor.White,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            3.h.height,
            CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                  AppImages.Icon,
                )),
            1.h.height,
            CustomText(
              text: "Farion Wick",
              color: AppColor.Black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              text: "farionwick@gmail.comk",
              color: AppColor.Gray,
              fontSize: 14,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: sidebar.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: SvgPicture.asset(sidebar[index].image),
                    title: CustomText(
                      text: sidebar[index].title,
                      fun: () {
                        sidebar[index].func(context);
                      },
                      color: AppColor.Black,
                      letterSpacing: 1,
                      maxLines: 1,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            ),
            CustomContainer(
              height: 4.h,
              width: 10.h,
              cir: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    AppImages.Log_out,
                    height: 17.sp,
                    width: 17.sp,
                  ),
                  CustomText(
                    text: "Log Out",
                    fontSize: 14,
                    color: AppColor.White,
                  ),
                ],
              ),
              color: AppColor.PrimaryColor,
            ),
            3.h.height,
          ],
        ),
      ),
    );
  }
}
