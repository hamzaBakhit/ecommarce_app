class AppLink{
  static const  String server = "https://hamzabakheet.com/ecommarce";
  static const  String authServer = "$server/auth/";
  static const  String phpPath = ".php";
  static const  String test = "$server/test.php";
  //********************************************* AUTH *****************************************/
  static const  String signup = "$server/auth/signup$phpPath";
  static const  String login = "$server/auth/login$phpPath";
  static const  String verifyCodeSignup = "$server/auth/verifycode$phpPath";
  //********************************************* FORGETPASSWORD *****************************************/
  static const  String checkEmail = "$server/forgetpassword/checkemail$phpPath";
  static const  String resetPassword = "$server/forgetpassword/resetpassword$phpPath";
  static const  String verifyCodeResetPassword = "$server/forgetpassword/verifycode$phpPath";
}