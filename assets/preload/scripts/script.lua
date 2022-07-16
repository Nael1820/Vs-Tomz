function onCreate()

	makeLuaSprite('songtab2','tab darkmoon back', 1850, 250)
    setObjectCamera('songtab2','hud')
    addLuaSprite('songtab2',true);

    makeLuaSprite('songtab','tab darkmoon front', 1850, 250)
    setObjectCamera('songtab','hud')
    addLuaSprite('songtab',true);

    scaleObject('songtab2',0.8,0.8);
    scaleObject('songtab',0.8,0.8);

end

function onSongStart()

    doTweenX('yoinky2','songtab2', 700, 0.75,'smoothStepInOut');
	doTweenX('yoinky','songtab', 700, 0.5,'smoothStepInOut');
    runTimer('back2back',4,1);
	
end

function onTimerCompleted(back2back)

    doTweenX('yoinky3','songtab2', 1850, 0.75,'smoothStepInOut');
    doTweenX('yoinky4','songtab', 1850, 0.5,'smoothStepInOut');

end
