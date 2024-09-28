*** Settings ***
Library        SeleniumLibrary
Library        String

Variables      ../../resources/testdata/testdata.yaml
Variables      ../../resources/setting/${env}/setting.yaml

Resource       common.robot

Resource       ../pages/login_page.robot
Resource       ../pages/home_page.robot
Resource       ../pages/search_result_page.robot
Resource       ../pages/delivery_page.robot
Resource       ../pages/payment_page.robot
Resource       ../pages/my_order_page.robot

Resource       ../locators/common_locator.robot
Resource       ../locators/login_locator.robot
Resource       ../locators/home_locator.robot
Resource       ../locators/search_result_locator.robot
Resource       ../locators/delivery_locator.robot
Resource       ../locators/payment_locator.robot
Resource       ../locators/my_order_locator.robot

Resource       ../features/login_feature.robot
Resource       ../features/search_feature.robot
Resource       ../features/my_order_feature.robot
Resource       ../features/payment_feature.robot
