*** Variables ***
${login_locator.box_username}            xpath=//input[@type='text']
${login_locator.box_password}            xpath=//input[@type='password'] 
${login_locator.btn_login}               xpath=//button[span[text()='Login']]
${login_locator.text_login_status}       xpath=//div[preceding-sibling::span[text()='Login page']]