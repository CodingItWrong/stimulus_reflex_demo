import ApplicationController from './application_controller'

export default class extends ApplicationController {
  afterCreate(element) {
    element.querySelector('[name="todo[name]"]').value = ''
  }
}
