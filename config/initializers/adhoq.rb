Adhoq.configure do |config|
  # if not set, use :on_the_fly.(default)
  config.storage       = [:local_file, Rails.root + './tmp/adhoq']
  config.authorization = ->(controller) { controller.signed_in? }
end