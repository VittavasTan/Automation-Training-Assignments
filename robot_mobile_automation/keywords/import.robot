*** Settings ***
Library                AppiumLibrary
Library                String

Variables              ../resources/testdata/testdata.yaml
Variables              ../resources/settings/${env}/${platform}.yaml

Resource               ./common.robot

Resource               features/cart_details_feature.robot

Resource               pages/catalog_page.robot
Resource               pages/product_details_page.robot
Resource               pages/cart_details_page.robot

Resource               ../resources/locators/${platform}/common_locator.robot
Resource               ../resources/locators/${platform}/catalog_locator.robot
Resource               ../resources/locators/${platform}/product_details_locator.robot
Resource               ../resources/locators/${platform}/cart_details_locator.robot