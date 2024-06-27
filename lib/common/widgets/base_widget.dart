import 'dart:ui';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import '../../helpers/app_logger.dart';
import '../../helpers/connectivity_manager.dart';
import '../app_colors.dart';
import '../custom_text_styles.dart';

class BaseWidget extends StatefulWidget {
  final Widget child;
  final bool retryEnable;
  final bool isScreenDisable;
  final Function? redirectionCallback;
  const BaseWidget(
      {Key? key,
      required this.child,
      this.retryEnable = false,
      this.isScreenDisable = false,
      this.redirectionCallback})
      : super(key: key);

  @override
  State<BaseWidget> createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  bool internetAvailable = true;

  @override
  void didChangeDependencies() {
    initializeConnectivityStream();
    super.didChangeDependencies();
  }

  initializeConnectivityStream() {
    ConnectivityManager().initializeConnectivityStream((data) {
      Log.debug("Internet Connection status---$data");
      if (data == ConnectivityResult.mobile ||
          data == ConnectivityResult.wifi) {
        if (widget.retryEnable) {
          widget.redirectionCallback!();
          return;
        }
        if (!internetAvailable) {
          Navigator.of(context).pop();
        }

        internetAvailable = true;
      } else {
        if (internetAvailable) {
          noInternetDialog(context);
        }
        setState(() => internetAvailable = false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: AbsorbPointer(
                absorbing: widget.isScreenDisable, child: widget.child),
          ),
        ],
      ),
    );
  }

  noInternetDialog(BuildContext context) {
    Log.info('------show no internet dialog');
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
            onWillPop: (() async {
              return false;
            }),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  insetAnimationDuration: const Duration(milliseconds: 100),
                  child: (!internetAvailable || widget.retryEnable)
                      ? Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              gradient: LinearGradient(
                                  colors: [
                                    AppColors.orange,
                                    AppColors.lightRed,
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter)),
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 35),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(height: 10),
                                  RichText(
                                    text: TextSpan(
                                        text: "Oops!!\n",
                                        style: CustomTextStyles.subHeaderStyle(
                                            color: AppColors.white),
                                        children: [
                                          TextSpan(
                                            text:
                                                "It looks like you've lost your internet connection.Trying to reconnect, please wait a moment",
                                            style: CustomTextStyles
                                                .subRegularStyle(
                                                    color: AppColors.white),
                                          )
                                        ]),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              )),
                        )
                      : const SizedBox()),
            ));
      },
    );
  }
}
