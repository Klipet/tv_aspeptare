import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors_app.dart';
import '../pachetges/costom_toast.dart';

class ToastResponseError{
  final BuildContext context;
  final String textError;

  const ToastResponseError({ required this.context, required this.textError});

  static TextStyle textStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  fontSize: 23.sp,
  color: textColor,
  decoration: TextDecoration.none
  );

  void showError() {
    CustomToast.showCustom(
      animationDuration: Duration(milliseconds: 300),
      autoCloseDuration: Duration(seconds: 5),
      context: context,
      onDismiss: () {},
      builder: (context, dismiss) {
        return SizedBox(
          width: 565.w,
          height: 160.h,
          child: _contentToastError(dismiss),
        );
      },
    );
  }

  void showUpdate() {
    CustomToast.showCustom(
      animationDuration: Duration(milliseconds: 5),
      autoCloseDuration: Duration(hours: 1),
      width: 565.w,
      height: 160.h,
      context: context,
      onDismiss: () {},
      builder: (context, dismiss) {
        return SizedBox(

          child: _contentToastUpdate(dismiss),
        );
      },
    );
  }

  void showUpdateSucces() {
    CustomToast.showCustom(
      animationDuration: Duration(milliseconds: 300),
      autoCloseDuration: Duration(seconds: 5),
      width: 565.w,
      height: 160.h,
      context: context,
      margin: EdgeInsets.only(top: 50.r),
      onDismiss: () {},
      builder: (context, dismiss) {
        return SizedBox(
          child: _contentToastUpdateSucces(dismiss),
        );
      },
    );
  }

  void showErrorConnect() {
    CustomToast.showCustom(
      animationDuration: Duration(seconds: 5),
      autoCloseDuration: Duration(milliseconds: 300),
      context: context,
      onDismiss: () {},
      builder: (context, dismiss) {
        return SizedBox(
          width: 565.w,
          height: 160.h,
          child: _contentToastErrorInternet(dismiss),
        );
      },
    );
  }

  Widget _contentToastError(VoidCallback dismiss) {
    return Container(
      margin: EdgeInsets.only(right: 12.h),
      padding: EdgeInsets.only(
        left: 32.h,
        top: 16.w,
        bottom: 16.h,
        right: 16.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        border: BoxBorder.all(color: borderColor, width: 1.w),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/toast/bubu_error.svg'),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textError,
                  textAlign: TextAlign.center,
                  style: textStyle
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _contentToastUpdate(VoidCallback dismiss) {
    return Container(
      margin: EdgeInsets.only(right: 12.h),
      padding: EdgeInsets.only(
        left: 32.h,
        top: 16.w,
        bottom: 16.h,
        right: 16.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        border: BoxBorder.all(color: borderColor, width: 1.w),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/toast/await_pop.svg'),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textError,
                  textAlign: TextAlign.center,
                  style:textStyle
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _contentToastUpdateSucces(VoidCallback dismiss) {
    return Container(
      margin: EdgeInsets.only(right: 12.h),
      padding: EdgeInsets.only(
        left: 32.h,
        top: 16.w,
        bottom: 16.h,
        right: 16.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        border: BoxBorder.all(color: borderColor, width: 1.w),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/toast/succes_pop.svg'),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textError,
                  textAlign: TextAlign.center,
                  style: textStyle
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget _contentToastErrorInternet(VoidCallback dismiss) {
    return Container(
      margin: EdgeInsets.only(right: 12.h),
      padding: EdgeInsets.only(
        left: 32.h,
        top: 16.w,
        bottom: 16.h,
        right: 16.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        border: BoxBorder.all(color: borderColor, width: 1.w),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/toast/no_signal.svg'),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textError,
                  textAlign: TextAlign.center,
                  style: textStyle
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}