import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

import {Cloudinary} from "@cloudinary/url-gen";

const cld = new Cloudinary({cloud: {cloudName: 'dyvsju8re'}});
