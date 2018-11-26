require 'fileutils'

# metodo para tirar prints e anexar ao relatorio final
module Helper
  def take_screenshot(file_name, result)
    timer_path = Time.now.strftime('%F').to_s
    file_path = "results/screenshots/test_#{result}/run_#{timer_path}"
    screenshot = "#{file_path}/#{file_name}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Click here')
  end
end