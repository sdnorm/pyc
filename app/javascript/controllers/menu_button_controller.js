import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "hamburger", "close" ]

  toggle() {
    this.hamburgerTarget.classList.toggle('hidden')
    this.hamburgerTarget.classList.add('transition', 'ease-in-out', 'delay-150')
    this.closeTarget.classList.toggle('hidden')
    this.closeTarget.classList.toggle('block')
  }
} 