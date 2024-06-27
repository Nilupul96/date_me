// ignore_for_file: avoid_print

class Log {
  static const bool _isShowDebug = false;
  static const bool _isInfoShow = false;
  static const bool _isWarnShow = false;
  static const bool _isErrShow = false;

  static void debug(String log) {
    if (_isShowDebug) {
      print("[DEBUG]: $log");
    }
  }

  static void info(String msg) {
    if (_isInfoShow) {
      print("\x1b[33m[INFO] $msg\x1b[0m");
    }
  }

  static void warn(String msg) {
    if (_isWarnShow) {
      print("[WARN] $msg");
    }
  }

  static void err(String msg) {
    if (_isErrShow) {
      print("\x1b[31m[ERR] $msg\x1b[0m");
    }
  }
}
