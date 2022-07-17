import 'package:flutter/material.dart';
import 'package:flutter_demo/bottom/index.dart';
import 'package:flutter_demo/sample/chat_list.dart';
import 'package:flutter_demo/sample/favorite_list_page.dart';
import 'package:flutter_demo/sample/juejin_list_item.dart';
import 'package:flutter_demo/sample/plant_shop.dart';
import 'package:flutter_demo/sample/single_chat.dart';
import 'package:flutter_demo/sample/timeline_page.dart';
import 'package:flutter_demo/sample/upload_page.dart';
import 'package:flutter_demo/widget/liveaway/all_theme_widget.dart';
import 'package:flutter_demo/widget/liveaway/default_text_style_widget.dart';
import 'package:flutter_demo/widget/liveaway/expanded_widget.dart';
import 'package:flutter_demo/widget/liveaway/flexible_widget.dart';
import 'package:flutter_demo/widget/liveaway/media_query_widget.dart';
import 'package:flutter_demo/widget/liveaway/positioned_widget.dart';
import 'package:flutter_demo/widget/multi/flex_widget.dart';
import 'package:flutter_demo/widget/multi/flow_widget.dart';
import 'package:flutter_demo/widget/multi/indexed_stack_widget.dart';
import 'package:flutter_demo/widget/multi/rich_text_widget.dart';
import 'package:flutter_demo/widget/multi/stack_widget.dart';
import 'package:flutter_demo/widget/multi/wrap_widget.dart';
import 'package:flutter_demo/widget/other/list_wheel_viewport_widget.dart';
import 'package:flutter_demo/widget/other/performance_overlay_widget.dart';
import 'package:flutter_demo/widget/other/table_widget.dart';
import 'package:flutter_demo/widget/single/align_padding_widget.dart';
import 'package:flutter_demo/widget/single/box_widget.dart';
import 'package:flutter_demo/widget/single/clip_widget.dart';
import 'package:flutter_demo/widget/single/color_filter_widget.dart';
import 'package:flutter_demo/widget/single/custom_paint_widget.dart';
import 'package:flutter_demo/widget/single/layout_builder_widget.dart';
import 'package:flutter_demo/widget/single/offstage_widget.dart';
import 'package:flutter_demo/widget/single/opacity_widget.dart';
import 'package:flutter_demo/widget/sliver/custom_scrollview_widget.dart';
import 'package:flutter_demo/widget/sliver/nested_scrollview_widget.dart';
import 'package:flutter_demo/widget/sliver/sliver_animated_list_widget.dart';
import 'package:flutter_demo/widget/sliver/sliver_appbar_widget.dart';
import 'package:flutter_demo/widget/sliver/sliver_fill_remaining_widget.dart';
import 'package:flutter_demo/widget/sliver/sliver_fixed_extent_list_widget.dart';
import 'package:flutter_demo/widget/sliver/sliver_grid_widget.dart';
import 'package:flutter_demo/widget/sliver/sliver_layout_builder_widget.dart';
import 'package:flutter_demo/widget/sliver/sliver_list_widget.dart';
import 'package:flutter_demo/widget/sliver/sliver_padding_widget.dart';
import 'package:flutter_demo/widget/sliver/sliver_persistent_header_widget.dart';
import 'package:flutter_demo/widget/sliver/sliver_to_box_adapter_widget.dart';
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
  '/sliverappbar': (context) => const SliverAppbarWidget(),
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
  '/listwheelscrollview': (context) => const ListWheelScrollviewWidget(),
  '/form': (context) => const FormWidget(),
  '/textfield': (context) => const TextFieldWidget(),
  '/expansion': (context) => const ExpansionWidget(),
  '/valuelistenablebuilder': (context) => const ValueListenableBuilderWidget(),
  '/scaffoldwidget': (context) => const ScaffoldWidget(),
  '/inkwidget': (context) => const InkWidget(),
  '/progressindicator': (context) => const ProgressIndicatorWidget(),
  '/selectabletext': (context) => const SelectableTextWidget(),
  // 单渲染组件导航
  '/clip': (context) => const ClipWidget(),
  '/box': (context) => const BoxWidget(),
  '/align_padding': (context) => const AlignPaddingWidget(),
  '/custom_paint': (context) => const CustomPaintWidget(),
  '/color_filter': (context) => const ColorFilterWidget(),
  '/layout_builder': (context) => const LayoutBuilderWidget(),
  '/offstage': (context) => const OffstageWidget(),
  '/opacity': (context) => const OpacityWidget(),
  // 多渲染组件导航
  '/flex': (context) => FlexWidget(),
  '/stack': (context) => const StackWidget(),
  '/indexed_stack': (context) => const IndexedStackWidget(),
  '/wrap': (context) => WrapWidget(),
  '/flow': (context) => const FlowWidget(),
  '/rich_text': (context) => const RichTextWidget(),
  // 可折叠组件导航
  '/custom_scrollview': (context) => const CustomScrollViewWidget(),
  '/sliver_list': (context) => const SliverListWidget(),
  '/sliver_persistent_header': (context) =>
      const SliverPersistentHeaderWidget(),
  '/sliver_appbar': (context) => const SliverAppBarWidget(),
  '/sliver_grid': (context) => const SliverGridWidget(),
  '/sliver_to_box_adapter': (context) => const SliverToBoxAdapterWidget(),
  '/sliver_layout_builder': (context) => const SliverLayoutBuilderWidget(),
  '/sliver_fill_remaining': (context) => const SliverFillRemainingWidget(),
  '/sliver_fixed_extent_list': (context) => const SliverFixedExtentListWidget(),
  '/sliver_padding': (context) => SliverPaddingWidget(),
  '/sliver_animated_list': (context) => const SliverAnimatedListWidget(),
  '/nested_scrollview': (context) => NestedScrollViewWidget(),
  // 可寄居组件导航
  '/flexible': (context) => const FlexibleWidget(),
  '/expanded': (context) => const ExpandedWidget(),
  '/media_query': (context) => const MediaQueryWidget(),
  '/positioned': (context) => const PositionedWidget(),
  '/default_text_style': (context) => const DefaultTextStyleWidget(),
  '/all_theme': (context) => const AllThemeWidget(),
  // 其他组件导航
  '/table': (context) => const TableWidget(),
  '/list_wheel_viewport': (context) => const ListWheelViewportWidget(),
  '/performance_overlay': (context) => const PerformanceOverlayWidget(),
  // 示例导航
  '/juejin_list_item': (context) => const JueJinListItem(),
  '/single_chat': (context) => const SingleChat(),
  '/chat_list': (context) => const ChatList(),
  '/upload_page': (context) => const UploadPage(),
  '/favorite_page': (context) => const FavoriteListPage(),
  '/plant_shop': (context) => const PlantShop(),
  '/timeline': (context) => const TimelinePage(),
};
