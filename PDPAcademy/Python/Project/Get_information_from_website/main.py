import pandas as pd
from playwright.sync_api import sync_playwright


def main():
    with sync_playwright() as p:
        page_url = fr"https://en.yellowpages.uz//rubric/private-clinics/tashkent?pagenumber=3&pagesize=100"
        browser = p.chromium.launch(headless=False)
        page = browser.new_page()
        page.goto(page_url, timeout=600000)
        _count = page.locator('//div[@class="organizationBlock"]').all()
        print(f"{len(_count)} ta bor")
        _list = []
        for i in _count:
            phone_link_element = i.locator(
                '//a[contains(@onclick, "showPhonePopup")]').first  # Find the link with the onclick
            onclick_value = phone_link_element.get_attribute('onclick')
            phone_parts = onclick_value.split(',')
            area_code = phone_parts[1].strip("' ")  # Remove quotes and spaces
            phone_number = phone_parts[0].strip("' ")
            full_phone_number = f"+998 {area_code} {phone_number}"
            _dict = {"name": i.locator('//a[@class="organizationName blueText"]').inner_text(),
                     "address": i.locator('//p[@class="address"]').inner_text().replace('Address: ',''),
                     "telephone": full_phone_number[:15]}
            _list.append(_dict)
        df = pd.DataFrame(_list)
        df.to_excel("data3.xlsx", index=False)
        df.to_csv("data3.csv", index=False)
        browser.close()


if __name__ == "__main__":
    main()

