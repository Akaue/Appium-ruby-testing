Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10
end

After do
  driver.quit_driver
end
