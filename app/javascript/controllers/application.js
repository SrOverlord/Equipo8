import { Application } from "@hotwired/stimulus"
//=require activestorage
//=require apexcharts
//=require chartstick
//=require Chart.bundle

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
