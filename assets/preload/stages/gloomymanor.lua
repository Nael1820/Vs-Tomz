
function onCreate()

  makeLuaSprite('sky','tomzsky', -1150, -300)
  addLuaSprite('sky',false)
  setLuaSpriteScrollFactor('sky', 0.0, 0.0);

  makeLuaSprite('cl','tomcliffs', -1175, -400)
  addLuaSprite('cl',false)
  setLuaSpriteScrollFactor('cl', 0.2, 0.2);

  makeLuaSprite('rs','tomzrocksback', -1175, -525)
  addLuaSprite('rs',false)
  setLuaSpriteScrollFactor('rs', 0.4, 0.4);

  makeLuaSprite('rgf','tomzrockgf', -1175, -525)
  addLuaSprite('rgf',false)
  setLuaSpriteScrollFactor('rgf', 0.7, 0.7);

  makeLuaSprite('rt','tomzrocktomz', -1175, -525)
  addLuaSprite('rt',false)
  setLuaSpriteScrollFactor('rt', 1, 1);

  makeLuaSprite('rbf','tomzrockbf', -1175, -525)
  addLuaSprite('rbf',false)
  setLuaSpriteScrollFactor('rbf', 1, 1);

  makeLuaSprite('bar1','za bar', 0, -300)
  addLuaSprite('bar1',true)
  setLuaSpriteScrollFactor('bar1', 0.0, 0.0);

  setScrollFactor('gfGroup', 0.7, 0.7)
  setObjectOrder('gfGroup', 4);

  makeLuaSprite('bar1','za bar', 0, -295)
  addLuaSprite('bar1',true)
  setLuaSpriteScrollFactor('bar1', 0.0, 0.0);

  makeLuaSprite('bar2','za bar', 0, 665)
  addLuaSprite('bar2',true)
  setLuaSpriteScrollFactor('bar2', 0.0, 0.0);

  setObjectCamera("bar1","hud")
  setObjectCamera("bar2","hud");

end

function onUpdate(elapsed)

	if curStep >= 0 then
	  songPos = getSongPosition()
	  local currentBeat = (songPos/1000)*(bpm/170)
	  doTweenY('balls1', 'rbf', -525-50*math.sin((currentBeat*0.25)*math.pi),0.001)
	end

  if curStep >= 0 then
	  songPos = getSongPosition()
	  local currentBeat = (songPos/1000)*(bpm/170)
	  doTweenY('balls1cha','boyfriend', 425-50*math.sin((currentBeat*0.25)*math.pi),0.001)
	end

  if curStep >= 0 then
	  songPos = getSongPosition()
	  local currentBeat = (songPos/1000)*(bpm/200)
	  doTweenY('balls2', 'rt', -525-70*math.sin((currentBeat*0.25)*math.pi),0.001)
	end

  if curStep >= 0 then
	  songPos = getSongPosition()
	  local currentBeat = (songPos/1000)*(bpm/200)
	  doTweenY('balls2cha','dad', -100-70*math.sin((currentBeat*0.25)*math.pi),0.001)
	end

  if curStep >= 0 then
	  songPos = getSongPosition()
	  local currentBeat = (songPos/1000)*(bpm/220)
	  doTweenY('balls3', 'rgf', -525-70*math.sin((currentBeat*0.25)*math.pi),0.001)
	end

  if curStep >= 0 then
	  songPos = getSongPosition()
	  local currentBeat = (songPos/1000)*(bpm/220)
	  doTweenY('balls3cha','gf', -70-70*math.sin((currentBeat*0.25)*math.pi),0.001)
  end

  if curStep >= 0 then
	  songPos = getSongPosition()
	  local currentBeat = (songPos/1000)*(bpm/250)
	  doTweenY('balls4', 'rs', -525-70*math.sin((currentBeat*0.25)*math.pi),0.001)
	end

end