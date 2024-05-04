local respostascorretas = 0
local tempo = 0

function msgcontains(txt, str)
return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end

function onCreatureSay(cid, type, msg)
local quizofdeathNpc = getCreatureByName("Quizmaster ")
local msg = string.lower(msg)

if not getPlayerStorageValue(quizofdeathNpc, 2) == cid then return true end
if getPlayerStorageValue(quizofdeathNpc, 4) == 2 then return true end
if getPlayerStorageValue(quizofdeathNpc, 4) == 1 then
setPlayerStorageValue(quizofdeathNpc, 4, 2)
	if msg ~= "yes" and msg ~= "no" then
	doCreatureSay(quizofdeathNpc, "That wasn't the answer I was expecting!", 1)
	doSendDistanceShoot(getThingPos(npc), getThingPos(cid), 31)
	quizLose(cid)
	setPlayerStorageValue(quizofdeathNpc, 2, 0)
	elseif msg == "yes" then
	doQuizmasterSay("I make the questions here. You get'em right, fine. If you make any mistakes... err, let's get started.", cid)
	addEvent(doQuizmasterShowTutorial, 500)
	else
	addEvent(doQuizmasterSay, 20, "Fine then, FIRST QUESTION:", cid:getId())
	addEvent(doMakeQuestion, 850, cid:getId())
	addEvent(startQuizTimer, 900, cid:getId())
	end
return true
end

	if isCorrect(msg) then
	selfSay(correct[math.random(1, #correct)])
	doQuizClearField()
	respostascorretas = respostascorretas + 1
		if respostascorretas == respostaspraganhar then
		addEvent(doQuizmasterSay, 200, "Congratulations!", cid:getId())
		addEvent(doQuizmasterSay, 2000, "Congratulations!", cid:getId())
		addEvent(doQuizmasterSay, 2500, "Once again, congratulations!", cid:getId())
		addEvent(doQuizmasterSay, 6000, "You won the quiz of death!", cid:getId())
		addEvent(doQuizmasterSay, 8000, "Cr�ditos pela script: mastercraft", cid:getId())
		addEvent(quizWin, 9000, cid:getId())
		else
		addEvent(doMakeQuestion, 1500, cid:getId())
		end
	else
	selfSay(wrong[math.random(1, #wrong)])
	doSendDistanceShoot(getThingPos(quizofdeathNpc), getThingPos(cid), 31)
	addEvent(quizLose, 800, cid:getId())
	selfSay("The correct answer was "..getPlayerStorageValue(quizofdeathNpc, 1).."!")
	doQuizClearField()
	setPlayerStorageValue(quizofdeathNpc, 2, 0)
	respostascorretas = 0
	end
end
 
function onThink()
selfTurn(2)
return true
end