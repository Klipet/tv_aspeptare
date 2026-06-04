import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:tv_aspeptare/blocs/activation_blocs/activation_bloc.dart';
import 'package:tv_aspeptare/screens/home_page.dart';
import 'package:tv_aspeptare/services/activation_api_service.dart';
import 'package:number_pad_keyboard/number_pad_keyboard.dart';
import 'package:tv_aspeptare/utils/toast_message.dart';

class ActivationScreen extends StatelessWidget {
  const ActivationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ActivationBloc(ActivationApi()),
      child: ActivationScreenUI(),
    );
  }
}

class ActivationScreenUI extends StatefulWidget {
  const ActivationScreenUI({super.key});

  @override
  State<ActivationScreenUI> createState() => _ActivationScreenUIState();
}

class _ActivationScreenUIState extends State<ActivationScreenUI> {
  final TextEditingController _controller = TextEditingController();
  String errorText = '';
  bool error = false;
  String code = '';
  bool isHeid = false;
  final defaultPinTheme = PinTheme(
    width: 60.w,
    height: 60.h,
    textStyle: TextStyle(
      fontSize: 20.sp,
      color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(3),
    ),
  );
  final focusPinTheme = PinTheme(
    width: 70.w,
    height: 70.h,
    textStyle: TextStyle(
      fontSize: 20.sp,
      color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(3),
    ),
  );

  final putTheme = PinTheme(
    width: 70.w,
    height: 70.h,
    textStyle: TextStyle(
      fontSize: 25.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    ),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      //      color: questionsGroupColor,
      borderRadius: BorderRadius.circular(3),
    ),
  );

  final errorPinPutTema = PinTheme(
    width: 56.w,
    height: 56.h,
    textStyle: TextStyle(
      fontSize: 25.sp,
      color: Colors.red,
      fontWeight: FontWeight.w700,
    ),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.red),
      //      color: questionsGroupColor,
      borderRadius: BorderRadius.circular(3),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ActivationBloc, ActivationState>(
      listener: (context, state) {
        if (state is ActivationSuccess) {
            Navigator.pushReplacement(
              context,
               MaterialPageRoute(builder: (_) => const HomePage()),
            );
        } else if (state is ActivationError) {
          print("Error: ${state.message}");
          setState(() {
            error = true;
          });
          // _showMesageError(state.message);
            ToastResponseError(
              context: context,
               textError: state.message,
             ).showError();
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15.h),
                  child: SvgPicture.asset(
                    'assets/icons/logoorder.svg',
                    width: 150.w,
                    height: 150.h,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        //const SizedBox(height: 64),
                        Text(
                          'Введите Лицензионный код',
                          style: GoogleFonts.montserrat(
                            fontSize: 48.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'Код состоит из 8 цифр',
                          style: GoogleFonts.montserrat(
                            fontSize: 32.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Pinput(
                          forceErrorState: error,
                          closeKeyboardWhenCompleted: true,
                          keyboardAppearance: Brightness.dark,
                          autofocus: true,
                          length: 8,
                          defaultPinTheme: defaultPinTheme,
                          errorPinTheme: errorPinPutTema,
                          pinputAutovalidateMode:
                              PinputAutovalidateMode.onSubmit,
                          controller: _controller,
                          showCursor: false,
                          readOnly: true,
                          submittedPinTheme: putTheme,
                          onChanged: (value) {
                            if (error) {
                              setState(() {
                                error = false;
                              });
                            }
                          },
                          onLongPress: () {
                            _controller.clear();
                          },
                        ),
                        SizedBox(height: 10.h),
                        _keybord(),
                        if (errorText != null) ...[],
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _keybord() {
    return _TvKeyboard(
      controller: _controller,
      onEnter: () {
        context.read<ActivationBloc>().add(GetLicenseEvent(_controller.text));
      },
    );
  }

  Widget erorrMessage() {
    print('error');
    return SizedBox();
  }
}

class _TvKeyboard extends StatefulWidget {
  final TextEditingController controller;
  final VoidCallback onEnter;

  const _TvKeyboard({required this.controller, required this.onEnter});

  @override
  State<_TvKeyboard> createState() => _TvKeyboardState();
}

class _TvKeyboardState extends State<_TvKeyboard> {
  static const int _cols = 3;

  final List<String> _keys = [
    '1', '2', '3',
    '4', '5', '6',
    '7', '8', '9',
    'С', '0', 'OK',
  ];

  int _focusedIndex = 0;

  void _handleKey(String key) {
    setState(() {
      if (key == 'С') {
        if (widget.controller.text.isNotEmpty) {
          widget.controller.text = widget.controller.text
              .substring(0, widget.controller.text.length - 1);
        }
      } else if (key == 'OK') {
        widget.onEnter();
      } else {
        if (widget.controller.text.length < 8) {
          widget.controller.text += key;
        }
      }
    });
  }

  KeyEventResult _onKeyEvent(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;

    final key = event.logicalKey;

    if (key == LogicalKeyboardKey.arrowRight) {
      setState(() => _focusedIndex = (_focusedIndex + 1) % _keys.length);
      return KeyEventResult.handled;
    }
    if (key == LogicalKeyboardKey.arrowLeft) {
      setState(() => _focusedIndex = (_focusedIndex - 1 + _keys.length) % _keys.length);
      return KeyEventResult.handled;
    }
    if (key == LogicalKeyboardKey.arrowDown) {
      if (_focusedIndex + _cols < _keys.length) {
        setState(() => _focusedIndex += _cols);
      }
      return KeyEventResult.handled;
    }
    if (key == LogicalKeyboardKey.arrowUp) {
      if (_focusedIndex - _cols >= 0) {
        setState(() => _focusedIndex -= _cols);
      }
      return KeyEventResult.handled;
    }
    if (key == LogicalKeyboardKey.select || key == LogicalKeyboardKey.enter) {
      _handleKey(_keys[_focusedIndex]);
      return KeyEventResult.handled;
    }

    return KeyEventResult.ignored;
  }

  @override
  Widget build(BuildContext context) {
    return Actions(
      // Перехватываем системные action'ы Flutter для стрелок —
      // иначе Flutter пытается двигать курсор в TextField и крашится
      actions: {
        DirectionalFocusIntent: CallbackAction<DirectionalFocusIntent>(
          onInvoke: (_) => null,
        ),
        ScrollIntent: CallbackAction<ScrollIntent>(
          onInvoke: (_) => null,
        ),
      },
      child: Focus(
        autofocus: true,
        onKeyEvent: _onKeyEvent,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 650.w, maxHeight: 400.h),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: _cols,
              childAspectRatio: 1.8,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: _keys.length,
            itemBuilder: (context, index) {
              final isFocused = index == _focusedIndex;
              final key = _keys[index];
              final isOk = key == 'OK';
              final isDelete = key == 'С';

              return AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                decoration: BoxDecoration(
                  color: isFocused
                      ? Colors.green
                      : isOk
                      ? Colors.green.withOpacity(0.3)
                      : isDelete
                      ? Colors.red.withOpacity(0.15)
                      : Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12.r),
                  border: isFocused
                      ? Border.all(color: Colors.white, width: 2)
                      : Border.all(color: Colors.transparent),
                  boxShadow: isFocused
                      ? [BoxShadow(
                    color: Colors.green.withOpacity(0.3),
                    blurRadius: 3.r,
                    spreadRadius: 1.r,
                  )]
                      : null,
                ),
                child: Center(
                  child: Text(
                    key,
                    style: TextStyle(
                      color: isFocused ? Colors.white : Colors.black,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
