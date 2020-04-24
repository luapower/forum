local ui = require'ui'()
ui:add_font_file('media/fonts/simsunb.ttf', 'SimSun')

ui:style('body', {
	background_color = '#121212',
	font = 'SimSun, 14',
	text_color = '#FFFFFF',
})

local win = ui:window{
  cw = 500, 
	ch = 350,
  min_cw = 500,
	min_ch = 350,
  title = '',
  fullscreenable = false,
	edgesnapping = false,
}

local body = ui:layer{
	parent = win,
	x = 0,
	y = 0,
	w = 500,
	h = 175,
	tags = 'body',
	text = '这是一些中文文本',
}

local body2 = ui:layer{
	parent = win,
	x = 0,
	y = 175,
	w = 500,
	h = 175,
	tags = 'body',
	text = 'this is some english text',
}

ui:run()