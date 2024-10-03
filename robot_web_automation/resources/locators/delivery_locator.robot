*** Settings ***
Resource                                    ../../keywords/import.robot

*** Variables ***
${delivery_locator.text_order_details}      xpath=//div[@class='product-detail-item' and text()='${search_product.product_name}']
${delivery_locator.box_name}                id=form_item_name
${delivery_locator.box_surname}             id=form_item_surName    
${delivery_locator.box_address}             id=form_item_address
${delivery_locator.box_phone}               id=form_item_phone
${delivery_locator.btn_pay}                 xpath=//button[span[text()='PAY']]