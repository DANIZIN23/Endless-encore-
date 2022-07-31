
function onEvent(name, value1, value2)
	makeLuaText('Lyric', '', 99, 600 ,400)
	if name == 'Update Lyrics' then
		setTextString('Lyric', value1)
		addLuaText('Lyric')
		if value2 == '' then
			removeLuaSprite('icon', true)

		else
			makeLuaSprite('icon', value2, 450, 560);
			addLuaSprite('icon')
			setGraphicSize('icon', 0.55, 0.55)
			setObjectOrder('icon', 20)


		end
	end
end