'use strict';

const Controller = require('egg').Controller;

class HomeController extends Controller {
  async index() {
    const { ctx } = this;
    const data = await this.app.mysql.query('select * from agent'); // 单实例可以直接通过 app.mysql 访问
    console.log(data)
    ctx.body = data;
  }
}

module.exports = HomeController;
