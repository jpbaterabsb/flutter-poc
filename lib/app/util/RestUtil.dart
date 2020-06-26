class RestUtil {
  static getDefaultHeader(){
    return <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    };
  }
}