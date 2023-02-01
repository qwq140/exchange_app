class DateUtil{
  static String getTimeFromDateTime({required DateTime dateTime}){
    return '${dateTime.year}년${dateTime.month}월${dateTime.day}일 ${_getTimeFormat(dateTime.hour)}:${_getTimeFormat(dateTime.minute)}';
  }

  static String _getTimeFormat(int number){
    return number.toString().padLeft(2, '0');
  }
}