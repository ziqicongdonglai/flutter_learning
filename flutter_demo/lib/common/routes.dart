import 'package:flutter/material.dart';
import 'package:flutter_demo/bottom/index.dart';
import 'package:flutter_demo/sample/plant_shop.dart';
import 'package:flutter_demo/sample/timeline_page.dart';
import 'package:flutter_demo/widget/stateful/animatedbuilder_widget.dart';
import 'package:flutter_demo/widget/stateful/animatedcontainer_widget.dart';
import 'package:flutter_demo/widget/stateful/animatedeffect_widget.dart';
import 'package:flutter_demo/widget/stateful/animatedlist_widget.dart';
import 'package:flutter_demo/widget/stateful/animatedswitcher_widget.dart';
import 'package:flutter_demo/widget/stateful/bottomsheet_widget.dart';
import 'package:flutter_demo/widget/stateful/checkboxradio_widget.dart';
import 'package:flutter_demo/widget/stateful/draggable_widget.dart';
import 'package:flutter_demo/widget/stateful/expansion_widget.dart';
import 'package:flutter_demo/widget/stateful/form_widget.dart';
import 'package:flutter_demo/widget/stateful/futurebuilder_widget.dart';
import 'package:flutter_demo/widget/stateful/hero_widget.dart';
import 'package:flutter_demo/widget/stateful/image_widget.dart';
import 'package:flutter_demo/widget/stateful/ink_widget.dart';
import 'package:flutter_demo/widget/stateful/listwheelscrollview_widget.dart';
import 'package:flutter_demo/widget/stateful/material_widget.dart';
import 'package:flutter_demo/widget/stateful/materialapp_widget.dart';
import 'package:flutter_demo/widget/stateful/overlay_widget.dart';
import 'package:flutter_demo/widget/stateful/pageviewcontrol.dart';
import 'package:flutter_demo/widget/stateful/progressindicator_widget.dart';
import 'package:flutter_demo/widget/stateful/rangeslider_widget.dart';
import 'package:flutter_demo/widget/stateful/refreshindicator_widget.dart';
import 'package:flutter_demo/widget/stateful/reorderablelistview_widget.dart';
import 'package:flutter_demo/widget/stateful/scaffold_widget.dart';
import 'package:flutter_demo/widget/stateful/selectabletext_widget.dart';
import 'package:flutter_demo/widget/stateful/slider_widget.dart';
import 'package:flutter_demo/widget/stateful/sliverappbar_widget.dart';
import 'package:flutter_demo/widget/stateful/snackbar_widget.dart';
import 'package:flutter_demo/widget/stateful/stepper_widget.dart';
import 'package:flutter_demo/widget/stateful/textfield_widget.dart';
import 'package:flutter_demo/widget/stateful/transitioneffect_widget.dart';
import 'package:flutter_demo/widget/stateful/valuelistenablebuilder_widget.dart';
import 'package:flutter_demo/widget/stateful/willpopscope_widget.dart';
import 'package:flutter_demo/widget/stateless/aboutdialog_widget.dart';
import 'package:flutter_demo/widget/stateless/aboutlisttile_widget.dart';
import 'package:flutter_demo/widget/stateless/actionchip_widget.dart';
import 'package:flutter_demo/widget/stateless/alertdialog_widget.dart';
import 'package:flutter_demo/widget/stateless/button_widget.dart';
import 'package:flutter_demo/widget/stateless/card_widget.dart';
import 'package:flutter_demo/widget/stateless/checkboxlisttile_widget.dart';
import 'package:flutter_demo/widget/stateless/chip_widget.dart';
import 'package:flutter_demo/widget/stateless/choice_widget.dart';
import 'package:flutter_demo/widget/stateless/circleavatar_widget.dart';
import 'package:flutter_demo/widget/stateless/container_widget.dart';
import 'package:flutter_demo/widget/stateless/cupertino_widget.dart';
import 'package:flutter_demo/widget/stateless/daypicker_widget.dart';
import 'package:flutter_demo/widget/stateless/dialog_widget.dart';
import 'package:flutter_demo/widget/stateless/divider_widget.dart';
import 'package:flutter_demo/widget/stateless/filterchip_widget.dart';
import 'package:flutter_demo/widget/stateless/gesturedetector_widget.dart';
import 'package:flutter_demo/widget/stateless/gridtile_widget.dart';
import 'package:flutter_demo/widget/stateless/gridview_widget.dart';
import 'package:flutter_demo/widget/stateless/icon_widget.dart';
import 'package:flutter_demo/widget/stateless/inputchip_widget.dart';
import 'package:flutter_demo/widget/stateless/listtile_widget.dart';
import 'package:flutter_demo/widget/stateless/listview_widget.dart';
import 'package:flutter_demo/widget/stateless/materialbanner_widget.dart';
import 'package:flutter_demo/widget/stateless/navigationtoolbar_widget.dart';
import 'package:flutter_demo/widget/stateless/others_widget.dart';
import 'package:flutter_demo/widget/stateless/pageview_widget.dart';
import 'package:flutter_demo/widget/stateless/placeholder_widget.dart';
import 'package:flutter_demo/widget/stateless/radiolisttile_widget.dart';
import 'package:flutter_demo/widget/stateless/safearea_widget.dart';
import 'package:flutter_demo/widget/stateless/simpledialog_widget.dart';
import 'package:flutter_demo/widget/stateless/singlechildscrollview_widget.dart';
import 'package:flutter_demo/widget/stateless/spacer_widget.dart';
import 'package:flutter_demo/widget/stateless/switchlisttile_widget.dart';
import 'package:flutter_demo/widget/stateless/text_widget.dart';
import 'package:flutter_demo/widget/stateless/theme_widget.dart';
import 'package:flutter_demo/widget/stateless/useraccountdrawerheader_widget.dart';
import 'package:flutter_demo/widget/stateless/visibility_widget.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/index': (context) => const Index(),
  // 无状态组件导航
  '/container': (context) => const ContainerWidget(),
  '/text': (context) => const TextWidget(),
  '/listview': (context) => const ListViewWidget(),
  '/gridview': (context) => const GridViewWidget(),
  '/singlechildscrollview': (context) => const SingleChildScrollViewWidget(),
  '/pageview': (context) => const PageViewWidget(),
  '/pageviewcontrol': (context) => const PageViewControl(),
  '/circleavatar': (context) => const CircleAvatarWidget(),
  '/chip': (context) => const ChipWidget(),
  '/inputchip': (context) => const InputChipWidget(),
  '/filterchip': (context) => const FilterChipWidget(),
  '/choicechip': (context) => const ChoiceChipWidget(),
  '/actionchip': (context) => const ActionChipWidget(),
  '/theme': (context) => const ThemeWidget(),
  '/gesturedetector': (context) => const GestureDetectorWidget(),
  '/useraccountdrawerheader': (context) =>
      const UserAccountDrawerHeaderWidget(),
  '/button': (context) => const ButtonWidget(),
  '/card': (context) => const CardWidget(),
  '/visibility': (context) => const VisibilityWidget(),
  '/listtile': (context) => const ListTileWidget(),
  '/checkboxlisttile': (context) => const CheckboxListTileWidget(),
  '/switchlisttile': (context) => const SwitchListTileWidget(),
  '/radiolisttile': (context) => const RadioListTileWidget(),
  '/gridtile': (context) => const GridTileWidget(),
  '/aboutlisttile': (context) => const AboutListTileWidget(),
  '/spacer': (context) => const SpacerWidget(),
  '/alertdialog': (context) => const AlertDialogWidget(),
  '/dialog': (context) => const DialogWidget(),
  '/aboutdialog': (context) => const AboutDialogWidget(),
  '/simpledialog': (context) => const SimpleDialogWidget(),
  '/daypicker': (context) => const DayPickerWidget(),
  '/safearea': (context) => const SafeAreaWidget(),
  '/materialbanner': (context) => const MaterialBannerWidget(),
  '/navigationtoolbar': (context) => const NavigationToolbarWidget(),
  '/placeholder': (context) => const PlaceholderWidget(),
  '/icon': (context) => const IconWidget(),
  '/divider': (context) => const DividerWidget(),
  '/others': (context) => const OthersWidget(),
  '/cupertino': (context) => const CupertinoWidget(),
  // 有状态组件导航
  '/image': (context) => const ImageWidget(),
  '/sliverappbar': (context) => const SliverAppBarWidget(),
  '/animatedcontainer': (context) => const AnimatedContainerWidget(),
  '/animatedbuilder': (context) => const AnimatedBuilderWidget(),
  '/animatedlist': (context) => const AnimatedListWidget(),
  '/animatedswitcher': (context) => const AnimatedSwitcherWidget(),
  '/animatedeffect': (context) => const AnimatedEffectWidget(),
  '/transitioneffect': (context) => const TransitionEffectWidget(),
  '/material': (context) => const MaterialWidget(),
  '/materialapp': (context) => const MaterialAppWidget(),
  '/willpopscope': (context) => const WillPopScopeWidget(),
  '/hero': (context) => const HeroWidget(),
  '/futurebuilder': (context) => const FutureBuilderWidget(),
  '/overlay': (context) => const OverlayWidget(),
  '/stepper': (context) => const StepperWidget(),
  '/checkboxradio': (context) => const CheckboxRadioWidget(),
  '/slider': (context) => const SliderWidget(),
  '/rangeslider': (context) => const RangeSliderWidget(),
  '/snackBar': (context) => const SnackBarWidget(),
  '/refreshindicator': (context) => const RefreshIndicatorWidget(),
  '/draggable': (context) => const DraggableWidget(),
  '/bottomsheet': (context) => const BottomSheetWidget(),
  '/reorderablelistview': (context) => const ReorderableListViewWidget(),
  '/listwheelscrollview': (context) => const ListWheelScrollViewWidget(),
  '/form': (context) => const FormWidget(),
  '/textfield': (context) => const TextFieldWidget(),
  '/expansion': (context) => const ExpansionWidget(),
  '/valuelistenablebuilder': (context) => const ValueListenableBuilderWidget(),
  '/scaffoldwidget': (context) => const ScaffoldWidget(),
  '/inkwidget': (context) => const InkWidget(),
  '/progressindicator': (context) => const ProgressIndicatorWidget(),
  '/selectabletext': (context) => const SelectableTextWidget(),
  // 示例导航
  '/plant-shop': (context) => const PlantShop(),
  '/timeline': (context) => const TimelinePage(),
};
