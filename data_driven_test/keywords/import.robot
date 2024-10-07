*** Settings ***
Library                       SeleniumLibrary

Library                       DataDriver        file=../resources/testdata/${env}/data.csv        dialect=excel

Resource                      ../resources/locators/common_locator.robot
Resource                      ../resources/locators/login_locator.robot

Resource                      common.robot
Resource                      pages/login_page.robot

Resource                      features/login_feature.robot

Variables                     ../resources/settings/${env}/setting.yaml