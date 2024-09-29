*** Settings ***
Library                AppiumLibrary
Library                String

Variables              ../resources/testdata/testdata.yaml
Variables              ../resources/settings/${env}/setting.yaml

Resource               ./common.robot
Resource               pages/catalog_page.robot
Resource               pages/product_details_page.robot
Resource               pages/cart_details_page.robot

Resource               locators/common_locator.robot
Resource               locators/catalog_locator.robot
Resource               locators/product_details_locator.robot
Resource               locators/cart_details_locator.robot

Resource               features/cart_details_feature.robot