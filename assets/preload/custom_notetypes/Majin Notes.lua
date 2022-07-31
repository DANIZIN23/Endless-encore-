function onCreate()
	makeLuaSprite('Light', 'Light', -150, 0);
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Majin Notes' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Majin_Notes'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'MajinSplashes'); -- change splash
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	
	if noteType == 'Majin Notes' then
		addLuaSprite('Light', true);
		doTweenColor('Light', 'Light', 'FFFFFFFF', 0.1, 'quartIn');
		setObjectCamera('Light', 'other');
  	 	doTweenAlpha('byebye', 'Light', 0, 0.07, 'linear');	
	end	
		function onTweenCompleted(tag)
 	   		if tag == 'byebye' then
 	   			removeLuaSprite('Light', false);
			end
		end
	end

