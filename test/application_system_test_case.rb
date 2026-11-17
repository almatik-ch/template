require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  # CHROME_BIN: optional, z.B. wenn nur Snap-Chromium vorhanden ist (headless Server)
  driven_by :selenium, using: :headless_chrome, screen_size: [ 1400, 1400 ] do |options|
    options.binary = ENV["CHROME_BIN"] if ENV["CHROME_BIN"]
    options.add_argument("--no-sandbox") # nötig als root (Devcontainer) und bei AppArmor-userns-Sperre
  end
end
