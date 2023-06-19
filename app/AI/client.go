package AI

import (
	"Tele_Bot/app/AI/llama"
	"fmt"
	"os"
	"strconv"
)

const (
	envThreads   = "LLAMA_THREADS"
	envTokens    = "LLAMA_TOKENS"
	envGpulayers = "LLAMA_GPUPLAYERS"
	envModelPath = "LLAMA_MODELPATH"
	envTopK      = "LLAMA_TOPK"
	envTopP      = "LLAMA_TOPP"
)

type Client struct {
	L *llama.LLama
}

func NewClient() (*Client, error) {
	gpulayers, err := strconv.Atoi(os.Getenv(envGpulayers))
	if err != nil {
		return nil, err
	}

	l, err := llama.New(os.Getenv(envModelPath), llama.EnableF16Memory, llama.SetContext(128), llama.EnableEmbeddings, llama.SetGPULayers(gpulayers))
	if err != nil {
		return nil, fmt.Errorf("Loading the model failed:", err.Error())
	}
	fmt.Printf("Model loaded successfully.\n")
	return &Client{L: l}, nil
}

func (c *Client) Predict(question string) (string, error) {
	tokens, err := strconv.Atoi(os.Getenv(envTokens))
	if err != nil {
		return "", err
	}
	topK, err := strconv.Atoi(os.Getenv(envTopK))
	if err != nil {
		return "", err
	}
	topP, err := strconv.ParseFloat(os.Getenv(envTopP), 64)
	if err != nil {
		return "", err
	}
	threads, err := strconv.Atoi(os.Getenv(envThreads))
	if err != nil {
		return "", err
	}

	answer, err := c.L.Predict(question, llama.Debug, llama.SetTokens(tokens), llama.SetThreads(threads), llama.SetTopK(topK), llama.SetTopP(topP), llama.SetStopWords("llama"))
	if err != nil {
		return "", err
	}

	return answer, nil
}
