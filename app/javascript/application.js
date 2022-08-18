//= require jquery3
//= require popper
//= require bootstrap-sprockets
import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false
import "controllers"
