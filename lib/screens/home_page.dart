import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rich_console/printRich.dart';
import 'package:tv_aspeptare/providers/setting_provider/screen_setting_left_provider.dart';
import 'package:tv_aspeptare/screens/settings_screens/setting_screen.dart';

import '../blocs/orders_blocs/order_bloc.dart';
import '../providers/setting_provider/screen_setting_box_left_repository.dart';
import '../providers/setting_provider/screen_setting_box_right_repository.dart';
import '../providers/setting_provider/screen_setting_header_provider.dart';
import '../providers/setting_provider/screen_setting_right_provider.dart';
import '../utils/toast_message.dart';
import 'new_animation_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsHeader = context.watch<ScreenSettingsHeader>();

    return BlocProvider(
      create: (_) => OrderBloc(deleteHours: settingsHeader.deleteHours)
        ..add(HomeStarted()),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatefulWidget {
  const _HomeView({super.key});

  @override
  State<_HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<_HomeView> {

  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  KeyEventResult _handleKeyEvent(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;

    final key = event.logicalKey;
    printRich(key, foreground: Colors.blue);
    // Menu / F10 → настройки
    if (key == LogicalKeyboardKey.select ||
        key == LogicalKeyboardKey.f10) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const SettingsScreen()),
      );
      return KeyEventResult.handled;
    }

    // Back / Escape → перехватываем, не выходим
    if (key == LogicalKeyboardKey.escape ||
        key == LogicalKeyboardKey.goBack) {
      return KeyEventResult.handled;
    }

    return KeyEventResult.ignored;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OrderBloc, OrderState>(
        listener: (context, state){
          if(state is HomeNotActivated){
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (_) => const LicensePage()),
                  (_) => false,
            );
          }
        },
      child: BlocBuilder<OrderBloc, OrderState>(
          builder: (context, state){
            final settingsHeader = context.watch<ScreenSettingsHeader>();
            final settingsLeft = context.watch<ScreenSettingsLeft>();
          //  printRich(settingsLeft, background: Colors.blueAccent);
            // Видеоплеер когда нет заказов
          //  if (settingsHeader.videoPlayer && _isEmpty(state)) {
         //     return const VideoPlayerSequence();
         //   }
            return Focus(
              focusNode: _focusNode,
              autofocus: true,
              onKeyEvent: _handleKeyEvent,
              child: Scaffold(
              //  appBar: _buildAppBar(settingsHeader),
                body: Stack(
                  children: [
                    _buildAnimation(context, state),
                  //  if (state is HomeNoConnection) _buildNoConnectionOverlay(),
                    if (state is HomeLoading) _buildLoadingOverlay(),
                  ],
                ),
              ),
            );

          }),
    );
  }

  bool _isEmpty(OrderState state) {
    if (state is HomeLoaded) {
      return state.ordersListLeft.isEmpty && state.ordersListRight.isEmpty;
    }
    return true;
  }

  Widget _buildAnimation(BuildContext context, OrderState state) {
    final settingsHeader = context.read<ScreenSettingsHeader>();
    final settingsLeft = context.read<ScreenSettingsLeft>();
    final settingsRight = context.read<ScreenSettingsRight>();
    final settingsBoxLeft = context.read<ScreenSettingsBoxLeft>();
    final settingsBoxRight = context.read<ScreenSettingsBoxRight>();

    // Берём списки из состояния (при ошибке — последние известные)
    final left = switch (state) {
      HomeLoaded s => s.ordersListLeft,
      HomeNoConnection s => s.ordersListLeft,
      _ => <dynamic>[],
    };
    final right = switch (state) {
      HomeLoaded s => s.ordersListRight,
      HomeNoConnection s => s.ordersListRight,
      _ => <int>[],
    };

    return  NewAnimation(
        ordersListLeft: left,
        ordersListRight: right,
        settingsLeft: settingsLeft,
        settingsHeader: settingsHeader,
        settingsRight: settingsRight,
        settingsBoxLeft: settingsBoxLeft,
        settingsBoxRight: settingsBoxRight,
        numberRight: 0
    );
  }
//  Widget _buildNoConnectionOverlay() {
//    return Align(
//      alignment: Alignment.topRight,
//      child:  ToastResponseError(context: context, textError: 'toast.netError').showErrorConnect(),
//
//    );
//  }

  Widget _buildLoadingOverlay() {
    return const Center(child: CircularProgressIndicator());
  }

  void _showSettingsDialog(BuildContext context) {
    final settingsLeft = context.read<ScreenSettingsLeft>();
    final settingsRight = context.read<ScreenSettingsRight>();
    final settingsBoxLeft = context.read<ScreenSettingsBoxLeft>();
    final settingsBoxRight = context.read<ScreenSettingsBoxRight>();

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Settings'),
      //  content: const SettingsDialogContent(),
        actions: [
          TextButton(
            onPressed: () {
            //  settingsLeft.updaateDefault();
            //  settingsRight.updateDefault();
            //  settingsBoxLeft.updateDefault();
            //  settingsBoxRight.updateDefault();
            },
            child: const Text('Default'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

}

