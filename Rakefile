require "shellwords"

file_name = ENV["INVOICE_FILE"] || "example.yml"

task default: %w[html]

desc "Make an invoice file, invoice.html"
task :html do
  sh "ruby invoice.rb #{file_name.shellescape} > invoice.html"
end

desc "Make an invoice file, invoice.pdf"
task pdf: :html do
  sh "chrome --headless --run-all-compositor-stages-before-draw --print-to-pdf=invoice.pdf --print-to-pdf-no-header ./invoice.html"
end
