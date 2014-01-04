# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
SampleApp::Application.initialize!

#ignore i18n error
I18n.enforce_available_locales = false
