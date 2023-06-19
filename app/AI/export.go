package AI

import (
	"fmt"
	"github.com/xuri/excelize/v2"
	"log"
)

func ExportExcel() error {
	model, err := NewClient()
	if err != nil {
		return err
	}

	fileRead, err := excelize.OpenFile("./app/AI/data/data.xlsx")
	if err != nil {
		return err
	}

	fileWrite := excelize.NewFile()

	for i := 2; i < 4; i++ {
		question, err := fileRead.GetCellValue("Test2", fmt.Sprintf("B%d", i))
		if err != nil {
			return err
		}

		log.Println(question)

		if question == "" {
			break
		}

		answer, err := model.Predict(question)
		if err != nil {
			return err
		}

		log.Println(answer)

		err = fileWrite.SetCellStr("Sheet1", fmt.Sprintf("A%d", i), question)
		if err != nil {
			return err
		}

		err = fileWrite.SetCellStr("Sheet1", fmt.Sprintf("B%d", i), answer)
		if err != nil {
			return err
		}

		if err := fileWrite.SaveAs("answer.xlsx"); err != nil {
			return err
		}
	}

	return nil
}
