package main

import (
	"Tele_Bot/app/teleBot"
	"fmt"
	"github.com/joho/godotenv"
	"log"
	"strings"
)

const (
	envPath = "./cmd/.env"
)

func init() {
	if err := godotenv.Overload(strings.Split(envPath, ",")...); err != nil {
		fmt.Println("Load env error", err.Error())
	}
}

func main() {
	err := teleBot.Run()
	if err != nil {
		log.Println(err)
	}
}
