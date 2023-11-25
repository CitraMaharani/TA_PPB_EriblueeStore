import 'package:eribluee_store/constants/assets_path.dart';
import 'package:eribluee_store/constants/size.dart';
import 'package:eribluee_store/module/controller/app_controller.dart';
import 'package:eribluee_store/widgets/action_icon.dart';
import 'package:eribluee_store/widgets/custom_app_bar.dart';
import 'package:eribluee_store/widgets/search_delegate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/category_tab.dart';
import 'components/category_tab_items.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController appCtrl = Get.find();
    return Column(children: [
      AppBarCard(
        //color: Color(0x34d32533),
        childWidget: Row(
          children: [
            Text(
              "Category",
              style: TextStyle(
                fontSize: getTextSize(18),
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Spacer(),
            ActionIcon(
                icon: searchIcon,
                press: () =>
                    showSearch(context: context, delegate: CustomSearch())),
            getHorizontalSpace(15),
            ActionIcon(
                icon: cartIcon,
                visible: true,
                press: () {
                  appCtrl.changePage(2);
                }),
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            CategoryTabs(),
            CategoryTabItems(),
          ],
        ),
      )
    ]);
  }
}
