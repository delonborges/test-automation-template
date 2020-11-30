# frozen_string_literal: true

Before do
  @app = App.new
end

After do |scenario|
  if scenario.failed?
    temp = page.save_screenshot('log/temp.png')
    screenshot = Base64.encode64(File.open(temp).read)
    attach(screenshot, 'image/png', 'Screenshot')
  end
end
