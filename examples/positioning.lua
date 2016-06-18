local texts = {
	abs = "absolute\nabsX = 0\nabsY = 0",
	rel = "relative\nrelX = 0.5\nrelY = 0.5",
	anc = "anchored\nancX = 0\nancY = 1",
	grs = "gridsnapped\ncol = 1\nrow = 0",
}

local spaces = (" "):rep(30)

for k,v in pairs(texts) do
	texts[k] = spaces .. "\n" .. v .. "\n" .. spaces 
end

local layout = Layout.new{
	cellRelW = 0.5, cellRelH = 0.5,
	anAdd = Layout.newAnimation(),
	anRemove = Layout.newAnimation(),
	Layout.new{
		TextArea.new(font, texts.abs, "|", "C"),
		absX = 0, absY = 0,
		
		bgrC = 0x0000FF, bgrA = 0.5,
		relW = 0.5, relH = 0.5,
	},
		Layout.new{
		TextArea.new(font, texts.rel, "|", "C"),
		relX = 0.5, relY = 0.5,
		
		bgrC = 0xFF0000, bgrA = 0.5,
		relW = 0.5, relH = 0.5,
	},
		Layout.new{
		TextArea.new(font, texts.anc, "|", "C"),
		ancX = 0, ancY = 1,
		
		bgrC = 0x000000, bgrA = 0.5,
		relW = 0.5, relH = 0.5,
	},
		Layout.new{
		TextArea.new(font, texts.grs, "|", "C"),
		col = 1, row = 0, 
		
		bgrC = 0x00FF00, bgrA = 0.5,
		relW = 0.5, relH = 0.5,
	},
}

stage:addChild(layout)