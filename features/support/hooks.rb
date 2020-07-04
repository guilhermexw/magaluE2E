require "report_builder"
require "date"

Before do
  page.current_window.resize_to(1920, 1080)
  visit "/"
end

After do |scenario|
  screenshot = page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
  screenshot = Base64.encode64(File.open(screenshot, "rb").read)
  embed(screenshot, "image/png", "Screenshot")
end

# Configuração ReportBuilder
d = DateTime.now
@current_date = d.to_s.tr(":","-")

at_exit do
  ReportBuilder.configure do |config|
    config.input_path = "logs/report.json"
    config.report_path = "logs/" + @current_date
    config.report_types = [:html]
    config.report_title = "Magalu - Execução cenários E2E"
    config.compress_image = true
    config.color = "blue"
    config.additional_info = { "Aplicação" => "https://www.magazineluiza.com.br/", 
                               "Data de execução" => @current_date  }    
  end
  ReportBuilder.build_report
end
