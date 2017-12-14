use Rack::Static,
  :urls => ["/images", "/js", "/css"],
  :root => "public"

map "/" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/index-min.html', File::RDONLY)
    ]
  }
end

map "/careers" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/careers-min.html', File::RDONLY)
    ]
  }
end

map "/team" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/team-min.html', File::RDONLY)
    ]
  }
end

map "/events" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/events-min.html', File::RDONLY)
    ]
  }
end

map "/contact" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/contact-min.html', File::RDONLY)
    ]
  }
end

map "/contractor" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/contractor-min.html', File::RDONLY)
    ]
  }
end

map "/apprentice" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/apprentice-min.html', File::RDONLY)
    ]
  }
end

map "/thanks" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/thanks-min.html', File::RDONLY)
    ]
  }
end

map "/shop" do
  run lambda { |env|
    [
      302, {'Location' => "https://tru-colors-merchandise.myshopify.com/"}, []
    ]
  }
end