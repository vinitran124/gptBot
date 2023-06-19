package teleBot

import (
	"Tele_Bot/app/AI"
	tb "gopkg.in/telebot.v3"
	"log"
	"os"
	"strconv"
	"strings"
	"time"
)

type Bot struct {
	b       *tb.Bot
	chatIds []int64
}

var model *AI.Client

func Run() error {
	b, err := NewBot(os.Getenv(envBotToken))
	if err != nil {
		return err
	}

	err = b.SetChatId()
	if err != nil {
		return err
	}

	log.Println("Bot is running...")

	model, err = AI.NewClient()
	if err != nil {
		return err
	}

	err = b.Handler()
	if err != nil {
		return err
	}

	return nil
}

func NewBot(token string) (*Bot, error) {
	pref := tb.Settings{
		Token:  token,
		Poller: &tb.LongPoller{Timeout: 10 * time.Second},
	}

	tmpBot, err := tb.NewBot(pref)
	if err != nil {
		log.Fatal(err)
	}

	bot := &Bot{
		b: tmpBot,
	}

	return bot, nil
}

func (bot *Bot) Handler() error {
	bot.b.Handle("/q", func(c tb.Context) error {
		if bot.IsValidChatID(c.Chat().ID) == false {
			c.Reply("Not allow to use")
			return nil
		}

		c.Reply("...")

		question := c.Message().Payload
		answer, err := model.Predict(question)
		if err != nil {
			return err
		}

		return c.Reply(answer)
	})

	bot.b.Start()
	return nil
}

func (bot *Bot) SetChatId() error {
	chatIdStr := strings.Split(os.Getenv(envChatIds), ",")
	for _, idStr := range chatIdStr {
		id, err := strconv.ParseInt(idStr, 10, 64)
		if err != nil {
			return err
		}
		bot.chatIds = append(bot.chatIds, id)
	}
	return nil
}
