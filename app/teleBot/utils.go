package teleBot

const (
	envBotToken = "BOT_TOKEN"
	envChatIds  = "BOT_CHAT_IDS"
)

func (bot *Bot) IsValidChatID(id int64) bool {
	for _, chatId := range bot.chatIds {
		if chatId == id {
			return true
		}
	}
	return false
}
