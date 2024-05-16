class ApiUrl {
  // base url
  static String base_url = "https://ejay247.onrender.com/v1";
  // general
  static String check_username = "/auth/check-username";
  static String sign_in_url = "/auth/login-influencer";
  static String verify_email_url = "/auth/verify-influencer";
  static String resend_otp_code = "/auth/resend-otp";
  static String get_user = "/user/get-user";
  static String update_user = "/user/update-user";

  // influncer
  static String get_influencer = "/user/get-influencer";
  static String influencer_balance = "/user/get-influencer-balance";
  static String user_balance = "/user/get-user-balance";
  static String sign_up_influencer_url = "/auth/register-influencer";
  static String tasks_and_money_spent =
      "/task/get-influencer-tasks-and-money-spent";
  static String recent_spending_influencer_url =
      "/wallet/get-influencer-recent-spending";

  static String influencer_task_list = "/task/get-influencer-tasks";

  // task
  static String get_tasks = "/task/get-tasks";
  static String create_task = "/task/create-task";
}
