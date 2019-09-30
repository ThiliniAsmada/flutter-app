import 'package:flutter/material.dart';
import 'package:tt/models/ModelAdmin.dart';
import 'package:tt/utils/uidata.dart';

class MenuViewModelAdmin {
  List<MenuAdmin> menuItemsAdmin;

  MenuViewModelAdmin({this.menuItemsAdmin});

  getMenuItems() {
    return menuItemsAdmin = <MenuAdmin>[
      MenuAdmin(
          title: "Add guide",
          menuColor: Color(0xff050505),
          icon: Icons.person,
          image: UIData.profileImage,
          items:UIData.GuideRequest
      ),
      MenuAdmin(
          title: "View Guide",
          menuColor: Color(0xffc8c4bd),
          icon: Icons.assignment_turned_in,
          image: UIData.shoppingImage,
          items:UIData.ViewGuide
      ),
      MenuAdmin(
          title: "View Tourist",
          menuColor: Color(0xffc7d8f4),
          icon: Icons.contact_phone,
          image: UIData.contactAdmin,
          items:UIData.ViewTourist
      ),
      MenuAdmin(
          title: "Settings",
          menuColor: Color(0xff261d33),
          icon: Icons.dashboard,
          image: UIData.photos,
          items:UIData.Settings
      ),
      MenuAdmin(
          title: "Inquiry",
          menuColor: Color(0xffe19b6b),
          icon: Icons.photo,
          image: UIData.blankImage,
          items:UIData.ViewInquiry
      ),
      MenuAdmin(
          title: "Payment History",
          menuColor: Color(0xffddcec2),
          icon: Icons.payment,
          image: UIData.paymentImage,
          items:UIData.AdminPaymentHistory
      ),
    ];
  }
}