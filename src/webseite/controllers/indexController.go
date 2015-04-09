package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	// Check if last email is set from
	if c.GetSession("profile.register.lastEmail") != nil {
		c.DelSession("profile.register.lastEmail")
	}

	// Read additional data from session
	flashRegisterComplete := c.GetSession("profile.registerComplete")

	// Check for flashes
	flashes := make(map[string]interface{})
	if flashRegisterComplete != nil {
		flashes["registerComplete"] = flashRegisterComplete
		c.DelSession("profile.registerComplete")
	}

	// Check for login id
	if c.GetSession("userId") == nil {
		c.SetSession("userId", int32(-1))
	}

	c.Data["flash"] = flashes
	c.Data["host"] = "localhost:8080"//"minecrafttracker.net"
	c.TplNames = "index.tpl"
}
