import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.min.css';

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      minDate: "today",
      enableTime: true,
      minuteIncrement: 30,
      defaultMinute: 0,
      defaultHour: 0,
    });
  }
}