import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()
import rangePlugin from "flatpickrRangePlugin";
// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = ["start", "end"]
  static values = {
    disable: Array
  }

  connect() {
    flatpickr(this.startTarget, {
      dateFormat: "Y-m-d",
      disable: this.disableValue,
      "plugins": [new rangePlugin({ input: this.endTarget})]
    })
  }
}
