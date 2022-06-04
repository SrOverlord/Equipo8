import { Application } from "@hotwired/stimulus"
//=require activestorage
//=require apexcharts

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
