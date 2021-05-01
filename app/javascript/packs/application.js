// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

require('main')
require('bootstrap.min')
require('bootstrap.bundle.min')
require('vendors')

require('extensions/rates-js')
require('extensions/sweetalert2')
require('extensions/toastify')

require('pages/dashboard')
require('pages/form-editor')
require('pages/ui-chartjs')
require('pages/ui-apexchartjs')

// import 'assets/material-dashboard-rtl'
import 'css/site.scss'