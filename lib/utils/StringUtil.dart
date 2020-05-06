class StringUtil{
  static String replace(String old){
    if(old==null&&old.length<4){
    }else{
      old=old.replaceAll("http", "https");
    }
    return old;
  }
}