local messages = {
	"Est� gostando do servidor? Que tal chamar seus amigos para jogar junto com voc�? Site: pokegold.com.br/",
	"Dica: Encontrou algum bug? Reporte-o usando (Ctrl+r)!",
	"Esta bugado? Use o comando !ops para desbugar!",
	"Dica: Antes de aceitar qualquer troca envolvendo itens ou pokemons, d� look antes. A staff n�o se responsabiliza por roubos.",
	"Dica: Caso tenha alguma d�vida, utilize o canal Help (Ctrl+o) !",
	"Curta nossa page no facebook www.facebook.com/PokemongGold/",
	"Dica: Utilize o comando !salvar, /salvar sempre que conquistar algo de valor para evitar perdas.",  
	"Esta procurando vender ou comprar algum pok�mon? Precisa de ajuda para alguma quest? Utilize o canal Trade (Ctrl+o)",
}

local i = 0
function onThink(interval, lastExecution)
local message = messages[(i % #messages) + 1]
    doBroadcastMessage("" .. message,22)
    i = i + 1
    return TRUE
end
