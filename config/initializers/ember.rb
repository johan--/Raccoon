EmberCLI.configure do |c|
  c.app :frontend, build_timeout: 15
  c.app :adminpanel, 
    build_timeout: 15
end
