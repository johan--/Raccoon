EmberCLI.configure do |c|
  c.app :frontend, build_timeout: 10
  c.app :adminpanel, build_timeout: 10
end
