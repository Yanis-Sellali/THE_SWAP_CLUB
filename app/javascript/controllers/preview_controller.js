import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  display(event) {
    const file = event.target.files[0];
    if (file) {
      const reader = new FileReader();
      reader.onload = () => {
        document.getElementById("preview-image").src = reader.result;
      };
      reader.readAsDataURL(file);
    }
  }
}
