function onCreate()

	setProperty('defaultCamZoom',5)
	makeLuaSprite('funsky','funstage/sonicFUNsky', -300, 0);
	setScrollFactor('funsky', 0.8, 0.8);
 
  addLuaSprite('funsky');
	makeLuaSprite('backbush','funstage/Bush2', -300, 150);
	setScrollFactor('backbush', 1, 1);

  addLuaSprite('backbush');
	makeAnimatedLuaSprite('backbop','funstage/Majin Boppers Back', 0, -250);
	setScrollFactor('backbop', 0.9, 1);
	addAnimationByPrefix('backbop', 'bopback', 'MajinBop2 instance', 26, true);
	objectPlayAnimation('backbop', 'bopback', false);

  addLuaSprite('backbop');	
	makeLuaSprite('frontbush','funstage/Bush 1', -150, 350);
	setScrollFactor('frontbush', 1, 1);

  addLuaSprite('frontbush');	
	makeAnimatedLuaSprite('frontbop','funstage/Majin Boppers Front', -350, -300);
	setScrollFactor('frontbop', 0.9, 1);
	addAnimationByPrefix('frontbop', 'bopfront', 'MajinBop1 instance', 26, true);
	objectPlayAnimation('frontbop', 'bopfront', false);
  
  addLuaSprite('frontbop');
	makeLuaSprite('funfloor','funstage/floor BG', -400, 550);
	setScrollFactor('funfloor', 1, 1);

  addLuaSprite('funfloor');
	makeAnimatedLuaSprite('fg1','funstage/majin FG1', 1200, 750);
	setScrollFactor('fg1', 0.9, 1);
	addAnimationByPrefix('fg1', 'bop1', 'majin front bopper', 26, true);
	objectPlayAnimation('fg1', 'bop1', false);
	setObjectOrder('fg1',10);
  
  addLuaSprite('fg1');
	makeAnimatedLuaSprite('fg2','funstage/majin FG2', -400, 750);
	setScrollFactor('fg2', 0.9, 1);
	addAnimationByPrefix('fg2', 'bop2', 'majin front bopper2', 28, true);
	objectPlayAnimation('fg2', 'bop2', false);	
	setObjectOrder('fg2',11);

  addLuaSprite('fg2');

end





function onStepHit()	
	if curStep == 2 then
		setProperty('defaultCamZoom',0.85)

	elseif curStep == 770 then
		makeLuaSprite('3', 'three', 250, 285);
		addLuaSprite('3', 'false');
		setObjectOrder('3',12);
		runTimer('start3', 0);

	elseif curStep == 774 then
		makeLuaSprite('2', 'two', 250, 285);
		addLuaSprite('2', 'false');
		setObjectOrder('2',12);
		runTimer('start2', 0);

	elseif curStep == 778 then
		makeLuaSprite('1', 'one', 250, 285);
		addLuaSprite('1', 'false');
		setObjectOrder('1',12);
		runTimer('start1', 0);

	elseif curStep == 782 then
		makeLuaSprite('go', 'gofun', 250, 285);
		addLuaSprite('go', 'false');
		setObjectOrder('go',12);
		runTimer('startgo', 0);
	end	
end


function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'start3' then	
		doTweenAlpha('threefade', '3', 0, 0.3, 'linear');

	elseif tag == 'start2' then	
		doTweenAlpha('twofade', '2', 0, 0.3, 'linear');

	elseif tag == 'start1' then	
		doTweenAlpha('onefade', '1', 0, 0.3, 'linear');

	elseif tag == 'startgo' then	
		doTweenAlpha('gofade', 'go', 0, 0.3, 'linear');
	end
end