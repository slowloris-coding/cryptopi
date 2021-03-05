from lib import I2C_LCD_driver
import os

driver=I2C_LCD_driver.lcd()

menu_symbols = [
    #Refresh smbol      
        [ 0b00000, 
          0b11110, 
          0b01010, 
          0b01010, 
          0b01010, 
          0b01010, 
          0b01111, 
          0b00000 ],
    #Inactive Page
        [ 0b00000,
          0b00000,
          0b01110,
          0b01110,
          0b01110,
          0b01110,
          0b00000,
          0b00000],
    #Active Page
        [ 0b00000,
          0b00000,
          0b01110,
          0b01010,
          0b01010,
          0b01110,
          0b00000,
          0b00000
          ],
]

change = [
    #arrow up
    [
    0b00000,
	0b00100,
	0b01110,
	0b11111,
	0b00100,
	0b00100,
	0b00100,
	0b00000
    ],
    #arrow down
    [
    0b00000,
	0b00100,
	0b00100,
	0b00100,
	0b11111,
	0b01110,
	0b00100,
	0b00000
    ]
	
]

backlight_symbol = [
    [
    0b00000,
	0b00000,
	0b00000,
	0b11111,
	0b11111,
	0b11111,
	0b01110,
	0b00000    
    ],
    [
    0b00000,
	0b10101,
	0b10101,
	0b11111,
	0b10001,
	0b10001,
	0b01110,
	0b00000
    ],
]

backlight_test = [
    [
    0b01001,
    0b00110,
    0b00010,
    0b11110,
    0b01111,
    0b01000,
    0b01100,
    0b10010
    ],
    [
    0b01001,
    0b01110,
    0b00010,
    0b11110,
    0b01111,
    0b01000,
    0b01110,
    0b10010
    ]
]

def backlight_ctl(state):
    driver.lcd_home
    lastLine= 0x80 + 0x54
    driver.lcd_load_custom_chars(backlight_test)
    driver.lcd_write(lastLine+18)
    driver.lcd_write_char(state)
    driver.backlight(state)

def display_menu(timeStamp, mode, page):
    lastLine= 0x80 + 0x54
    driver.lcd_load_custom_chars(menu_symbols)
    driver.lcd_write(lastLine)
    driver.lcd_write_char(0)
    driver.lcd_display_string(timeStamp, 4, 2)
    for i in range(8, 13):
        driver.lcd_write(lastLine + i)
        if i-8 == page:
            driver.lcd_write_char(2)
        else:
            driver.lcd_write_char(1)


def display_coin(coin, val, mcp, graph, change):
    driver.lcd_display_string(f"Coin: {coin}, Value: {val}, Marketcap: {mcp}, Graph: {graph}, Change: {change}", 1)