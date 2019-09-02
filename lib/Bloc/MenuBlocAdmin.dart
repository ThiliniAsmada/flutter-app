import 'dart:async';

import 'package:tt/View Model/MenuViewModelAdmin.dart';
import 'package:tt/models/ModelAdmin.dart';

class MenuBloc {
  final _menuVM = MenuViewModelAdmin();
  final menuController = StreamController<List<MenuAdmin>>();

  Stream<List<MenuAdmin>> get menuItemsAdmin => menuController.stream;

  MenuBloc() {
    menuController.add(_menuVM.getMenuItems());
  }
}
