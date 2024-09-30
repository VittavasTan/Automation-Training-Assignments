*** Settings ***
Library                AppiumLibrary
Library                String

Variables              ../resources/testdata/testdata.yaml
Variables              ../resources/settings/${platform}.yaml

Resource               ./common.robot
Resource               pages/catalog_page.robot
Resource               pages/product_details_page.robot
Resource               pages/cart_details_page.robot

Resource               locators/${platform}/common_locator.robot
Resource               locators/${platform}/catalog_locator.robot
Resource               locators/${platform}/product_details_locator.robot
Resource               locators/${platform}/cart_details_locator.robot

Resource               features/cart_details_feature.robot