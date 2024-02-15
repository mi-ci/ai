from bs4 import BeautifulSoup

html = '<div class="clearfix hide-mobile" id="image-block"><span id="view_full_size"><span class="product_game-language"><svg class="svg-flag_en icon"><use xlink:href="#svg-flag_en"></use></svg></span><span class="ratio-container" style="max-width:372px"><img alt="Dominion - Plunder" height="372" id="bigpic" itemprop="image" loading="lazy" src="https://imageotoget.jpg" width="372"/></span></span></div>'

soup = BeautifulSoup(html, 'html.parser')

element = soup.select_one('img')
src = element.attrs['src']
print(src)
