// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

document.addEventListener("turbo:before-render", () => {
  document.getElementById("custom-loader").classList.remove("d-none");
});

document.addEventListener("turbo:load", () => {
  document.getElementById("custom-loader").classList.add("d-none");
});

document.addEventListener("DOMContentLoaded", function() {
  const modal = document.getElementById("reviewModal");
  if (!modal) return;

  const lastSeen = localStorage.getItem("review_popup_seen_at");
  const now = new Date().getTime();
  const delay = 6 * 60 * 60 * 1000;

  if (!lastSeen || now - lastSeen > delay) {
    modal.style.display = "block";
    localStorage.setItem("review_popup_seen_at", now.toString());
  } else {
    modal.remove();
  }
});
