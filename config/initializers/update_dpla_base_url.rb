module DPLibrary
  module Configuration 
    remove_const(:BASE_URL) if (defined?(BASE_URL))
    BASE_URL = "https://api.dp.la/v2/"
  end
end