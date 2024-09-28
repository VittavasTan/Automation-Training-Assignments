*** Variables ***
${login_locator.btn_login}                xpath=//button[span[text()='Login']]
${login_locator.box_username}             xpath=//div[@class='login']//input[@type='text']
${login_locator.box_password}             xpath=//div[@class='login']//input[@type='password']

${login_locator.btn_signup}               xpath=//button[span[text()='Sign up']]
${signup_locator.box_username}            id=basic_username
${signup_locator.box_password}            id=basic_password
${signup_locator.box_confirm_password}    id=basic_confirmPassword
${signup_locator.btn_signup}              xpath=//button[span[text()='SIGNUP']]