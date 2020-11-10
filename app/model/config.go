package model

import (
	"fmt"

	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

var DB *gorm.DB

func init() {
	var err error

	db_u := "root"               //os.Getenv("DB_U")
	db_p := "root"               //os.Getenv("DB_P")
	db_host := "localhost"       //os.Getenv("DB_HOST")
	db_name := "digitalent_bank" //os.Getenv("DB_NAME")

	// DB, err = gorm.Open(mysql.Open(fmt.Sprintf("root:root@tcp(172.18.0.10:3306)/digitalent_bank")), &gorm.Config{})
	for {
		DB, err = gorm.Open(mysql.Open(fmt.Sprintf("%s:%s@tcp(%s)/%s", db_u, db_p, db_host, db_name)), &gorm.Config{})
		if err == nil {
			break
		}
	}
	DB.AutoMigrate(new(Account), new(Transaction))

}
